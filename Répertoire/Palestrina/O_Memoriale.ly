\version "2.23.6"

\header {
  title = "O Memoriale"
  composer = "Palestrina"
  style = "Renaissance"
  tagline = "Reproduction libre"
}

\paper  { #(define fonts (make-pango-font-tree "Arial" "Arial" "Arial" (/ staff-height pt 20))) }

global = {
  \key e \major
  \time 4/4
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % En avant la musique.
  fis2, fis4 fis4 fis2 gis2 a2 a4 gis4 fis4 fis4 eis2 % O Memoriale mortis Domini
  fis2 gis4 gis4 gis2 gis4 gis4 b2[(a4)] gis4 gis2 fis2 eis1 % Panis vivus vitam prestans homini.
  fis4 fis4 eis4 fis4 gis1 fis2 % Presta meæe menti
  r4 a4[(a4)] b4 cis4 b4 a2 gis4(a4) a8(gis8) fis4 fis4 eis4 fis1 % de te vivere, te dulce sapere.
  \bar "||"
  fis1 fis1
}
verseSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
  O me -- mo -- ri -- a -- le mor -- tis -- Do -- mi -- ni
  Pa -- nis vi -- vus, vi -- tam præ -- stans ho -- mi -- ni.
  Pre -- sta me -- æ men -- ti de te vi -- ve -- re, te dul -- ce sa -- pe -- re.
  A -- men.
}
sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "Voice Oohs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoice = \relative c' {
  \global
  \dynamicUp
  % En avant la musique.
  cis2 cis4 cis4 cis2 e2 e2 e4 e4 cis4 cis4 cis2 % O Memoriale mortis Domini
  dis2 e4 e4 e2 e4 e4 e4(dis4 fis4) e4 e4(cis2) b4 cis1 % Panis vivus vitam prestans homini.
  cis4 cis4 cis4 cis4 e1 dis2 % Presta meæe menti
  r4 fis4(fis4) fis4 a4 gis4 fis2 e2 a4, a8(b8) cis4 cis4 cis1 % de te vivere, te dulce sapere.
  \bar "||"
  d1 cis1
}
verseAltoVoice = \lyricmode {
  % Ajouter ici des paroles.
  O me -- mo -- ri -- a -- le mor -- tis -- Do -- mi -- ni
  Pa -- nis vi -- vus, vi -- tam præ -- stans ho -- mi -- ni.
  Pre -- sta me -- æ men -- ti de te vi -- ve -- re, te dul -- ce sa -- pe -- re.
  A -- men.
}
altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "Voice Oohs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % En avant la musique.
  a2 a4 a4 a2 b2 cis2 cis4 b4 a4 a4 gis2 % O Memoriale mortis Domini
  b2 b4 b4 b2 cis4 cis4 b2(cis4) cis4 b4(e4,) fis2 gis1 % Panis vivus vitam prestans homini.
  a4 a4 gis4 a4 b1 b2 r4 % Presta meæe menti
  cis4(cis4) dis4 e4 e4 cis2 cis2 fis4, fis4 gis4 gis4 a1 % de te vivere, te dulce sapere.
  \bar "||"
  b1 ais1
}
verseTenorVoice = \lyricmode {
  % Ajouter ici des paroles.
  O me -- mo -- ri -- a -- le mor -- tis -- Do -- mi -- ni
  Pa -- nis vi -- vus, vi -- tam præ -- stans ho -- mi -- ni.
  Pre -- sta me -- æ men -- ti de te vi -- ve -- re, te dul -- ce sa -- pe -- re. 
  A -- men.
}
tenorVoicePart = \new Staff \with {
  instrumentName = "Ténor"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoice = \relative c {
  \global
  \dynamicUp
  % En avant la musique.
  fis2 fis4 fis4 fis2 e2 a2 a4 e4 fis4 fis4 cis2 % O Memoriale mortis Domini
  b2 e4 e4 e2 e4 e4 gis2(fis4) cis4 e2 d2 cis1 % Panis vivus vitam prestans homini.
  fis4 fis4 cis4 fis4 e1 b2 % Presta meæe menti
  r4 fis'4(fis4) b4 a4 e4 fis2 cis2 d4 d4 cis4 cis4 fis1 % de te vivere, te dulce sapere.
  \bar "||"
  b,1 fis1
}
verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
  O me -- mo -- ri -- a -- le mor -- tis -- Do -- mi -- ni
  Pa -- nis vi -- vus, vi -- tam præ -- stans ho -- mi -- ni.
  Pre -- sta me -- æ men -- ti de te vi -- ve -- re, te dul -- ce sa -- pe -- re. 
  A -- men.
}
bassVoicePart = \new Staff \with {
  instrumentName = "Basse"
  midiInstrument = "Voice Oohs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }



\score {
  <<
    \sopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
