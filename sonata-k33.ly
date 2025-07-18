%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

#(ly:expect-warning-times 8 "barcheck failed")

\header { 
  title = "Sonata in D major"
  opus = "K.33"
  source = "https://s9.imslp.org/files/imglnks/usimg/6/62/IMSLP626446-PMLP332093-Sonata_K._33_(as_L._424).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -2)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0.25) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'((0.5 . 0) (0 . 0) (0 . 0) (-0.5 . 0)) \etc
slurShapeD = \shape #'((0.5 . 0) (0 . 0) (0 . 0) (-0.5 . 0)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 0) (0 . -1) (0 . 0))
                      ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . -2)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.25))
                        ((0.25 . 0) (0 . 0) (0 . 0) (-0.25 . 0))
                      ) \etc
slurShapeH = \shape #'((0.25 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0.25 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'((0.25 . 0) (0 . 0) (0 . 1) (0 . -0.5)) \etc

%
% Music
%

global = {
  \time 3/8
  \key d \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    d''8( fs16-.) d( e a, |
    d8 fs16-.) d( e a, |
    d8 fs16-.) d( e a, |
    d16 a fs d fs a |
    fs'8-.) a( g |
    fs8-.) a( g |
    fs8-.) a( g |
    fs16 e d e fs8-.) |
    
    \barNumberCheck 9
    \time 4/4
    \grace { a16( } a1)\trill |
    a32-\slurShapeA ( g fs e d cs b a  \stemUp 
      \tuplet 10/8 { g fs e d \staffDown cs b a g fs e }
      d4) \staffUp r\fermata |
    \time 3/8
    \stemNeutral <d'' fs>8-. q-. a'-. |
    fs16( d e cs d a |
    <d fs>8-.) q-. a'-. |
    fs16( d e cs d a |
    <d fs>8-.) q-. a'-. |
    \time 4/4
    <d, fs>8.( g16  <d fs>8. g16  <d fs>8. g16  <d fs> g fs g |
    
    \barNumberCheck 17
    fs16 g fs g  fs32 g fs g fs g fs g \grace { fs16)( } fs2)\trill |
    \time 3/8
    fs16( d g-. e a-. fs |
    b16 a g fs e d |
    e16-.)-\slurShapeC ( cs fs-. d g-. e |
    a16 g fs e d cs |
    d16-.)( b e-. cs fs-. d |
    g16 fs e d cs b |
    cs16-.)-\slurShapeD ( a d-. b e-. cs |
    
    \barNumberCheck 25
    fs16-. d gs-. e a-. fs |
    gs16-.)( a gs fs e d |
    cs16) e( d cs b a |
    gs16 a gs fs e d |
    cs16) e( d cs b a) |
    \appoggiatura { a16 } gs8.(_\prall fs16 e8) |
    a'8-. c16( a b gs) |
    gs16( a d a b gs) |
    
    \barNumberCheck 33
    \stemUp gs16( a e' a, b gs) |
    gs16( a f' a, b gs) |
    gs16( a c a b gs) |
    gs16( a d a b gs) |
    \stemNeutral gs16( a a' a, b gs) |
    gs16( a a' a, b gs) |
    a'16( f g! e f d |
    e16 c d b c a |
    
    \barNumberCheck 41
    b16 c d c b a) |
    \appoggiatura { a16 } <e gs b>8 r r |
    <gs b>8( <b d>-.) <a c>-. |
    <gs b>8( <b d>-.) <a c>-. |
    <gs b>8( <b d>-.) <a c>-. |
    q8( <gs b>16 <fs a> <gs b>8-.) |
    <gs b>8( <b d>-.) <a c>-. |
    <gs b>8( <d' f>-.) <c e>(~ |
    
    \barNumberCheck 49
    q8 <b d>) <a c>(~ |
    q8 <gs b>16 <fs a> <gs b>8) |
    <a cs!>8-. q-. e'-. |
    cs16-\slurShapeF ( a b gs a e |
    <a cs>8-.) q-. e'-. |
    cs16-\slurShapeF ( a b gs a e |
    <a cs>8-.) q-. e'-. |
    a16-\slurShapeG ( e cs e a, d |
    
    \barNumberCheck 57
    cs16 b cs a' b, gs' |
    a16)( e cs e cs e |
    fs16 d) d( b) b( gs) |
    gs16( e) e( cs) cs( a) |
    \stemDown a'16( b cs a b gs |
    a16 e \clef bass cs a e cs |
    \stemNeutral \tag layout { a4.)\prallprall } \tag midi { a4.)\prall } |
  }
  \repeat volta 2 {
    \clef treble <a'' cs>8-. q-. q-. |
    
    \barNumberCheck 65
    \tag layout { cs8.(\prallprall } \tag midi { cs8.(\prall } b16 cs d |
    <cs e>8-.) q-. q-. |
    q4(~ q16. <d fs>32 |
    <cs e>4~ q16. <d fs>32 |
    <cs e>4~ q16. <d fs>32 |
    <cs e>4~ q16. <d fs>32 |
    e16 cs d b cs a |
    <d fs>8-.) q-. q-. |
    
    \barNumberCheck 73
    \tag layout { fs8.(\prallprall } \tag midi { fs8.(\prall } e16 fs g |
    <fs a>8-.) q-. q-. |
    q4(~ q16. <g b>32 |
    <fs a>4~ q16. <g b>32 |
    <fs a>4~ q16. <g b>32 |
    <fs a>4~ q16. <g b>32 |
    a16 fs g e fs d |
    fs16-.)-\slurShapeH ( d g-. e a-. fs |
    
    \barNumberCheck 81
    b16 g d b g8-.) |
    e'16-.( cs fs-. d g-. e |
    a16 fs cs a fs8-.) |
    d'16-.( b e-. cs fs-. d |
    g16 e b g e8-.) |
    cs'16-.( a d-. b e-. cs |
    fs16-. d g-. e a-. fs |
    b16)-\slurShapeI ( a g fs e d |
    
    \barNumberCheck 89
    e16 fs e d cs b |
    a16 b a g fs e |
    fs16) a( g fs e d) |
    \appoggiatura { d32 } cs8.(\prall b16 a8) |
    d'8-. f16( d e cs) |
    cs16( d g d e cs) |
    cs16( d a' d, e cs) |
    cs16( d bf' d, e cs) |
    
    \barNumberCheck 97
    cs16( d f d e cs) |
    cs16( d g d e cs) |
    cs16( d a' d, e cs) |
    cs16( d bf' d, e cs) |
    bf'16( a g f e d |
    cs16 d e f g a |
    g16 f e d cs bf |
    a16 bf a g f e |
    
    \barNumberCheck 105
    f16 a g f e d) |
    \appoggiatura { d16 } cs8.(_\prall b16 a8) |
    <d' fs!>8-. q-. a'-. |
    fs16( d e cs d a |
    <d fs>8-.) q-. a'-. |
    fs16( d e cs d a |
    <d fs>8-.) q-. a'-. |
    fs16( d e cs d a |
    
    \barNumberCheck 113
    d16 e fs d e cs |
    d16)-\slurShapeJ ( a fs' d a' fs |
    b16 g) g( e) e( cs) |
    cs16( a) a( fs) fs( d) |
    d'16( e fs d e cs |
    \stemDown d16 a fs d \clef bass a fs |
    \tag layout { d4.)\prallprall } \tag midi { d4.)\prall } \clef treble |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \tuplet 3/2 { d16( g a } d8-.) r |
    \tupletOff
    \tuplet 3/2 { d,16( g a } d8-.) r |
    \tuplet 3/2 { d,16( g a } d8-.) r |
    \tuplet 3/2 { d,,16( g a } d8-.) r |
    \clef treble d''8-. fs16( d e a, |
    d8-.) fs16( d e a, |
    d8-.) fs16( d e a, |
    d16 a fs d) r8 |
    
    \barNumberCheck 9
    \time 4/4
    \grace { s16 } d32( fs a d fs d a fs  d fs a d fs d a fs
      d fs a d fs d a fs  d fs a d fs d a fs |
    d4) \clef bass r \voiceTwo r r\fermata |
    \time 3/8
    \oneVoice d,16( fs a d fs a) |
    d,,,8 r r |
    d'16( fs a d fs a) |
    d,,,8 r r |
    d'16( fs a d fs a) |
    \time 4/4
    \clef treble a8.-\slurShapeB ( b16  a8. b16  a8. b16  a e' d e |
    
    \barNumberCheck 17
    d16 e d e  d32 e d e d e d e \grace { d16)( } d2)\trill |
    \time 3/8
    d16-._\sopra r e-. r fs-. r |
    g8-. r r |
    cs,16-. r d-. r e-. r |
    fs8-. r r |
    b,16-. r cs-. r d-. r |
    e8-. r r |
    \stemDown a,16-. r b-. r cs-. r |
    
    \barNumberCheck 25
    d16-. r e-. r fs-. r |
    e16( fs e d cs b |
    \stemNeutral a16) cs( b a gs fs |
    e16 fs e d cs b |
    \clef bass a16) cs( b a gs fs) |
    e,8-. r r |
    <c' e a>8-. q-. q-. |
    <d a' b>8-. q-. q-. |
    
    \barNumberCheck 33
    <e a c>8-. q-. q-. |
    <f a b>8-. q-. q-. |
    <c e a>8-. q-. q-. |
    <d a' b>8-. q-. q-. |
    <e a c>8-. q-. q-. |
    <f a b>8-. q-. q-. |
    \clef treble <f' a>8-. <e g>-. <d f>-. |
    <c e>8-. <b d>-. \clef bass <a c e>-.\noBeam |
    
    \barNumberCheck 41
    <gs b d e>8-. r <a c e>-. |
    <e b'>8-. r r |
    e16-\slurShapeE ( e' ds e e, e' |
    f,16 d'! cs! d f, d' |
    d,16 b' a b d, b') |
    e,,8 r r |
    e'16( e' ds e e, e' |
    f,16 d'! cs! d f, d' |
    
    \barNumberCheck 49
    d,16 b' a b d, b') |
    e,,8 r r |
    a16( cs e a cs e) |
    a,,8 r r |
    a16( cs e a cs e) |
    a,,8 r r |
    a16( cs e a cs e) |
    a,,8 r r |
    
    \barNumberCheck 57
    d8-. e-. e,-. |
    a8-. r \clef treble a''16-. r |
    d16-. r b-. r gs-. r |
    e16-. r cs r a r |
    \clef bass d,8-. e-. e,-. |
    a,8-. a-. a-. |
    a4.-> |
  }
  \repeat volta 2 {
    a'16( cs e a cs e) |
    
    \barNumberCheck 65
    a,,8 r r |
    a16( cs e a cs e) |
    a,,8 r r |
    a16( cs e a cs e) |
    a,,16( cs e a cs e) |
    a,,16( cs e a cs e) |
    a,,8 r r |
    d16( fs a d fs a) |
    
    \barNumberCheck 73
    d,,,8 r r |
    d'16( fs a d fs a) |
    d,,,8 r r |
    d'16( fs a d fs a) |
    d,,16( fs a d fs a) |
    d,,16( fs a d fs a) |
    d,,,8 r r |
    \clef treble d'''16-. r e-. r fs-. r |
    
    \barNumberCheck 81
    g8-. r r |
    cs,16-. r d-. r e-. r |
    fs8-. r r |
    b,16-. r cs-. r d-. r |
    e8-. r r |
    \stemDown a,16-. r b-. r cs-. r |
    d16-. r e-. r fs-. r |
    g16( fs e d cs b |
    
    \barNumberCheck 89
    cs16 d cs b a g |
    \stemNeutral fs16 g fs e d cs |
    d16) fs( e d cs b) |
    \clef bass a,8 r r |
    <f' a d>8-. q-. q-. |
    <g d' e>8-. q-. q-. |
    <a d f>8-. q-. q-. |
    <bf d g>8-. q-. q-. |
    
    \barNumberCheck 97
    <f a d>8-. q-. q-. |
    <g d' e>8-. q-. q-. |
    <a d f>8-. q-. q-. |
    <bf d g>8-. q-. q-. |
    \clef treble bf'16_( a g f e d |
    cs16 d e f g a |
    g16 f e d cs bf |
    \clef bass a16 bf a g f e |
    
    \barNumberCheck 105
    f16 a g f e d |
    a8) r r |
    d16( fs a d fs a) |
    d,,,8 r r |
    d'16( fs a d fs a) |
    d,,,8 r r |
    d'16( fs a d fs a) |
    d,,,8 r r |
    
    \barNumberCheck 113
    g'8-. a-. a,-. |
    d,8-. r \clef treble d'''16-. r |
    g16-. r e-. r cs-. r |
    a16-. r fs-. r d-. r |
    \clef bass g,8-. a-. a,-. |
    d8( d,) d-. |
    d4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4. * 7 |
    
    \barNumberCheck 9
    \time 4/4
    \grace { s16 } s1\p\cresc |
    s1-\tweak Y-offset -2 \f |
    \time 3/8
    s4.\f |
    s4. * 4 |
    \time 4/4
    s8.\f s16\p s2 s4\cresc |
    
    \barNumberCheck 17
    s2 \tag layout { s\f } \tag midi { s\mf } |
    \time 3/8
    s4.\f |
    s4. * 6 |
    
    \barNumberCheck 25
    s4. * 6 |
    s8\f s4\p |
    s4.\cresc |
    
    \barNumberCheck 33
    s4. |
    s4.\f |
    s4.\p |
    s4.\cresc |
    s4. * 2 |
    s4.\f |
    s4. |
    
    \barNumberCheck 41
    s4. * 2 |
    s4.\p |
    s4. * 2 |
    s4-\tweak Y-offset -1 \> s8\! |
    s4.\p |
    s16\> s16\! s4 |
    
    \barNumberCheck 49
    s4. |
    s4-\tweak Y-offset -1 \> s8\! |
    s4.\p |
    s4.\cresc |
    s4. * 3 |
    s4.\f |
    
    \barNumberCheck 57
    s4. * 2 |
    s8\> s\p\cresc s |
    s4. |
    s4.\f |
    s4. * 2 |
  }
  \repeat volta 2 {
    s4.\p |
    
    \barNumberCheck 65
    s4\< s16 s\! |
    s4.\mf |
    s4. |
    s4.\cresc |
    s4. * 2 |
    s4.\f |
    s4.\p |
    
    \barNumberCheck 73
    s4\< s16 s\! |
    s4.\mf |
    s4. |
    s4.\cresc |
    s4. * 2 |
    s4\f\> s16 s\! |
    s4\p\< s16 s\! |
    
    \barNumberCheck 81
    s4.\f |
    s4\p\< s16 s\! |
    s4.\f |
    s4\p\< s16 s\! |
    s4.\f |
    s4.\p\cresc |
    s4. |
    s4.\f |
    
    \barNumberCheck 89
    s4. * 4 |
    s8\f s4\p |
    s4.\cresc |
    s4. |
    s4.-\tweak Y-offset 0 \f |
    
    \barNumberCheck 97
    s4.\p |
    s4.\cresc |
    s4. * 2 |
    s4.\f |
    s4. * 3 |
    
    \barNumberCheck 105
    s4. * 2 |
    s4.\p |
    s4.\cresc |
    s4. * 4 |
    
    \barNumberCheck 113
    s4. |
    s4.\f |
    s8\> s4\p\cresc |
    s4. |
    s4.\f |
    s4. * 2 |
  }
}

