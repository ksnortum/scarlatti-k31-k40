%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in A minor"
  opus = "K.36"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/a/a3/IMSLP626447-PMLP332132-Sonata_K._36_(as_L._245).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.25 . -2) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -0.5)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.25)) \etc

%
% Music
%

global = {
  \time 3/8
  \key a \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''16( e c a e b' |
    c4) r16 d( |
    e16 a, f'8-.) gs,-. |
    a16( e' f8-.) gs,-. |
    a16( e' f8-.) gs,-. |
    a16( gs' a8-.) e-. |
    f16( d e c e b) |
    c8(\prall b16 c a8-.) |
    
    \barNumberCheck 9
    d8-\slurShapeB ( c b |
    a8 b c |
    d c b |
    a16 c e a a,8-.) |
    d8( e f |
    gs,8 f') e-. |
    d8-. c-. b-. |
    c8(\prall b16 c a8-.) |
    
    \barNumberCheck 17
    f'16-\slurShapeC ( c a c f a, |
    e'16 c g c e g, |
    \stemDown d'16 b f b d f, |
    c'16 g e g c e, |
    \stemNeutral f8)( e d |
    e8 d c |
    d8 c b |
    c16)( d e f g a |
    
    \barNumberCheck 25
    b16 c d e f g |
    a16 f b g c g |
    a16 f g e f d |
    e16 g a8-.) b,-. |
    c16( g' a8-.) b,-. |
    c16( g' a8-.) b,-. |
    c16( b' c8-.) bf-. |
    a16( g fs8-.) g-. |
    
    \barNumberCheck 33
    f16( ef d8-.) ef-. |
    d16( c b8-.) c-. |
    b16( a g8-.) a-. |
    g16( f e8-.) f-. |
    e16( d c b c e |
    d16 f e c d b |
    \clef bass c g e c) d'( b |
    c16 g e' c g' e |
    
    \barNumberCheck 41
    \clef treble c'16 g e c) d'( b |
    c16 g e' c g' e |
    c'16 g e c d b' |
    <e, c'>4.->) |
  }
  \repeat volta 2 {
    c8( b a |
    g8 a b |
    c8 b a |
    g8 a b |
    
    \barNumberCheck 49
    a8 b cs |
    d8 c! bf |
    a8 bf a |
    d8 c bf |
    a8 bf a |
    bf8 a g |
    f8 e f |
    g8 f e |
    
    \barNumberCheck 57
    f8 e f |
    g8 f e |
    f8 e f) |
    bf'16( g a f g e |
    f16 d e cs d f |
    g16 e f d e cs |
    f16 e d c! b! a |
    gs16 b a c b d |
    
    \barNumberCheck 65
    c16 e d f e g |
    f16 e d c b a) |
    gs8(\prall fs16 gs e8-.) |
    a8( g! f! |
    e8 fs gs |
    a8 g! f! |
    e8 f e |
    f8 e d |
    
    \barNumberCheck 73
    c8 b c |
    d8 c b |
    c8 b c |
    d8 c b |
    c8 b c) |
    f'16( d e c d b |
    c16 a b gs a gs' |
    a16 d, c a' b, gs' |
    
    \barNumberCheck 81
    a,16 e' f8-.) gs,-. |
    a16( e' f8-.) gs,-. |
    a16( e' f8-.) gs,-. |
    a16( gs' a8-.) g-. |
    f16( e ds8-.) e-. |
    d!16( c b8-.) c-. |
    bf16( a gs8-.) a-. |
    gs16( fs e8) f-. |
    
    \barNumberCheck 89
    e16( d c8-.) d-. |
    c16( a c e a e |
    f16 d c a' b, gs' |
    a16 e c a) b'( gs |
    a16 e c' a e' c |
    a'16 e c a b gs' |
    <c, a'>4.->) |
  }
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s4. * 32 |
    
    \barNumberCheck 33
    s4. |
    s8 \clef bass \voiceThree f'4-\slurShapeA (~ |
    f8 e-.) f-. |
    e16( d c8-.) b-. |
    s4. * 4 |
    
    \barNumberCheck 41
    s4. * 4 |
  }
  \repeat volta 2 {
    s4. * 4 |
    
    \barNumberCheck 49
    s4. * 8 |
    
    \barNumberCheck 57
    s4. * 4 |
    \clef treble d8( a bf |
    g') f( e) |
    s4. * 2 |
    
    \barNumberCheck 65
    s4. * 16 |
    
    \barNumberCheck 81
    s4. * 7 |
    s8 \clef bass e,8 d'-. |
    
    \barNumberCheck 89
    c16( b a8-.) gs-. |
    s4. * 6 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4. |
    a'16( e c a e b' |
    c8 d-.) b-. |
    c8( d-.) b-. |
    c8( d-.) b-. |
    c8( a-.) c-. |
    d8-. gs,-. e-. |
    a8( a,) r |
    
    \barNumberCheck 9
    \clef treble f'''16( a e a d, a' |
    c,16 a' d, a' e a |
    f16 a e a d, a' |
    c,16-.) r r8 r |
    f,16( a e a d, a' |
    e16 a d, a' c, a' |
    d,16 a' e a e gs |
    a,8) r r |
    
    \barNumberCheck 17
    a''8-. f,-. a'-. |
    g8-. e,-. g'-. |
    \stemDown f8-. d,-. f'-. |
    e8-. c,-. e'-. |
    \stemNeutral a,16( c g c f, c' |
    g16 c f, c' e, c' |
    f,16 c' e, c' d, c' |
    e,8) r r |
    
    \barNumberCheck 25
    g8( f e |
    f8 d e |
    f8 d b |
    c8 f-.) d-. |
    e8( f-.) d-. |
    e8( f-.) d-. |
    e8( c) r |
    r8 <c a'>-. <b! g'>-. |
    
    \barNumberCheck 33
    r8 <b af'>-. <c g'>-. |
    s8 \clef bass \voiceTwo f,( af |
    g4.) |
    g4. |
    \oneVoice c,8( d e |
    \stemDown f8 g) g,-. |
    \stemNeutral c,4. |
    c4. |
    
    \barNumberCheck 41
    c4. |
    <c c'>4. |
    q8-. <e e'>-. <g g'>-. |
    <c, c'>4.-> |
    \clefAfterBarLine
  }
  \repeat volta 2 {
    \clef treble e'''16( g d g c, g' |
    b,16 g' c, g' d g |
    e16 g d g c, g' |
    b,16 g' c, g' d g |
    
    \barNumberCheck 49
    cs,16 a' d, a' e a |
    f16 a e a d, a' |
    cs,16 a' d, a' cs, a' |
    f16 a e a d, a' |
    cs,16 a' d, a' cs, a' |
    d,16 g c,! f bf, e |
    a,16 d g, cs a d |
    bf16 e a, d g, cs |
    
    \barNumberCheck 57
    a16 d g, cs a d |
    bf16 e a, d g, cs |
    a16 d g, cs a d |
    g,8) cs,-. a-. |
    s4. |
    \voiceTwo g8-. a4 |
    \oneVoice d8( e f |
    e8-.) fs-. gs-. |
    
    \barNumberCheck 65
    a8-. b-. c-. |
    d,8( e) f-. |
    \clef bass e,4. |
    \clef treble c''16( e b e a, e' |
    gs,16 e' a, e' b e |
    c16 e b e a, e' |
    \stemUp gs,16)( e' a, e' gs, e' |
    a,16 d g,! c f, b |
    
    \barNumberCheck 73
    e,16 a d, gs e a |
    f16 b e, a d, gs |
    e16 a d, gs e a |
    f16 b e, a d, gs |
    e16 a d, gs e a |
    d,8-.) gs-. e-. |
    \clef bass \stemNeutral a,8( e' f |
    d8 e) e,-. |
    
    \barNumberCheck 81
    a8( d-.) b-. |
    c8( d-.) b-. |
    c8( d-.) b-. |
    c8( a4) |
    a8( a'-.) gs-. |
    r8 gs-. a-. |
    r8 e-. f-. |
    r8 \voiceTwo e,4~ |
    
    \barNumberCheck 89
    e4. |
    \oneVoice a,8( a' c, |
    d8 e) e,-. |
    a4. |
    a4. |
    <a a'>8-. <c c'>-. <e e'>-. |
    <a, a'>4.-> |
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
    s4.\f |
    s4. |
    s4 s8\p |
    s4.\cresc |
    s4. * 3 |
    s4.\f |
    
    \barNumberCheck 9
    s4.\p\cresc |
    s4. * 2 |
    s4.\f |
    s4.\p\cresc |
    \tag layout { s4.\sf } \tag midi { s16\f s\p\cresc s4 } |
    s4. |
    s4.\f |
    
    \barNumberCheck 17
    s4.\p |
    s4. * 3 |
    s4.\cresc |
    s4. * 2 |
    \override DynamicLineSpanner.Y-offset = -1
    s4.\f |
    
    \barNumberCheck 25
    s4. * 3 |
    s4 s8\p |
    s4.\cresc |
    s4. |
    s4\f s8\p |
    s4.\cresc |
    
    \barNumberCheck 33
    s4. |
    s8 \tag layout { s4-\tweak X-offset -1 -\tweak Y-offset 0.5 \sf }
      \tag midi { s8\f s\p\cresc } |
    s4. * 4 |
    s4.\f |
    s4. |
    
    \barNumberCheck 41
    s4. * 4 |
  }
  \repeat volta 2 {
    s4.\p |
    s4. * 3 |
    
    \barNumberCheck 49
    s4\< s16 s\! |
    s4. * 5 |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 57
    s4. * 3 |
    s4.\f |
    s4. * 4 |
    
    \barNumberCheck 65
    s4. * 3 |
    s4.\p |
    s4\< s16 s\! |
    s4. * 3 |
    
    \barNumberCheck 73
    s4.\cresc |
    s4. * 4 |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 81
    s4 s8\p |
    s4.\cresc |
    s4. |
    s4\f s8\p |
    s4.-\tweak Y-offset 2 -\tweak extra-offset #'(0 . -0.25) \cresc |
    s4. * 3 |
    
    \barNumberCheck 89
    s4. |
    s4.-\tweak Y-offset -7 \f |
    s4. * 5 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 80
    s4. * 40 |
    
    \barNumberCheck 41
    s4. * 2 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 4. = 72 s8 |
    \tempo 4. = 66
    s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 80
    s4. * 4 |
    
    \barNumberCheck 49
    s4. * 40 |
    
    \barNumberCheck 89
    s4. * 5 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 4. = 72 s8 |
          \tempo 4. = 66
          s4. |
        }
        {
          \tempo 4. = 72 s8 \tempo 4. = 66 s \tempo 4. = 60 s |
          \tempo 4. = 54
          s4. |
        }
      }
    }
  }
}

forceBreaks = {
   % page 1
   s4. * 7 \break
   s4. * 7 \break
   s4. * 7 \break
   s4. * 8 \break
   s4. * 8 \break
   s4. * 7 \pageBreak
   
   % page 2
   s4. * 7 \break
   s4. * 7 \break
   s4. * 7 \break
   s4. * 7 \break
   s4. * 7 \break
   s4. * 8 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff <<
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
