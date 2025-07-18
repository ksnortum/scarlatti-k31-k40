%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in A major"
  opus = "K.39" % this is a lot like K24
  source = "https://ks15.imslp.org/files/imglnks/usimg/c/cc/IMSLP626450-PMLP332485-Sonata_K._39_(as_L._391).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . -10) (0 . -8) (0 . 5.5)) \etc
slurShapeB = \shape #'((0 . 0.25) (0 . 0.6) (1 . 0.6) (1 . 0.25)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0.5) (-0.25 . -1.5) (-0.25 . 1.5))
                        ((-1 . -9) (-1 . -8) (0 . -10) (0 . -7))
                      ) \etc
slurShapeD = \shape #'((0 . 0) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 1) (0 . -2) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 2) (0 . 1) (0 . -1)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 4/4
  \key a \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \partial 4 s4 |
    \voiceOne s16 a''-.[ s e-. s cs-. s a-.]  s e-.[ s \staffDown cs-. s a-.
      s e-.] |
    \staffUp \oneVoice r8 a-. r cs-.  b16( cs d e  d8-.) cs-. |
    b16( cs d e  d8-.) cs-.  b16( cs d e  d8-.) cs-. |
    b4 s  \voiceOne s16 e'-.[ s b-. s gs-. s e-.] |
    \staffDown s16 b-.[ s gs-. s e-. s b-.] \staffUp \clef bass \oneVoice r8
      e-. r gs-. |
    fs16( gs a b  a8-.) gs-.  fs16( gs a b  a8-.) gs-. |
    fs16( gs a b  a8-.) gs-.  fs4 r8 fs-. |
    gs16( fs gs a  b8-.) a-.  gs16( fs gs a  b8-.) a-. |
    
    \barNumberCheck 9
    gs16( fs gs a  b8-.) a-.  gs16( a b c  d!8-.) b-. |
    c16( b c d  e8-.) d-.  c16( b c d  e8-.) d-. |
    c16( b c d  e8-.) d-. \clef treble c16( e fs g  a8-.) fs-. |
    g16( fs g a  b8-.) a-.  g16( fs g a  b8-.) a-. |
    g16( fs g a  b8-.) a-.  gs16( a b c  d8-.) b-. |
    c16( b c d  e8-.) d-.  c16( b c d  e8-.) d-. |
    c16( b c d  e8-.) d-.  c16( e fs g  a8-.) fs-. |
    g16( fs g a  b8-.) a-.  g16( fs g a  b8-.) a-. |
    
    \barNumberCheck 17
    g16( fs g a  b8-.) a-.  g16-\slurShapeH ( c fs, b  e, a d, g |
    c,16 fs b, e  a, d g, c  fs, b e, a  d, g c, fs |
    \clef bass b,16 e a, d  g, c fs, b  e, a g fs  g e' fs, ds') |
    e,16( fs g a  g e' fs, ds')  e,( fs g a  g e' fs, ds') |
    \clef treble \stemUp e16( fs g a  g e' fs, ds')  e,( fs g a  g e' fs,
      ds') |
    e,16( fs g a  g e' fs, ds')  e,( fs g a  g e' fs, ds' |
    e,16 c' d,! b'  c, a' b, g'  fs ds e fs  b, e a, ds) |
    \stemNeutral r16 b'( cs! ds  e8-.) fs-.  gs16 b,,( cs ds  e8-.) fs-. |
    
    \barNumberCheck 25
    gs16 \clef bass b,,-\slurShapeD ( cs ds  e8-.) fs-.  gs16( e a fs
      gs e fs ds |
    \alternative {
      { <e gs>2.) }
      { <e gs-\slurShapeB \repeatTie>4 }
    }
  }
  \repeat volta 2 {
    \clef treble s4 s16\voiceOne e''16-.[ s b-. s gs-. s e-.] |
    \staffDown s16 b-.[ s gs-. s e-. s b-.]  r8 e-. \staffUp \oneVoice r
      gs'-. |
    d!16( e fs e  d b' cs, a'  d, e fs e  d b' cs, a' |
    d,16 b' cs, a'  d, b') b,( d  cs e fs gs  a8-.) b-. |
    cs16( e fs gs a4) \staffDown \voiceOne s16 a-.[ s e-. s cs-. s a-.] |
    \staffDown \clef bass s16 e-.[ s cs-. s a-. s e-.] \staffUp \oneVoice r8
      a r a'-. |
    g16( a b a  \stemUp g e' fs, d'  g, a b a  g e' fs, d' |
    
    \barNumberCheck 33
    g,16 e' fs, d'  g, e') e,( g  fs a, b cs  d8-.) e-. |
    \stemNeutral fs16( a b cs  d8-.) e-.  fs16-\slurShapeI ( b e, a
      d, gs! cs, fs |
    b,16 e a, d  gs, cs fs, b  e, a d, gs  cs, fs b, e |
    \clef bass a,16 d gs, cs  fs, cs' b a  gs a b c  d8-.) c-. |
    b16( c d e  d8-.) c-.  b16( c d e  d8-.) c-. |
    \clef treble b8-. b( cs!) d-.  e-. e( fs) gs-. |
    a8-. b-. cs-. d-.  e-. fs-. gs-. a-. |
    b16( a gs fs  e d cs b  cs a' b, gs'  a, fs' gs, e' |
    
    \barNumberCheck 41
    fs,16 d' e, cs'  d, b' cs, a'  b,) gs'-\slurShapeF ( a b  cs, a' b, gs') |
    a,16( b c d  c a' b, gs')  a,( b c d  c a' b, gs') |
    a16( b c d  c a' b, gs')  a,( b c d  c a' b, gs') |
    a,16-\slurShapeA ( b c d  c a' b, gs'  a, f' g, e'  f, d' e, c' |
    d,16 gs! a b  c, a' b, gs'  a,) e( fs gs  a8-.) b-. |
    cs!16( e fs gs  a8-.) b-.  cs16( e fs gs a4) |
    \voiceOne s16 a-.[ s e-. s cs-. s a-.]  s e-.[ \staffDown s cs-. s a-.
      s e-.] |
    \staffUp \oneVoice r8 a-. r <fs' a d>-.  <e a cs>4-> <e gs b>-> |
    \alternative {
      { <cs e a>4-> }
      { q2.-> }
    }
  }
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \partial 4 \staffUp r16 \voiceTwo e''^(_\ms fs gs |
    a16^.)[ s e-. s cs-. s a-.] s  e-.[ s \staffDown cs-. s a-. s e-.] s |
    \oneVoice a,4-> a' <e gs> r8 <e a>-. |
    <e gs>4 r8 <e a>-.  <e gs>4 r8 <a, a'>-. |
    e'4 \staffUp r16 \voiceTwo b''^( cs ds  e^.)[ s b-. s gs-. s e-.] s |
    \staffDown b16-.[ s gs-. s e-. s b-.] s  \oneVoice e,4-> e' |
    <b ds>4 r8 <b e>-.  <b ds>4 r8 <b e>-. |
    <b ds>4 r8 <e, e'>-.  b'4 r8 b-. |
    e16-\slurShapeG ( ds e fs  gs b, fs' b,  e ds e fs  gs b, fs' b, |
    
    \barNumberCheck 9
    e16 ds e fs  gs b, fs' b,  e4) r16 e( fs gs |
    a16 gs a b  c e, b' e,  a gs a b  c e, b' e, |
    a16 gs a b  c e, b' e,  a4) \clef treble r16 b( cs ds |
    e16 ds e fs  g b, fs' b,  e ds e fs  g b, fs' b, |
    e16 ds e fs  g b, fs' b,  e4) r16 e( fs gs |
    a16 gs a b  c e, b' e,  a gs a b  c e, b' e, |
    a16 gs a b  c e, b' e,  a4) r16 b( cs ds |
    e16 ds e fs  g b, fs' b,  e ds e fs  g b, fs' b, |
    
    \barNumberCheck 17
    e16 ds e fs  g b, fs' b,  e8-.) d-. c-. b-. |
    a8-. g-. fs-. e-.  d-. c-. b-. a-. |
    \clef bass g8-. fs-. e-. d-.  c( a b) b-. |
    e,8( e') r b-.  e,( e') r b-. |
    e,8( e') r b-.  c( a) r b-. |
    c8( a) r b-.  c[( a]) b'-. b,-. |
    c'8( g a e  a,-.) a'-. << { g( fs) } \\ { b,4 } >> |
    <e, e'>4 \clef treble r16 b'''( cs! ds e4) \clef bass r16 b,( cs ds |
    
    \barNumberCheck 25
    e4) r16 b,( cs ds  e8) a,( b) b-. |
    \alternative {
      { e,2.-> }
      { e4-> }
    }
  }
  \repeat volta 2 {
    \staffUp \clef treble \voiceTwo r16 b'''^(_\ms cs ds  e16^.)[ s b-. s gs-.
      s e-.] s |
    \staffDown b16-.[ s gs-. s e-. s b-.] s  e,4 e' |
    \oneVoice r4 r8 <e a>-.  <e b'>4 r8 <e a>-. |
    << { b'8( a b) gs-. } \\ { e4 r8 e-. } >> <a, a'>4 \clef treble r16 e''(
      fs gs |
    a4) r16 e'( fs gs  a-.)[ s \voiceTwo e-. s cs-. s a-.] s |
    \clef bass e16-.[ s cs-. s a-. s e-.] s \oneVoice a,4-> a' |
    r4 r8 <a d>-.  <a e'>4 r8 <a d>-. |
    
    \barNumberCheck 33
    << { e'8( d e) cs-. } \\ { a4 r8 a8-. } >> <d, d'>4 r16 a'( b cs |
    d4) \clef treble r16 a'( b cs  d8-.) cs-. b-. a-. |
    gs8-. fs-. e-. d-. \clef bass cs-. b-. a-. gs-. |
    fs8-. e-. d-. ds-.  e4 r8 <e a>-. |
    <e gs>4 r8 <e a>-.  <e gs>4 r8 <e a>-. |
    r16 e-\slurShapeE ( fs gs  a e b' e,  cs' a b cs  d a e' a, |
    \clef treble fs'16 d gs e  a fs b gs  cs a d b  e cs fs d |
    gs16 fs e d  cs b a gs  a8-.) e( fs) cs-. |
    
    \barNumberCheck 41
    \clef bass d8( a d,) d-.  e( a, e4) |
    a8( a') r e-.  a,( a') r e-. |
    a,8( a') r e-.  f( d) r e-. |
    f8( d) e-.[ e'-.]  f( c d[ a] |
    e8-.) d( e) e,-.  a4 r16 e'( fs gs |
    a4) \clef treble r16 e'( fs gs  a4) r16 e'-\slurShapeC ( fs gs |
    \staffUp \voiceTwo a16-.)[ s e-. s cs-. s a-.] s  e-.[ s \staffDown
      \clef bass cs-. s a-. s e-.] s |
    \oneVoice a,4 r8 d-.  e4-> e,-> |
    \alternative {
      { <a a'>4-> }
      { q2.-> }
    }
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 4 s16 s8\< s16\! |
    s1\f |
    s4. s8\p s2 |
    s1 |
    s4 s16 s8\< s16\! s2\f |
    s2.. s8\p |
    s1 |
    s2.. s8\p |
    s1 |
    
    \barNumberCheck 9
    s2 s\cresc |
    s1 * 2 |
    s1\mf |
    s2 s\cresc |
    s1 * 2 |
    s1\f |
    
    \barNumberCheck 17
    s1 |
    s1\dim |
    s1\p |
    s1 |
    s1\cresc |
    s2. s4\f |
    s1\dim |
    s1\f |
    
    \barNumberCheck 25
    s1 |
    \alternative {
      { s2. }
      { s4 }
    }
  }
  \repeat volta 2 {
    s16 s8\< s16\! s2\f |
    s2.. s8\p |
    s1 |
    s2 s4.\mf s8\p |
    s4 s16 s8\< s16\! s2\f |
    s2.. s8\p |
    s1 |
    
    \barNumberCheck 33
    s2 s4\mf s16 s8.\p |
    s2\cresc s\f |
    s1\dim |
    s1\p |
    s1 |
    s1-\tweak Y-offset -2 \cresc |
    s1 |
    s1\f |
    
    \barNumberCheck 41
    s1\dim |
    s1\p |
    s1\cresc |
    s4. s8\f s2 |
    s2 s16 s4..-\tweak Y-offset -3 \p-\tweak Y-offset -2.5 \cresc |
    s2 s4\f s16 s8\< s16\! |
    s1-\tweak Y-offset -1 \f |
    s4. s8^\pesante s2 |
    \alternative {
      { s4 }
      { s2. }
    }
  }
  
}

tempi = {
  \repeat volta 2 {
    % source has 2 = 120, but that is ridiculously fast
    \tempo "Presto" 4 = 120
    \partial 4 s4 |
    s1 * 24 |
    
    \barNumberCheck 25
    s1 |
    \alternative {
      { s2. }
      { s4 }
    }
  }
  \repeat volta 2 {
    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    s2. |
    s1 * 6 |
    
    \barNumberCheck 33
    s1 * 8 |
    
    \barNumberCheck 41
    s1 * 7 |
    s4. \tempo 4 = 100 s8 s2 |
    \alternative {
      { s4 }
      { s2. }
    }
  }
}

forceBreaks = {
  % page 1
  \partial 4 s4 s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 s2. \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 3
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
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
