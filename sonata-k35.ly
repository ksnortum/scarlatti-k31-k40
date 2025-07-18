%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G minor"
  opus = "K.35"
  source = "https://s9.imslp.org/files/imglnks/usimg/4/47/IMSLP626442-PMLP332118-Sonata_K._35_(as_L._386).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 1) (0 . -1) (0 . -2) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 1) (0 . -1) (0 . -2) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 1) (0 . -1) (0 . -1.5) (0 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . -1) (0 . 1.5) (0 . -1) (0 . 0))
                        ((0 . 0) (0 . -1) (0 . 1.5) (-0.25 . -1))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeG = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                      ) \etc

%
% Music
%

global = {
  \time 4/4
  \key g \minor
}

rightHandUpper = \relative {
  \repeat volta 2 {
    \partial 4 r16 d''( c d |
    bf8 c16 d  g, d' e fs  g fs g a  g bf a g |
    fs4) r  r16 d( c d  bf c d bf |
    g16 g' f! g  d f ef d  ef4) r |
    r16 c( bf c  \stemDown a bf c a  f f' ef f  c ef d c |
    d4) r  r16 \stemNeutral bf( a bf  g a bf g |
    \stemDown ef16 ef' d ef  bf d c bf  c4) r |
    \stemNeutral r16 a( g a  fs g a fs  d d' c d  a c bf a |
    bf8-.) ef16( d  \stemDown c bf a g  \stemNeutral fs4 g8-.) fs-. |
    
    \barNumberCheck 9
    g8-. a-. bf-. c-.  d( ef) d-. c-. |
    bf8( a) r a-.  bf( a) r a-. |
    bf8( a) r a-.  \stemUp bf4( c8-.) g-. |
    fs4 s \voiceOne ef'2( |
    d2 c |
    bf2 a |
    g2 f16)( g f d  g a g d |
    \oneVoice a'16 bf a d,  bf' a bf d,  cs'8) b16( cs  a8 b16 cs |
    
    \barNumberCheck 17
    d16 e d a  e' f e a,  f' g f a,  g' a g a, |
    a'8-.) bf16( a  g f e d  cs8 b16 a d8-.) g,-. |
    f16( a d a  f d' e, cs' d,4->)
  }
  \repeat volta 2 {
    r16 a'( g a |
    f8 g16 a  d, a' b cs  d cs d e  d f e d |
    cs4) r  r16 a( g a  f g a f |
    d16 d' c! d  a c bf a  bf4) r |
    r16 g( f g  e f g e  c c' bf c  g bf a g |
    a16 f' ef! f  c ef d c  d8 c16 d bf4) |
    
    \barNumberCheck 25
    f'16( bf, a bf  f' bf, a bf  g' bf, a bf  f' bf, a bf |
    g'4) r  g16( c, b c  g' c, b c |
    a'16 c, b c  g' c, b c  a'4) r |
    a16( d, cs d  a' d, cs d  bf' d, cs d  a' d, cs d |
    bf'4) r  ef,16( g f ef a,4) |
    d16( f ef d g,4)  c16( ef d c f,4) |
    bf16( d c bf e,4)  \stemDown a16( c bf a  d f ef! d |
    g16 bf a g  a c bf a  bf8) a16( g f8-.) ef-. |
    
    \barNumberCheck 33
    d16( bf' d, bf'  c, a' c, a'  bf,4) r8 d-. |
    \stemNeutral c8( bf16 a  bf8-.) g-.  fs( d) r d'-. |
    ef16-\slurShapeG ( f d ef  c d bf c  a f' ef f  c f ef f |
    d16 ef c d  bf c a bf  g ef' d ef  bf ef d ef |
    c16 d bf c  a bf g a  fs8-.) e16-\slurShapeH ( fs  d8 e16 fs |
    g16 a g d  a' bf a d,  bf' c bf d,  c' d c d, |
    d'8) ef16( d  c bf a g  fs'8 e16 d  g8-.) c,-. |
    bf16( d g bf,  a g' fs a, g4->)
  }
}


rightHandLower = \relative {
  \repeat volta 2 {
    \partial 4 s4 |
    s1 * 8 |
    
    \barNumberCheck 9
    s1 * 3 |
    s4 \voiceFour d''(~ d c~ |
    c4 bf~ bf a~ |
    a4 g~ g f!~ |
    f4 e f8) s4. |
    s1 |
    
    \barNumberCheck 17
    s1 * 2 |
    s2.
  }
  \repeat volta 2 {
    s4 |
    s1 * 5 |
    
    \barNumberCheck 25
    s1 * 8 |
    
    \barNumberCheck 33
    s1 * 7 |
    s2.
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \partial 4 r4 |
    <g, g'>4 r g8-. a-. bf-. c-. |
    d16( d' c d  bf c d bf  g4) r |
    g4( bf)  c,16-\slurShapeB ( c' bf c  a bf c a |
    f4) r f( a) |
    bf,16-\slurShapeC ( bf' a bf  g a bf g  ef4) r |
    ef4( g)  a,16-\slurShapeD ( a' g a  fs g a fs |
    d4) r d( fs |
    g4) r8 c,-.  d16-\slurShapeE ( d' c c  bf d a d |
    
    \barNumberCheck 9
    g,16 d' fs, d'  g, d' a d  bf d c d  bf d a d |
    g,16 d' fs, d'  g, d' fs, d'  g, d' fs, d'  g, d' fs, d' |
    g,16 d' fs, d'  g, d' fs, d'  g, d' g, d'  ef, c' ef, c' |
    d,16)( d' c d  bf a g bf)  c,( c' bf c  a g f! a) |
    bf,16( bf' a bf  g f ef g)  a,( a' g a  fs e d fs) |
    \stemUp g,16( g' fs g  e d c e)  f,!( f'! e f  d c bf d) |
    \stemNeutral e,16_( e' d e  cs bf a cs  d8-.) r e-. r |
    f8-. r g-. r a-. r r4 |
    
    \barNumberCheck 17
    f8-. r cs-. r d-. r e-. r |
    f4 r8 g(  a g f-.) g-. |
    a4( a, d8-.)[ d,-.]
  }
  \repeat volta 2 {
    r4 |
    <d d'>4 r  d'8-. e-. f-. g-. |
    a,16-\slurShapeA ( a' g a  f g a f  d4) r |
    d4( f)  \stemDown g,16-\slurShapeF ( g' f g  e f g e |
    \stemNeutral c4) r  c( e |
    f4 a  bf,4. c8 |
    
    \barNumberCheck 25
    d4) r ef( d |
    ef16-.) ef'( d c  bf a g f  e4) r |
    f4( e  f16-.) f'( e d  c bf a g |
    fs4) r g( fs |
    g8-.) bf16( a g f! ef! d  c4) f16( a g f |
    bf,4) ef16( g f ef  a,4) d16( f ef d |
    g,4) c16( e d c  f,4) bf( |
    ef4 f g4. a8 |
    
    \barNumberCheck 33
    bf8-.)[ bf,-.] f'-. f,-.  bf( c d) bf'-. |
    a8( fs g-.) g,-.  d'( c) bf-. g-. |
    c4( ef f) r |
    bf,4( d ef) r |
    a,4( c d4. c8 |
    bf4) fs( g a |
    bf4) r8 c(  d c bf-.) c-. |
    d8( c d) d,-.  g'8-.[ g,-.]
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 4 s16 s8.\f |
    s1 |
    s2\> s\mf |
    s1 * 5 |
    s2 s4\> s\p |
    
    \barNumberCheck 9
    s4.\< s8\! s2 |
    s8.\> s16\! s4 s8.\> s16\! s4 |
    s8.\> s16\! s2. |
    s4 s\< s2-\tweak Y-offset -1 \mf |
    s1\dim |
    s1 |
    s2 s\p\cresc |
    s2 s8\mf s\p s4\cresc |
    
    \barNumberCheck 17
    s1 |
    s1\f |
    s2.
  }
  \repeat volta 2 {
    r16 s8.\mf |
    s1 |
    s2\> s16 s4..\p |
    s1 |
    s1\cresc |
    s2 s4\mf s8..\> s32\! |
    
    \barNumberCheck 25
    s1\p |
    s2 s-\tweak Y-offset -1 \cresc |
    s1 |
    s2 s\f |
    s2\> s\mf |
    s1 |
    s2 s-\tweak Y-offset -1 \cresc |
    s2 s-\tweak Y-offset 1 \f |
    
    \barNumberCheck 33
    s2.. s8\mf |
    s2 s4.\> s8\p |
    s1 |
    s1-\tweak Y-offset -1 \cresc |
    s2 s4.\f s8\p |
    s1\cresc |
    s1\f |
    s2.
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 120
    \partial 4 s4 |
    s1 * 16 |
    
    \barNumberCheck 17
    s1 * 2 |
    s2.
  }
  \repeat volta 2 {
    s4 |
    s1 * 5 |
    
    \barNumberCheck 25
    s1 * 8 |
    
    \barNumberCheck 33
    s1 * 6 |
    \tag layout { s1 | s2. }
    \tag midi {
      \alternative {
        { s1 | s2. }
        {
          s2. \tempo 4 = 112 s4 |
          \tempo 4 = 100 s4 \tempo 4 = 80 s \tempo 4 = 60 s
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  \partial 4 s4 s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 s2. \pageBreak
  
  % page 2
  s4 s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
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
