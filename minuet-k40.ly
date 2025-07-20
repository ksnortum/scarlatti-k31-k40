%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title = "Minuetto in C minor"
  opus = "K.40"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/7/7c/IMSLP626448-PMLP332496-Sonata_K._40_(as_L._357).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 3) (0 . 1) (0 . 0)) \etc

bigParen = \tweak Parentheses.font-size #-1 \etc

%
% Music
%

global = {
  \time 3/4
  \key c \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    c''8( g' c,4) b-- |
    c8( af' c,4) b-- |
    c8( g' c,4) b-- |
    c8( af' b, g' af, f' |
    g,8 f' ef d ef g, |
    f8 f' ef d ef c |
    d8 f c4) \grace { b16( } \afterGrace 7/8 b4)_(\trill { a32[ b]) } |
    \appoggiatura { b8 } c2. |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    g'8( af e4) f-- |
    bf,8( c g4) af-- |
    f'8( af f4) \grace { e32( } \afterGrace 7/8 e4)_(\trill { d32[ e]) } |
    \appoggiatura { e8 } f2. |
    f8( g d4) ef-- |
    af,8( bf f4) g-- |
    f'8( g) \afterGrace 7/8 d2(\trill { c16[ d] } |
    ef8 f g4) g,( |
    
    \barNumberCheck 17
    f8 d' f, d' ef, c' |
    d,8 c') c( b c g |
    f8 d' f, d' ef, c' |
    d,8 c') c_( b c g |
    f8) f'( ef d ef g, |
    f8) f'( ef d ef c |
    d8 f c4) \grace { b16( } \afterGrace 7/8 b4)_(\trill { a32[ b]) } |
    \appoggiatura { b8 } c2. |
  }
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s2. * 6 |
    s4 \voiceThree g2 |
    \voiceTwo \startParenthesis \bigParen \parenthesize r4 \endParenthesis \bigParen \parenthesize c,,2 |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    s2. |
    \voiceThree g''2 f4 |
    s4 c'2 |
    s2. * 2 |
    f,2 s4 |
    af4( bf2) |
    r4 ef r |
    
    \barNumberCheck 17
    d,2 c4 |
    r4 g'( ef |
    d2 c4 |
    \hideNoteHead g2) s4 |
    r4 r8 b'( c4)~ |
    c4. b8( c4 |
    af) g2( |
    c,2.) |
  }
}

leftHandLower = \relative {
  \clef treble % first bass clef, then treble, see initial-clef-engraver.ily
  \repeat volta 2 {
    <c' ef>2 <d f>4-- |
    <ef g>2 <d f>4-- |
    <c ef>2 <d f>4-- |
    <ef g>4( <d f> <c ef> |
    <b d>4.) q8( <c ef>4 |
    <b d>4.) q8( <c ef>4) |
    \clef bass \voiceTwo <f, af>4-\slurShapeA ^( g g, |
    \oneVoice c2.) |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    c'2 af4-- |
    \voiceTwo e4( c) f |
    bf4( c c, |
    \oneVoice f4 f,2) |
    <bf' d>2 c4-- |
    \voiceTwo r4 d, ef-- |
    r4 r bf( |
    ef2) ef4( |
    
    \barNumberCheck 17
    r4 b c |
    g2) ef'4 |
    r4 b( c |
    \oneVoice g2) ef'4_( |
    \voiceTwo d2 c4 |
    d2 c4 |
    f4) r g, |
    \startParenthesis \bigParen \parenthesize r4 \endParenthesis \bigParen \parenthesize c,2 |
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
    s2.\p |
    s2. * 3 |
    s4. s8\< s4\! |
    s4. s8\< s4\! |
    s2.\p |
    \grace { s8\> } s2.\! |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    s2.\p |
    s2. |
    \tag layout { s2.\mf } \tag midi { s2\mf s4\mp } |
    s2\> s4\! |
    s2.\p |
    s2. |
    \tag layout { s2.\mf } \tag midi { s4\mf s2\mp } |
    \tag layout { s2. } \tag midi { s2.\mf } |
    
    \barNumberCheck 17
    s2. |
    s8 s\> s4 s\p |
    s2. |
    s4 s2-\tweak Y-offset -1 \cresc |
    s2. * 2 |
    s8-\tweak Y-offset 1 \> s\! s4 s\p |
    \grace { s8\> } s2.\! |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Moderato" 4 = 126
    s2. * 8 |
  }
  \repeat volta 2 {
    \barNumberCheck 9
    s2. * 8 |
    
    \barNumberCheck 17
    s2. * 6 |
    \tag layout { s2. * 2 }
    \tag midi {
      \alternative {
        { s2. * 2 }
        {
          s4 \tempo 4 = 116 s \tempo 4 = 100 s |
          \tempo 4 = 88
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
  s2. * 4 \break
  s2. * 4 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \with { \clef bass } \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists #initial-clef-change-engraver
    }
  }
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
