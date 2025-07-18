%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in C minor"
  opus = "K.37"
  source = "https://ks15.imslp.org/files/imglnks/usimg/8/8d/IMSLP626444-PMLP332463-Sonata_K._37_(as_L._406).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -3) (0 . -2) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (-0.25 . 0) (-0.25 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (2 . 0) (0 . -0.5) (0 . -1)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . -0.5) (0 . -0.5)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (-0.5 . 0) (-0.5 . 0)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -2)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -2)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -2)) \etc
slurShapeK = \shape #'((0 . -2) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (-0.5 . 0) (-0.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (-0.25 . 0) (-0.25 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeN = \shape #'((0 . 0) (0 . 0) (7 . 3) (4 . -9)) \etc
slurShapeO = \shape #'((0 . 0) (0 . -1) (4 . 2) (4 . -3)) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (-0.25 . 0) (-0.25 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeR = \shape #'((0 . 0) (0 . -1.5) (0 . 0) (0 . 0)) \etc
slurShapeS = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 4/4
  \key c \minor
}

rightHandUpper = \relative {
  \repeat volta 2 {
    c''8( c,) c-. c-.  c'( c,) c-. c-. |
    \tag layout { c'8.\(\prallprall } \tag midi { c8.\(\prall } b16  c d ef d
      c bf af g  f af g f |
    \grace { ef16( } ef8.)-\insideSlur\trill d32 ef  c4\) <ef g c>-> r |
    <g c ef>4-> r <c ef g>-> r |
    <ef g c>4-> r  r8 <c ef>-. \voiceOne d16( ef f d |
    \oneVoice <c ef>4) r  r8 <ef c'>-. \voiceOne b'4( |
    \oneVoice <ef, c'>4) r  r8 <c ef>-. \voiceOne d16( ef f d |
    \oneVoice <c ef>4) r  r16 g'( ef c  g ef c) ef'( |
    
    \barNumberCheck 9
    d4) r  r16 g( ef c  g ef c) ef'-\slurShapeQ ( |
    d4) r  r16 c,( ef g  c ef g c |
    af4) r  r16 bf-\slurShapeB ( f d  bf f d bf |
    g'4) r  r16 s8. \voiceOne r16 f'-\slurShapeC ( ef d |
    \hideNoteHead ef16) s8. \voiceOne r16 f-\slurShapeC ( ef d
      \hideNoteHead ef16) s8.  r16 bf'!-\slurShapeD ( af! g |
    \hideNoteHead af16) s8.  r16 bf-\slurShapeC ( af g  \hideNoteHead af) s8.
      r16 af-\slurShapeC ( g f |
    \hideNoteHead g16) s8.  r16 af-\slurShapeC ( g f \oneVoice <ef g> f) f( ef)
      ef( d) d( c) |
    \stemUp c16( bf) bf( af)  af( g fs g)  \appoggiatura { g16 } fs4 r8
      \stemNeutral bf-. |
    
    \barNumberCheck 17
    ef16( d ef f  g ef d cs)  cs( d) d( ef  f d c b) |
    b16( c) c( d  ef c bf a)  a( bf) bf( c  \stemDown d bf af g) |
    \stemNeutral g16( af) af( b)  b( c) c( d)  d( ef) ef( fs)  fs( g) g( a) |
    a16( bf)  bf( c)  c( bf) bf( a)  a( g) g( f)  f( ef) ef( d) |
    d16( c) c( bf)  s8 \voiceOne ef(  d16) g,( c a \oneVoice <g bf>8-.)
      <fs a>-. |
    <g bf d>4-> r <bf d g>-> r |
    r8 <g' bf>-. \voiceOne a16( bf c a  \oneVoice <g bf>4) r |
    r8 <bf, g'>8-. \voiceOne fs'16( g a fs  \oneVoice <bf, g'>4) r |
    
    \barNumberCheck 25
    r8 <g bf>-. \voiceOne a16( bf c a  \oneVoice d fs, g c,  bf g' a, fs') |
    g,16( d bf' g  d' bf g' d  bf' g d' bf  g' d bf d |
    g,4) r  r8 \clef bass bf,16-\slurShapeN ( d  g, bf d, g) |
    R1 \clef treble |
  }
  \repeat volta 2 {
    g'8( g,) g-. g-.  \tag layout { g'8.\(\prallprall^\trillNatural } 
      \tag midi { g8.\prall } fs16  g a bf a |
    g16 f! ef d  c ef d c \grace { bf16( } bf8.)\trill a32 bf g4\) |
    bf'8( bf,) bf-. bf-.  \stemDown 
      \tag layout { bf'8.-\slurShapeJ \(\prallprall }
      \tag midi { bf8.\prall } a16  bf c d c |
    \stemNeutral bf16 a g f  ef g f ef  \grace { d16( } d8.)-\insideSlur\trill
      c32 d bf4\) |
    
    \barNumberCheck 33
    <bf' d f>4 r r8 \voiceOne a16( bf  c d ef c |
    \oneVoice <f, bf d>4) r r8 \voiceOne a16( bf  c d ef c |
    \oneVoice <f, bf d>4) r r8 \voiceOne b16-\slurShapeR ( c  d ef f d |
    \oneVoice <g, c ef>4) r r8 \voiceOne b16( c  d ef f d |
    \oneVoice <g, c ef>4)r r8 \voiceOne b16( c  d ef f d |
    \oneVoice e16 f e d  c bf af g  af g af f'  af, g af f' |
    \stemDown g,16 f g e'  g, f g e'  af, g af f'  af, g af f' |
    g,16 f g e'  g, f g e'  af, g af f'  g, f g ef') |
    
    \barNumberCheck 41
    s1 * 2 |
    \voiceOne r8 b \oneVoice r g'-.  af16( g af bf!  c af g fs) |
    fs16( g) g( a  bf g f e)  e( f) f( g  af f ef d) |
    d16( ef) ef( fs  g ef d c)  c( df) df( e)  e( f) f( ef) |
    ef16( d) d( c)  c( b) b-\slurShapeK ( c \voiceOne d8-.) c4-\slurShapeS (
      b8 |
    \oneVoice <ef, c'>4) r <g c ef>-> r |
    <c ef g>4-> r  r8 <ef c'>-. \voiceOne b'4( |
    
    \barNumberCheck 49
    \oneVoice <ef, c'>8-.) <c ef>8-. \voiceOne d16( ef f d \oneVoice <c ef>8-.)
      <ef, c'>-. \voiceOne b'4( |
    c8) r g( f  ef) s4. |
    s1 |
    \oneVoice r4 c16-\slurShapeO ( ef g, c) r2 |
  }
}


