%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G minor"
  opus = "K.31"
  source = "https://ks15.imslp.org/files/imglnks/usimg/f/fa/IMSLP626441-PMLP332067-Sonata_K._31_(as_L._231).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((-10 . -2) (-10 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0.5) (2 . 1) (2 . 1)) \etc
slurShapeC = \shape #'((-3 . 0) (-3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'(
                        ((-10 . -4) (-8 . 2) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((-10 . -2) (-10 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeG = \shape #'(
                        ((0 . 1) (0 . -1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1.5)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 2.5)) \etc
slurShapeK = \shape #'((0 . 2.5) (0 . 2) (0 . 1) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 1) (0 . 2.5) (0 . 4)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 3)) \etc

moveNoteA = \tweak NoteColumn.force-hshift 0.5 \etc
moveNoteB = \tweak NoteColumn.force-hshift 0.5 \etc

moveRestA = \tweak Rest.X-offset -0.5 \etc
moveRestB = \tweak Rest.X-offset -0.4 \etc

parenSizeA = \tweak Parentheses.font-size #-2 \etc

%
% Music
%

global = {
  \time 2/4
  \key g \minor
}

rightHandUpper = \relative {
  \repeat volta 2 {
    <g' bf d g>4-> <a c d fs a>-> |
    \voiceOne bf'16->(\arpeggio a g f!  ef d c bf) |
    \oneVoice a'16( g fs ef  d c bf a) |
    bf8(\prall a16 bf g4) |
    \voiceOne \moveNoteA <d' bf'>4->( \moveNoteB <c a'>->)( |
    \oneVoice <d g>4->) r |
    <c d fs a>4-> <c d fs a c>-> |
    \voiceOne bf'8->-\slurShapeF (\prall a16 bf g4) |
    
    \barNumberCheck 9
    \oneVoice bf16( g d bf  g bf d g |
    fs16 g a g  fs e d c) |
    bf'16( g d bf  g bf d <g bf>) |
    \appoggiatura { q16 } <fs a>4 r |
    a16( fs d fs  a, d fs, <c' ef>) |
    \appoggiatura { q16 } <bf d>4 r |
    g'16( d bf d  g, bf d, <g bf>) |
    \appoggiatura { q16 } <fs a>4 r |
    
    \barNumberCheck 17
    a'16( fs d fs  a, d fs, <c' ef>) |
    \appoggiatura { q16 } <b d>4 r |
    g'16( d b d  g, d' f, <af f'>) |
    \appoggiatura { q16 } <g c ef>4 r |
    c'16( g ef g  c, ef g, <c ef>) |
    \appoggiatura { q16 } <b d>4 r |
    g'16( d b d  g, d' f, <af f'>) |
    \appoggiatura { q16 } <g c ef>4 r8 g'-. |
    
    \barNumberCheck 25
    af16( f ef f)  f( d c d |
    g16 ef d ef)  ef( c b c |
    f16 d c d  ef c b c) |
    \appoggiatura { c16 } d4 r8 f-. |
    g16( ef d ef)  ef( c bf c |
    f16 d c d)  d( bf a bf |
    ef16 c bf c  d bf a bf) |
    \appoggiatura { bf16 } c4 r8 f-. |
    
    \barNumberCheck 33
    g8-. r  r16 g( f e |
    f8-.) r  r16 f( e d |
    e8-.) r  r16 e( d cs |
    d16 cs d e  d8-.) f,-.\noBeam |
    g8-. r  r16 g( f e |
    f8-.) r  r16 f( e d |
    e8-.) r  r16 e-\slurShapeG ( d cs |
    d16 d' d, bf'  d, a' d, g |
    
    \barNumberCheck 41
    d16 a' d, g  d f d e |
    d16 a' d, g  d f d e) |
    \time 3/4
    r16 d r d r d r d r d r d |
    r16 a' r a r g r g r g r g |
    r16 g r g r f r f r f r f |
    r16 f r f r e r e r e r e |
    r16 d r e r f r g r a r \stemUp bf |
    \time 2/4
    \stemNeutral r4 r8 <a cs e>-. |
    
    \barNumberCheck 49
    \voiceOne <d f>8->(\prall e16 d \oneVoice <a a'>8-.) <g cs>-. |
    <f a d>8[( d) d-.] <cs' e>-. |
    <\parenthesize d f>8(\prall e16 d  a'8-.) <\parenthesize g, cs>8-. |
    << 
      { \appoggiatura { cs16 } \voiceFour d4 } 
      \new Voice { \voiceFour \parenSizeA \parenthesize <f, a> } 
    >>
    \oneVoice r4 |
  }
  \repeat volta 2 {
    <bf d f bf>4-> <c ef a c>-> |
    \voiceOne bf'16->-\slurShapeI ( a g f  \oneVoice ef d c bf |
    c16 bf a g  f' ef d c) |
    d8->(\prall c16 d bf4) |
    
    \barNumberCheck 57
    \voiceOne bf'4( c) |
    bf4( c) |
    bf4( c) |
    \oneVoice bf16-\slurShapeA ( d, a' c,  g' bf, fs' a, |
    \voiceOne g'4)( a) |
    g4( a) |
    g4( a) |
    \oneVoice g16-\slurShapeC ( bf, f' a,  ef' g, d' f, |
    
    \barNumberCheck 65
    \voiceOne ef'4)( f)
    ef4( f) |
    ef4( f) |
    ef16-\slurShapeD ( g, d' f,  c' ef, b' d, |
    c'4)( d) |
    c4( d) |
    c4( d) |
    \oneVoice \stemUp c16-\slurShapeE ( ef, d' f,  ef' g, c a |
    
    \barNumberCheck 73
    b16 g c g  d' g, b g |
    \stemNeutral <g c ef>4) r |
    c'16( g ef g  c, ef g, <c ef>) |
    \appoggiatura { q16 } <b d>4 r |
    g'16( d b d  g, d' g, <d' f>) |
    \appoggiatura { q16 } <cs e>4 r |
    a'16( e cs e  a, e' a, <e' g>) |
    \appoggiatura { q16 } <d fs>4 r |
    
    \barNumberCheck 81
    a'16( g fs e  d c bf <a fs'>) |
    \appoggiatura { q16 } <bf g'>4 r |
    \voiceOne s4. g'8 |
    g8( fs) \oneVoice r4 |
    a16( g fs e  d c bf <a fs'>) |
    \appoggiatura { q16 } <bf g'>4 r8 d-. |
    ef16( c bf c)  \stemDown c( a g a |
    d16 bf a bf)  \stemNeutral bf( g fs g |
    
    \barNumberCheck 89
    c16 a g a  bf g fs g) |
    \appoggiatura { g16 } a4 r8 d-. |
    ef16( c bf c)  \stemDown c( a g a |
    d16 bf a bf)  \stemNeutral bf( g fs g |
    c16 a g a  bf g fs g) |
    \appoggiatura { g16 } a4 r|
    a'16\rest g[ r g r g r g] |
    a16\rest g[ r g r f r e] |
    
    \barNumberCheck 97
    f16\rest f[ r f r f r f] |
    f16\rest f[ r f r ef! r d] |
    f16\rest ef[ r ef r ef r ef] |
    d16\rest ef[ r ef r d r c] |
    d16\rest d[ r d r d r d] |
    d16\rest d[ r d r c r b] |
    \stemDown r16 c[ r bf! r a r g] |
    d'16\rest d[ r d r d r d] |
    
    \barNumberCheck 105
    d16\rest d[ r d-> r c r bf] |
    r16 a[ r ef'-> r d r c]( |
    bf8-.)[ c-. d-. ef-.] |
    r8 a->[( d,) <fs a>-.] |
    \voiceOne bf8->(\prall a16 g)  a8->(\prall g16 fs) |
    g8-. ef->(~  ef d16 c) |
    bf8->(\prall a16 g)  a8->_(\prall g16 fs) |
    g'8-. ef->(~  ef d16 c) |
    
    \barNumberCheck 113
    bf8->(\prall a16 g  d' g, a fs) |
    \oneVoice \appoggiatura { fs16-> } g4 r |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s2 |
    \voiceFour <bf' d>4\arpeggio s |
    s2 * 2 |
    g'8 d16 g  fs8 d16 fs |
    s2 * 2 |
    <d g>4 s |
    
    \barNumberCheck 9
    s2 * 32 |
    
    \barNumberCheck 41
    s2 * 2 |
    \time 3/4
    s2. * 5 |
    \time 2/4
    s2 |
    
    \barNumberCheck 49
    a4 s |
    s2 * 3 |
  }
  \repeat volta 2 {
    s2 |
    <d f>4 s |
    s2 * 2 |
    
    \barNumberCheck 57
    r16 d( c d)  r ef( d ef) |
    r16 d( c d)  r ef( d ef) |
    r16 d( c d)  r ef d ef |
    s2 |
    r16 bf( a bf) r c( bf c) |
    r16 bf( a bf) r c( bf c) |
    r16 bf( a bf) r c-\slurShapeB ^( bf c) |
    s2 |
    
    \barNumberCheck 65
    r16 g( f g)  r af( g af) |
    r16 g( f g)  r af( g af) |
    r16 g( f g)  r af g af |
    s2 |
    r16 ef( d ef)  r f( ef f) |
    r16 ef( d ef)  r f( ef f) |
    r16 ef( d ef)  r f ef f |
    s2 |
    
    \barNumberCheck 73
    s2 * 8 |
    
    \barNumberCheck 81
    s2 * 2 |
    g'16( f! ef d  c bf a g) |
    a4 s |
    s2 * 4 |
    
    \barNumberCheck 89
    s2 * 16 |
    
    \barNumberCheck 105
    s2 * 4 |
    d4 <c d> |
    bf4 a |
    g8 s s4 |
    bf4 a |
    
    \barNumberCheck 113
    g8 s s4 |
    s2 |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s2 * 32 |
    
    \barNumberCheck 33
    s2 * 7 |
    \voiceThree f8[( g a bf] |
    
    \barNumberCheck 41
    a8[ g f g] |
    a8[ bf a g] |
    \time 3/4
    \hideNoteHead d8) s8 s2 |
    s2. * 4 |
    \time 2/4 
    r8 d-. s4 |
    
    \barNumberCheck 49
    <a' d>4-> <d, f>8-. e-. |
    s2 * 3 |
  }
  \repeat volta 2 {
    s2 * 4 |
    
    \barNumberCheck 57
    s2 * 48 |
    
    \barNumberCheck 105
    s2 * 4 |
    g4->( fs) |
    s2 * 2 |
    \voiceTwo \moveRestA d8\rest d \moveRestB c\rest d |
    
    \barNumberCheck 113
    s2 * 2 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    <g bf d>4-> <d a' d>-> |
    <g, bf d g>4->\arpeggio r |
    <c g' a c>4-> <d fs a d>-> |
    <g, d' g>4-> r |
    g'4( a) |
    bf16( a g f  ef d c bf) |
    a'16( g fs e  d c bf a |
    <g bf d g>4->) r |
    
    \barNumberCheck 9
    <g bf d g>4->\sustainOn r\sustainOff |
    <d a' d>4-> r |
    <g bf d g>4->\sustainOn <g bf d g>->\sustainOff |
    r16 d'( fs a  d, fs a fs |
    d4) r |
    r16 g,( bf d  g bf d bf |
    g,4) r |
    r16 d'( fs a  d, fs a fs |
    
    \barNumberCheck 17
    d4) r |
    r16 g,( b d  g b d b |
    g,4) r |
    r16 c( ef g  c, ef g ef |
    c4) r |
    r16 g( b d  g b d b |
    g,4) g( |
    c,4 c') |
    
    \barNumberCheck 25
    f8-. r d-. r |
    ef8-. r c-. r |
    d8-. r c-. r |
    r16 g'( d g,) g8-. r |
    ef'8-. r c-. r |
    d8-. r bf-. r |
    c8-. r bf-. r |
    r16 f'( c f,  f'8-.) a-. |
    
    \barNumberCheck 33
    bf16( g e c  bf'8-.) r |
    a16( f d bf  a'8-.) r |
    g16( e cs a  g'8-.) r |
    d4 r8 a'-. |
    bf16( g e c  bf'8-.) r |
    a16( f d bf  a'8-.) r |
    g16( e cs a  g'8-.) r |
    \voiceTwo d4 d |
    
    \barNumberCheck 41
    d4 d |
    d4 d |
    \time 3/4
    \oneVoice d8-. a-\slurShapeH ( d[ f] d a |
    bf8 d e[ g] e d |
    cs8) a( d[ f] d c |
    bf g cs[ e] a, g |
    f8-.) g-. a-. b-. cs-. d-. |
    \time 2/4
    \voiceTwo a4-> \oneVoice <a cs e>-> |
    
    \barNumberCheck 49
    \voiceTwo d8( g) a,4 |
    \oneVoice <d a' d>4-> r8 <a e' a>-. |
    <d f a>8->[ <g, d' g>-. <a d a'>-. <a e' a>-.] |
    <d, a' d>4-> r |
  }
  \repeat volta 2 {
    <bf' f' bf>4-> <a c f a>-> |
    <bf d f bf>4-> r |
    <ef bf' c>4-> <f a c>-> |
    <bf, f' bf>4-> r |
    
    \barNumberCheck 57
    r8 bf'[( a f]) |
    r8 bf[( a f] |
    bf8) <bf, bf'>[( <a a'>) <f f'>-.] |
    <bf bf'>4 r |
    r8 g'[( fs d]) |
    r8 g[( fs d] |
    g8) <g, g'>[( <fs fs'>) <d d'>-.] |
    <g g'>4-> r |
    
    \barNumberCheck 65
    r8 ef'[( d bf]) |
    r8 ef[( d bf] |
    ef8) <ef ef'>[( <d d'>) <bf bf'>-.] |
    <ef ef'>4-> r |
    r8 c'[( b g]) |
    r8 c[( b g] |
    c8) <c, c'>[( <b b'>) <g g'>-.] |
    <c, c'>4 r |
    
    \barNumberCheck 73
    g''4-\slurShapeJ ( g,) |
    r16 c( ef g  c, ef g ef |
    c4) r |
    r16 g( b d  g b d b |
    g,4) r |
    r16 a( cs e  a cs e cs |
    a,4) r |
    r16 d,( fs a  d fs a fs |
    
    \barNumberCheck 81
    d,4) d |
    r16 g( bf d  g bf d bf |
    g,4) r |
    r16 d( fs a  d fs a fs |
    d,4) d |
    g4-\slurShapeK ( g') |
    c,8-. r a-. r |
    bf8-. r g-. r |
    
    \barNumberCheck 89
    a8-. r g-. r |
    r16 d''-\slurShapeL ( a d,  d,8-.) bf'-. |
    c8-. r a-. r |
    bf8-. r g-. r |
    a8-. r g-. r |
    r16 d''-\slurShapeM ( a d,  d,8-.) a''(\noBeam |
    bf8-.)[ bf-. bf-. bf-.] |
    c,8-.[ bf'( a g] |
    
    \barNumberCheck 97
    af8-.)[ af-. af-. af-.] |
    bf,8-.[ af'( g f] |
    g8-.)[ g-. g-. g-.] |
    af,8-.[ g'( f ef] |
    f8-.)[ f-. f-. f-.] |
    g,8-.[ f'( ef d] |
    ef8-.)[ d-. c-. bf-.] |
    d,8-.[ d-. d-. d-.] |
    
    \barNumberCheck 105
    ef8-.->[ ef-. e-.-> e-.] |
    f8-.->[ f-. fs-.-> fs-.] |
    r16 g r a r bf r c |
    d,4 r8 <d' fs a>-. |
    \voiceTwo r8 bf[( c d]) |
    \oneVoice <g, d' g>4-> <fs d' fs>-> |
    <g g'>8-.->[ bf( c d] |
    \voiceThree <g, g'>4_>) <fs fs'>_> |
    
    \barNumberCheck 113
    \oneVoice <g g'>8->[ bf( c) d-.] |
    g,4-> r |
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
    s2-\tweak X-offset -2 \f |
    s2 * 7 |
    
    \barNumberCheck 9
    s2\mf |
    s2 * 3 |
    s2\p |
    s2 * 3 |
    
    \barNumberCheck 17
    s2\cresc |
    s2 * 7 |
    
    \barNumberCheck 25
    s4\f s\mf |
    s2 * 3 |
    s4\f s\mf |
    s2 * 3 |
    
    \barNumberCheck 33
    s2 * 3 |
    s4. s8\p |
    s2 * 3 |
    s2\cresc |
    
    \barNumberCheck 41
    s2 * 2 |
    \time 3/4
    s8\f s\p\< s4.. s16\! |
    s4 s4..-\tweak Y-offset 2 -\tweak extra-offset #'(0 . -2) \> s16\! |
    s2\< s8. s16\! |
    s4 s4..\> s16\! |
    s2.\cresc |
    \time 2/4
    s2\f |
    
    \barNumberCheck 49
    s2 * 4 |
  }
  \repeat volta 2 {
    s2\ff |
    s2 * 3 |
    
    \barNumberCheck 57
    s2\p\cresc |
    s2 * 2 |
    s4..\f\> s16\! |
    s2\p\cresc |
    s2 * 2 |
    s4..\f\> s16\! |
    
    \barNumberCheck 65
    s2\p\cresc |
    s2 * 2 |
    s4..-\tweak Y-offset 1 \f-\tweak Y-offset 1 \> s16\! |
    s2\p\cresc |
    s2 * 2 |
    s2\f |
    
    \barNumberCheck 73
    s2 * 8 |
    
    \barNumberCheck 81
    s2 * 6 |
    s4\f s\mf |
    s2 |
    
    \barNumberCheck 89
    s2 * 2 |
    s4\f s\mf |
    s2 * 2 |
    s4. s8\> |
    s16 s\p s4. |
    s8 s4.\< |
    
    \barNumberCheck 97
    % in the source, p is on the fourth 16th note
    s16 s\p s4. |
    s8 s4.\< |
    s16 s\p s4. |
    s8 s4.\< |
    s16 s\p s4. |
    s2\cresc |
    s2 |
    s2\mf |
    
    \barNumberCheck 105
    s2\cresc |
    s2 * 2 |
    s2\f |
    s2 * 4 |
    
    \barNumberCheck 113
    s2 * 2 |
  }
}

tempi = {
  \repeat volta 2 { 
    \once \override Score.MetronomeMark.X-offset = 3 
    \tempo "Allegro" 4 = 120 
    s2 * 40 |
    
    \barNumberCheck 41
    s2 * 2 |
    s2. * 5 |
    s2 |
    
    \barNumberCheck 49
    s2 * 2 |
    \set Score.tempoHideNote = ##t
    \tempo 4 = 112 s4 \tempo 4 = 104 s |
    \tempo 4 = 96 s2 |
  }
  \repeat volta 2 {
    \tempo 4 = 120
    s2 * 4 
    
    \barNumberCheck 57
    s2 * 56 |
    
    \barNumberCheck 113
    \tag layout { s2 * 2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4 = 112 s4 \tempo 4 = 100 s |
          \tempo 4 = 88 s2 |
        }
        {
          \tempo 4 = 108 s4 \tempo 4 = 92 s |
          \tempo 4 = 60 s2 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2 * 5 \break
  s2 * 5 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 5 \pageBreak
  
  % page 2
  \grace { s16 } s2 * 5 \break
  s2 * 5 \break
  s2 * 4 \break
  s2 s2. * 2 \break
  s2. * 3 \break
  s2 * 5 \pageBreak
  
  % page 3
  s2 * 6 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \pageBreak
  
  % page 4
  s2 * 5 \break
  s2 * 5 \break
  \grace { s16 } s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists Span_arpeggio_engraver
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
