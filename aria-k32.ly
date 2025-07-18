%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Aria in D minor"
  opus = "K.32"
  source = "https://s9.imslp.org/files/imglnks/usimg/3/3f/IMSLP626440-PMLP332078-Sonata_K._32_(as_L._423).pdf"
}

%
% Music
%

global = {
  \time 3/8
  \key d \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    d''32[( e f16]) e8( d |
    bf'8) cs,( d) |
    e32[( f g16]) f8( e |
    a)\noBeam gs,( a) |
    cs32[( d e16]) d8( cs |
    d8)\noBeam a( g |
    f16 g f8-. e-. |
    d4.) |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    
    \stemUp a'32[( bf c16]) bf8( a |
    \stemNeutral bf8) fs'( g) |
    g,32[( a bf16]) a8( g |
    a8) e'( f) |
    f,32[( g a16]) g8( f) |
    e'32[( f g16]) f8( e) |
    d,32[( e f16]) e8( d) |
    gs'8( a4) |
    
    \barNumberCheck 17
    \stemUp a,32[( bf c16]) bf8( a |
    bf8) cs,( d) |
    \stemNeutral cs'32[( d e16]) d8( cs |
    d8)\noBeam cs,( d) |
    e'32[( f g16]) f8( e |
    a8)\noBeam cs,,( d) |
    e'32[( f g16]) d8-.( cs-. |
    d4.) |
  }
}

leftHandUpper = \relative {
  \repeat volta 2 { 
    s4. * 8 |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    
    s4. |
    \voiceThree <bf d>4. |
    <g c>4. |
    s4. * 2 |
    bf8( d cs) |
    s4. * 2 |
    
    \barNumberCheck 17
    s4. * 3 |
    bf8 a( bf) |
    s4. * 4 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    <d a' d>4.( |
    <g bf d>4.) |
    <g a cs e>4.( |
    <f a d>4.) |
    <e g a cs>4.( |
    <f d'>8)\noBeam f,( g |
    a4) a8-.( |
    d,4.) |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    
    <d' a' d>4. |
    \voiceTwo g4( f8 |
    e4) c8( |
    \oneVoice f8 c f,) |
    <f' a>4. |
    \voiceTwo g4( a8 |
    \oneVoice bf4) f8( |
    e8 a16 g f e |
    
    \barNumberCheck 17
    <f a d>4.) |
    <g bf>4. |
    <a cs>4. |
    \voiceTwo bf,4. |
    \oneVoice <cs e a>4.( |
    <d f a>8) e( f |
    g8 a-. a,-. |
    d4.) |
  }
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.-\tweak Y-offset 0.5 \p |
    s8 s\> s\! |
    s4.-\tweak Y-offset 1 \p |
    s8 s\> s\! |
    s4.\mf |
    s4. * 3 |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    
    s4.-\tweak Y-offset 0.5 \p |
    s8 s\> s\! |
    s4.\p |
    s8 s\> s\! |
    s4.\p |
    s4.-\tweak Y-offset 1 \mf |
    s4. |
    s8 s-\tweak Y-offset 1 \> s\! |
    
    \barNumberCheck 17
    s4.-\tweak Y-offset 1 \p |
    s8 s\> s\! |
    s4.\p |
    s8 s\> s\! |
    s4.\mf |
    s4. * 3 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Moderato" 4. = 40
    s4. * 8 |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    s4. * 8 |
    
    \barNumberCheck 17
    s4. * 6 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        { s4. * 2 | }
        {
          \tempo 4. = 36 s8 \tempo 4. = 32 s \tempo 4. = 28 s |
          s4. |
        }
      }
    }
  }
}

forceBreaks = {
    
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 11)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