pedal = {
  \repeat volta 2 {
    s4. * 8 |
    
    \barNumberCheck 9
    \time 4/4
    \grace { s16 } s1\sustainOn |
    s1\sustainOff |
    \time 3/8
    s4. * 5 |
    \time 4/4
    s1 |
    
    \barNumberCheck 17
    s2 s\sustainOn |
    \time 3/8
    s4.\sustainOff |
    s4. * 6 |
    
    \barNumberCheck 25
    s4. * 32 |
    
    \barNumberCheck 57
    s4. * 7 |
  }
  \repeat volta 2 {
    s4. |
    
    \barNumberCheck 65
    s4. * 3 |
    s4.\sustainOn |
    s4. * 2 |
    s4.\sustainOff |
    s4. |
    
    \barNumberCheck 73
    s4. * 3 |
    s4.\sustainOn | % added, based on measures 68 and following
    s4. * 2 |
    s4.\sustainOff |
    s4. |
    
    \barNumberCheck 81
    s4. * 32 |
    
    \barNumberCheck 113
    s4. * 7 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 72
    s4. * 8 |
    
    \barNumberCheck 9
    \time 4/4
    \tempo "Moderato" 4 = 72
    \grace { s16 } s1 |
    \set Score.tempoHideNote = ##t
    s2. \tempo 4 = 50 s4 |
    \time 3/8
    \unset Score.tempoHideNote
    \tempo "Allegro" 4. = 84
    s4. * 5 |
    \time 4/4
    \tempo "Moderato" 4 = 92
    s1 |
    
    \barNumberCheck 17
    s1 |
    \time 3/8
    \tempo "Allegro" 4. = 92
    s4. * 7 |
    
    \barNumberCheck 25
    s4. * 32 |
    
    \barNumberCheck 57
    s4. * 5 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 84 s8 \tempo 4. = 76 s \tempo 4. = 69 s |
    \tempo 4. = 60
    s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 92
    s4. |
    
    \barNumberCheck 65
    s4. * 48 |
    
    \barNumberCheck 113
    s4. * 5 |
    \tempo 4. = 84 s8 \tempo 4. = 76 s \tempo 4. = 69 s |
    \tempo 4. = 60
    s4. |
  }
}

forceBreaks = {
  % page 1
  s4. * 7 \break
  s4. s1 * 2 \break
  s4. * 5 s1 \break
  s1 s4. * 5 \break
  s4. * 7 \break
  \grace { s16 } s4. * 7 \pageBreak
  
  % page 2
  s4. * 7 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \pageBreak
  
  % page 3
  s4. * 7 \break
  s4. * 7 \break
  \grace { s16 } s4. * 7 \break
  s4. * 7 \break
  \grace { s16 } s4. * 7 \break
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
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