rightHandLower = \relative {
  \repeat volta 2 {
    s1 * 4 |
    s2. \voiceFour b'4( |
    \hideNoteHead c4) s s d16-\slurShapeP ( ef f d |
    \hideNoteHead ef4) s s b4( |
    \hideNoteHead c4) s2. |
    
    \barNumberCheck 9
    s1 * 3 |
    s2 s16 g'( g, g'  a,8 b |
    <c ef>16) g'( g, g'  a,8 b  <c ef>16) c'-\slurShapeE ( c, c'  d,8 e |
    <f af>16) c'( c, c'  d,8 e  <f af>16) bf( bf, bf'  c,8 d |
    <ef! g>16) bf'-\slurShapeF ( bf, bf'  c,8 d  \hideNoteHead ef16) s8. s4 |
    s1 |
    
    \barNumberCheck 17
    s1 * 4 |
    s4 bf16( a g fs  g16) s8. s4 |
    s1 |
    s4 fs'( \hideNoteHead g4) s |
    s4 a,-\slurShapeG ( \hideNoteHead bf4) s |
    
    \barNumberCheck 25
    s4 fs s2 |
    s1 * 3 |
  }
  \repeat volta 2 {
    s1 * 4 |
    
    \barNumberCheck 33
    s2 s8 f f f |
    s2 s8 f f f |
    s2 s8 g g g |
    s2 s8 g g g |
    s2 s8 g g g |
    s1 * 3 |
    
    \barNumberCheck 41
    \oneVoice f16_( ef f d'  f, ef f d'  g, f g ef'  g, f g ef' |
    f,16 ef f d'  f, ef f d'  f, ef f d'  ef, d ef c' |
    \voiceFour ef,8-> d) s2. |
    s1 * 2 |
    s2 r16 f-\slurShapeL ( ef d  ef f ef d |
    \hideNoteHead ef4) s2. |
    s2. d'16-\slurShapeM ( ef f d |
    
    \barNumberCheck 49
    \hideNoteHead ef8) s b4( \hideNoteHead c8) s  d,16( ef f d |
    g16) c,( f d  ef c d b  c) g^( ef' c  g' ef c' g |
    \oneVoice ef'16 c g' ef  c' g ef g  c,4) r |
    s1 |
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
    c'8( c,) c-. c-.  c'( c,) c-. c-. |
    \tag layout { c'8.\(\prallprall } \tag midi { c8.\(\prall } b16
      c d ef d  c bf af g  f af g f |
    \grace { ef16( } ef8.)-\insideSlur\trill d32 ef  c4\) r16 c( ef g
      c, ef g c) |
    r16 c,( ef g  c, ef g c)  r c,( ef g  c, ef g c) |
    r16 c,-\slurShapeA ( ef g  c, ef g c  c,4) g'8( g,) |
    r16 c-\slurShapeA ( ef g  c, ef g c  c,4) g'8( g,) |
    r16 c-\slurShapeA ( ef g  c, ef g c  c,4) g'8( g,) |
    r16 c-\slurShapeA ( ef g  c, ef g c  c,4) r |
    
    \barNumberCheck 9
    r16 \stemDown g'( d b  g' d g, f'  ef4) r |
    r16 g( d b  g' d g, f'  ef4) r |
    r16 f( af c  f, af f d  \stemNeutral bf!4) r |
    r16 ef( g bf  ef) g( ef c  ef,8-.) ef'( d g, |
    c8) ef( d g,  c) af( g c,) |
    \clef treble f'8( af g c,  f g af bf |
    ef,8) g_( af bf  ef, d c bf |
    ef8 d c ef  d4 \clef bass d,) |
    
    \barNumberCheck 17
    r8 g g g  fs( f) f f |
    e8( ef) ef ef  d d bf bf |
    c8( d ef f  \stemDown g) a,( bf c |
    \stemNeutral d8 ef) ef( d  c bf a g |
    f8 ef d) c'(  d ef d-.) d,-. |
    r16 g( bf d  g bf d g)  r g,,( bf d  g bf d g) |
    g,,4-> d'8( d,)  r16 g( bf d  g bf d g) |
    g,,4-> d'8( d,)  r16 g( bf d  g bf d g) |
    
    \barNumberCheck 25
    g,,4-> r8 d'(  bf ef d) d,-. |
    g4-> r r2 |
    r16 g'( d g  bf, d g, bf  d, g) r8 r4 |
    g4-> r r2 |
  }
  \repeat volta 2 {
    g'8( g,) g-. g-.  
      \tag layout { g'8.-\slurShapeH \(\prallprall^\trillNatural }
      \tag midi { g8.\prall } fs16  g a bf a |
    g16 f! ef d  c ef d c \grace { bf16( } bf8.)-\insideSlur\trill a32 bf
      g4\) |
    bf'8( bf,) bf-. bf-.  \tag layout { bf'8.-\slurShapeI \(\prallprall }
      \tag midi { bf8.\prall } a16  bf c d c |
    bf16 a g f  ef g f ef  \grace { d16( } d8.)-\insideSlur\trill c32 d bf4\) |
    
    \barNumberCheck 33
    r16 bf( d f  bf d f bf)  f,,4 r |
    r16 bf( d f  bf d f bf)  f,,4 r |
    r16 bf( d f  bf d f bf)  g,,4 r |
    r16 c( ef g \clef treble c ef g c) \clef bass g,,4 r |
    r16 c( ef g \clef treble c ef g c) \clef bass g,,4 r |
    r8 c c c  c <c f> q q |
    q8( <c e>) q q  c <c f> q q |
    q8( <c e>) q q  c <c f> q q |
    
    \barNumberCheck 41
    <bf ef!>8( <bf d>) q q  bf <bf ef> q q |
    q8( <bf d>) q q  <af d>( <af c>) q q |
    \stemDown g8( g') r4  r8 \stemNeutral c, c c |
    b8( bf) bf bf  a( af) af af |
    g8 g ef ef  f( g af g |
    f8 ef d) c''(\noBeam  b c g) g,-. |
    r16 c( ef g \clef treble c ef g c) \clef bass r16 c,,( ef g \clef treble
      c ef g c) |
    \clef bass r16 c,,( ef g \clef treble c ef g c) \clef bass c,,4 g'8( g,) |
    
    \barNumberCheck 49
    c16( ef g c)  g,8-. g-.  c16( ef g c  g8 f |
    ef8) af( g g,  c4) r |
    r2 r16 c'( g c  ef, g c, ef |
    g,16 c ef, g) r4  c, r |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s1 |
    s2 s\mf |
    s1\cresc |
    s2\f s8 s4.\mf |
    s2 s8 s4.\f |
    s2 s8 s4.\mf |
    s1\cresc |
    
    \barNumberCheck 9
    s1 * 2 |
    s1\f |
    s2 s16 s4..\p |
    s2 s\cresc |
    s1 |
    s1\f |
    s2 s4.\> s8\p |
    
    \barNumberCheck 17
    s2 \tag layout { s\sf } \tag midi { s16\mf s4..\p } |
    \tag layout { s2\sf s\sf } \tag midi { s16\mf s4..\p s16\mf s4..\p } |
    s1\cresc |
    s4 s2.\f |
    s1 |
    s2\p s\cresc |
    s8 s2..\f |
    s1 |
    
    \barNumberCheck 25
    s8 s4.-\tweak Y-offset -2 \p s2\cresc |
    s1 |
    s1\f |
    s1 |
  }
  \repeat volta 2 {
    s1\f |
    s1 * 3 |
    
    \barNumberCheck 33
    s1\p |
    s1 |
    s1-\tweak Y-offset -4.5 \cresc |
    s1 |
    s1\mf |
    s2 s\p |
    s8.\> s16\! s2. |
    s8.\> s16\! s2. |
    
    \barNumberCheck 41
    s8.\> s16\! s2.\cresc |
    s8.\> s16\! s4 s8.\> s16\! s4 |
    s4-\tweak Y-offset -3 \mf-\tweak Y-offset -2.5 \> s8\! s\p s2 |
    \tag layout { s2\sf s\sf } \tag midi { s16\mf s4..\p s16\mf s4..\p } |
    \override DynamicLineSpanner.Y-offset = -6
    \tag layout { s2\sf } \tag midi { s16\mf s4..\p } s2\cresc |
    s1 |
    \revert DynamicLineSpanner.Y-offset
    s1\f |
    s1 |
    
    \barNumberCheck 49
    s1 |
    s2 s16 s4..\p\cresc |
    s2 s\f |
    s1 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 112
    s1 * 24 |
    
    \barNumberCheck 25
    s1 * 4 |
  }
  \repeat volta 2 {
    s1 * 4 |
    
    \barNumberCheck 33
    s1 * 16 |
    
    \barNumberCheck 49
    s1 * 2 |
    \tag layout { s1 * 2 | }
    \tag midi {
      \alternative {
        { s1 * 2 }
        {
          s2. \tempo 4 = 104 s4 |
          \tempo 4 = 96 s4 \tempo 4 = 88 s \tempo 4 = 80 s2 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 2
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 3 \pageBreak
  
  % page 3
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 4
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
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
