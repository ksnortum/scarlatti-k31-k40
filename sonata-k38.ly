%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in F major"
  opus = "K.38"
  source = "https://s9.imslp.org/files/imglnks/usimg/9/99/IMSLP626445-PMLP332474-Sonata_K._38_(as_L._478).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . -2) (0 . 3) (0 . 0) (0 . -1)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeE = \shape #'((0 . 0.75) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -1))
                      ) \etc
slurShapeG = \shape #'((-0.25 . 2) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ((0 . 1) (0 . 0.5) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 1.5) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                      ) \etc

beamPositionsA = \once \override Beam.positions = #'(2 . 5)

%
% Music
%

global = {
  \time 3/8
  \key f \major
}

rightHandUpper = \relative {
  \repeat volta 2 {
    <f'' a>8( <g bf>) <e g>-. |
    \voiceOne a4-\slurShapeA ( g8~ |
    g16 f8.) e8( |
    \oneVoice f16 c a f c8-.) |
    a''4 r16 a( |
    g16 f e d c b |
    g'4) r16 g( |
    f16 e d c b a |
    
    \barNumberCheck 9
    f'4) r16 f( |
    e16 d c b a g |
    e'4) r16 e-\slurShapeC ( |
    d16 c b a g f |
    \tuplet 3/2 8 { e16 d c  g'[ f e]  e' d c } |
    g'16 f e d c b) |
    \tupletOff
    \tuplet 3/2 { e,16( d c  g'[ f e]  e' d c } |
    g'16 f e d c b) |
    
    \barNumberCheck 17
    \tuplet 3/2 { e,16-\slurShapeD ( d c  g'[ f e]  e' d c } |
    g'16 f e d c b |
    a8-.) f-. d-. |
    \set subdivideBeams = ##t
    \tuplet 3/2 { r16 g,(a  b c d  e f g } |
    a8-.) f-. d-. |
    \tuplet 3/2 { r16 g,(a  b c d  e f g } |
    a8-.) f-. d-. |
    \tupletOn
    r32 \beamPositionsA g,[( a b \tuplet 3/2 { c d \sdb1 e } f64 g a b]  c16-.)
      g-\slurShapeH ( |
    
    \barNumberCheck 25
    c16 d e8-.) d-.\prall |
    \set subdivideBeams = ##f
    e,16( c g' e c' g |
    c16 d e8-.) d-.\prall |
    e,16( c g' e c' g |
    c16 d e8-.) d-.\prall |
    c4. |
  }
  \repeat volta 2 {
    <c e>8( <d f>) <b d>-. |
    \voiceOne e4( d8~ |
    
    \barNumberCheck 33
    d16 c8.) b8_( |
    \oneVoice c16 g e c g8-.) |
    g''4.(~ |
    g16 f e d cs d |
    g4.)~ |
    g16 f-\slurShapeI ( e d cs d |
    \tupletOff
    \tuplet 3/2 { cs16 bf a  e'[ d cs]  g' f e } |
    bf'16 a g f e d |
    
    \barNumberCheck 41
    \tuplet 3/2 { cs16 bf a  e'[ d cs]  g' f e } |
    bf'16 a g f e d |
    \tuplet 3/2 { cs16 a' a,  bf[ g' g,]  a f' f, | }
    \tuplet 3/2 { \stemDown g16[ e' e,] } \stemNeutral f8-.) d-. |
    \tuplet 3/2 { g16([ f e] } <d f>8-.) <cs e>-. |
    \tuplet 3/2 { fs16-\slurShapeF ( e d  a'[ g fs]  c' bf a } |
    ef'16 d c bf a g |
    \tuplet 3/2 { fs16 e d  a'[ g fs]  c' bf a } |
    
    \barNumberCheck 49
    ef'16 d c bf a g |
    \tuplet 3/2 { fs16 d' d,  ef[ c' c,]  d bf' bf, } |
    c8-.) a-. d-. |
    \tuplet 3/2 { bf16^( a g  d'[ c bf]  bf' a g } |
    d'16 c bf a g f |
    \tuplet 3/2 { e16)-\slurShapeJ ( d c  g'[ f e]  e' d c } 
    g'16 f e d c bf |
    \tuplet 3/2 { a16)( g f  c'[ bf a]  a' g f } |
    
    \barNumberCheck 57
    c'16 bf a g f e) |
    \tuplet 3/2 { a,16( g f  c'[ bf a]  a' g f } |
    c'16 bf a g f e |
    d8-.) bf-. g8-. |
    e8-. c-. f->(~ |
    f16 g a8-.) g-.\prall |
    a16( f c' a f' c |
    f16 g a8-.) g-.\prall |
    
    \barNumberCheck 65
    a,16( f c' a f' c |
    f16 g a8-.) g-.\prall |
    a,16( f c' a f' c |
    f16 g a8-.) g-.\prall |
    f4. |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4. |
    \voiceFour f''8-\slurShapeB ( bf,4 |
    a8-. g4) |
    s4. * 5 |
    
    \barNumberCheck 9
    s4. * 16 |
    
    \barNumberCheck 25
    s4. * 6 |
  }
  \repeat volta 2 {
    s4. |
    c8-\slurShapeE ( f,4 |
    
    \barNumberCheck 33
    e8 d4) |
    s4. * 7 |
    
    \barNumberCheck 41
    s4. * 24 |
    
    \barNumberCheck 65
    s4. * 5 |
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
    R4. |
    f'8( g) e-. |
    f8( bf,) c-. |
    f,8 r r |
    f16( a c f a8-.) |
    e,8 r r |
    e16( g c e g8-.) |
    d,8 r r |
    
    \barNumberCheck 9
    d16( f b d f8-.) |
    c,8 r r |
    % third beat, no staccato on the e in the source
    c16( e g c e8-.) |
    g,,8 r r |
    \clef treble c'8-. e-. c'-. |
    e8-. r r |
    c,8-. e-. c'-. |
    e8-. r r |
    
    \barNumberCheck 17
    c,8-. e-. c'-. |
    e8-. r r |
    \tupletOff
    \clef bass \tuplet 3/2 { f,16( g a  d,[ e f]  b, c d } |
    g,16-.) r r8 r |
    \tuplet 3/2 { f'16( g a  d,[ e f]  b, c d } |
    g,16-.) r r8 r |
    \tuplet 3/2 { f'16( g a  d,[ e f]  b, c d } |
    g,16-.) r r8 e'( |
    
    \barNumberCheck 25
    f8 g4) |
    c,,,8-. r e''( |
    f8 g4) |
    c,,,8-. r e''( |
    f8 g-.) g,-. |
    c,,4. |
  }
  \repeat volta 2 {
    R4. |
    c''8( d) b-. |
    
    \barNumberCheck 33
    c8( f,) g-. |
    c,8 r r |
    c16( e g c e8-.) |
    bf,!4. |
    bf16( d g bf d g) |
    a,,4. |
    \clef treble a''8-. cs-. e-. |
    g8-. r r |
    
    \barNumberCheck 41
    a,8-. cs-. e-. |
    g8-. r r |
    a,8-. g-. f-. |
    e8-. \clef bass \tuplet 3/2 { d16[( e f]  bf, c d } |
    g,8 a-.) a,-. |
    d,8\noBeam \clef treble fs''-. a-. |
    c!8-. r r |
    d,8-. fs-. a-. |
    
    \barNumberCheck 49
    c8-. r r |
    \clef bass d,8-. c-. bf-. |
    \tuplet 3/2 { a16( bf c  fs,[ g a]  d, e! fs } |
    g8-.) bf-. g'-. |
    bf8-. r r |
    \clef treble c,8-. e-. c'-. |
    e8-. r r |
    f,8-. a-. f'-. |
    
    \barNumberCheck 57
    a8-. r r |
    f,8-. a-. f'-. |
    a8-. r r |
    \tuplet 3/2 { bf,16( c d  g,[ a bf]  e, f g } |
    \tuplet 3/2 { c,16 d e \clef bass a,[ bf c] } f,8 |
    bf8 c-.) c,-. |
    f,8 r \clef treble a''-\slurShapeG ( |
    bf8 c4) |
    
    \barNumberCheck 65
    \clef bass f,,,8-. r \clef treble a''8-\slurShapeG ( |
    bf8 c4) |
    \clef bass f,,,8-. r \clef treble a''8( |
    bf8 c-.) c,-. |
    \clef bass f,,4. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.-\tweak Y-offset -6 \mf |
    s4. * 7 |
    
    \barNumberCheck 9
    s4. * 3 |
    s4\< s16 s\! |
    s4.\f |
    s4. |
    s4.\p |
    s4. |
    
    \barNumberCheck 17
    s4.-\tweak Y-offset -5.5 \f |
    s4. * 4 |
    s16 s-\tweak Y-offset -1 \p s4 |
    s4. |
    s4\cresc s8-\tweak Y-offset 1 \f |
    
    \barNumberCheck 25
    s4. |
    s4-\tweak Y-offset -2 \p s8\mf |
    s8\< s4\! |
    s4.-\tweak Y-offset -2 \p |
    s4. * 2 |
  }
  \repeat volta 2 {
    s4.\mf |
    s4. |
    
    \barNumberCheck 33
    s4. * 2 |
    s4.\f |
    s4. * 4 |
    s4\> s16 s\! |
    
    \barNumberCheck 41
    s4.\p |
    s4. |
    s4.\cresc |
    s8 s4\f |
    s4. |
    s4.\f |
    s4\> s16 s\! |
    s4.\p |
    
    \barNumberCheck 49
    s4. |
    s4.\cresc |
    s4.\f |
    s4. |
    s16 s8.\> s16 s\! |
    s4.\p |
    s4\< s16 s\! |
    s4.\f |
    
    \barNumberCheck 57
    s4\> s16 s\! |
    s4.\p |
    s4\< s16 s\! |
    s4.\f |
    s4. * 2 |
    s4.\p |
    s4. |
    
    \barNumberCheck 65
    s4.\f |
    s4. |
    s4.\p |
    s4. * 2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 69
    s4. * 24 |
    
    \barNumberCheck 25
    s4. * 6 |
  }
  \repeat volta 2 {
    s4. * 2 |
    
    \barNumberCheck 33
    s4. * 32 |
    
    \barNumberCheck 65
    s4. * 2 |
    \tag layout { s4. * 3 | }
    \tag midi {
      \alternative {
        { s4. * 3 | }
        {
          s4 \tempo 4. = 63 s8 |
          \tempo 4. = 58 s8 \tempo 4. = 54 s \tempo 4. = 50 s |
          s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 4 \break
  s4. * 6 \pageBreak
  
  % page 2
  s4. * 7 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
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
