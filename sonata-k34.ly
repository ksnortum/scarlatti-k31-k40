%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in D minor"
  opus = "K.34"
  source = "https://ks15.imslp.org/files/imglnks/usimg/3/39/IMSLP626443-PMLP332106-Sonata_K._34_(as_L._S7).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 3) (0 . 1.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 3)) \etc

%
% Music
%

global = {
  \time 3/4
  \key d \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    d''4 a'8( f d a |
    bf4) g'8( e c g |
    a4) e'8( bf a g) |
    g4 f8(\prall e) f4 |
    d'4 f8( d bf a |
    gs4) f'8( d f a, |
    bf4) f'8\( d bf a |
    \grace { gs16( } \afterGrace 15/16 gs2)-\insideSlur\trill { fs16[( gs] }
      a4)\) |
    
    \barNumberCheck 9
    b16( c d8) c( b a4) |
    b16( c d8) c( b a4) |
    f'16( e d8) c[( bf!]) a( gs) |
    \appoggiatura { gs8 } a2. |
  }
  \repeat volta 2 {
    c4 f8( c a f |
    d'4) f8( d bf a |
    bf4) g'8( e c bf) |
    bf4 a8(\prall g) a4 |
    
    \barNumberCheck 17
    a'4 d,8( ef b c |
    a'4) d,8( ef b c) |
    \appoggiatura { c16[ d] } ef4( d8 c bf! a |
    bf4)\prall a8( bf g4) |
    g'4 bf8( g ef d |
    cs4) bf'8( g a d, |
    ef4) bf'8\( g ef d |
    \grace { cs16( } \afterGrace 7/8 cs2)\trill { b16[( cs] } d4)\) |
    
    \barNumberCheck 25
    e16( f g8) f( e d4) |
    e16( f g8) f( e d4) |
    bf'16( a g8) f[( ef]) d( cs) |
    \appoggiatura { cs8 } d2. |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    d4( f) r |
    g4( c, e |
    <<
      { \voiceThree f4) cs2\=1( | \oneVoice <d\=1) a'>4 }
      \new Voice { \voiceTwo r4 r a4^( | \hideNoteHead a'4) }
    >> 
    a,4( d,) |
    d'4( d' f, |
    e4) d( c |
    d4) d'( f, |
    e4 b c) |
    
    \barNumberCheck 9
    d4( e f) |
    d'4( e f) |
    d,4( e e,) |
    a'4-\slurShapeB ( e a,) |
  }
  \repeat volta 2 {
    a'4( f a |
    bf4) bf,( bf' |
    g4) c,( e |
    f4 c f,) |
    
    \barNumberCheck 17
    fs'2 r4 |
    fs2 r4 |
    fs4( d fs |
    g4 d g,) |
    r4 g'( bf, |
    a4) g'( f |
    g4) g,-\slurShapeA ( g' |
    a4 e f) |
    
    \barNumberCheck 25
    g4( a bf) |
    \clef treble g'4( a bf) |
    \clef bass g,4( a a, |
    d4 a d,) |
  }
}

dynamics = {
  \override Hairpin.after-line-breaking = ##f
  \repeat volta 2 {
    s2.\mf |
    s2. * 2 |
    s4 s\> s\! |
    s2.\p |
    s4 s2\mf |
    s4 s-\tweak Y-offset 0.5 \p s\< |
    \tag layout { s4\! } \tag midi { s4\mp\! } s\> s\! |
    
    \barNumberCheck 9
    s2.\mf |
    s2.-\tweak X-offset -1 \p |
    s2.\mf |
    s2\> s4\! |
  }
  \repeat volta 2 {
    s2.\mf |
    s2. * 2 |
    s4 s\> s\! |
    
    \barNumberCheck 17
    s4\mf s2\p |
    s4\mf s2\p |
    \grace { s8\< } s2.\! |
    s4 s\> s\! |
    s2.\p |
    s4 s2\mf |
    s4 s2\p\< |
    \tag layout { s4\! } \tag midi { s4\mp\! } s\> s\! |
    
    \barNumberCheck 25
    s2.\mf |
    s2.\p |
    s2.\mf |
    s2\> s4\! |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Larghetto" 4 = 100
    s2. * 8 |
    
    \barNumberCheck 9
    s2. * 4 |
  }
  \repeat volta 2 {
    s2. * 4 |
    
    \barNumberCheck 17
    s2. * 8 |
    
    \barNumberCheck 25
    s2. * 2 |
    \tag layout { s2. * 2 | }
    \tag midi {
      \alternative {
        { s2. * 2 | }
        {
          s4 \tempo 4 = 92 s \tempo 4 = 84 s |
          \tempo 4 = 76
          s2. |
        }
      }
    }
  }
}

forceBreaks = {
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 5 \break
  s2. * 6 \break
  \grace { s16 } 
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
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
