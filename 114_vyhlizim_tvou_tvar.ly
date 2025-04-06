\version "2.24.3"
\language "deutsch"
% TODO: figure out page layout for a5
#(set-default-paper-size "a5")

% kopirovane listy 115

\paper {
  indent = 0.0  % remove default first line indentation
}

\header {
  title = "Vyhlížím Tvou tvář"
  tagline = ""  % get rid of default footer
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

\relative {
  \key g \major
  g' g g fis | g2 a4 g | 1 | fis2 e4 fis | g1 | \break
  fis2 g8 fis4. | e1 | r1 | g4 g g fis | g2 a4 g | \break
  g1 | fis2 e4 fis | g1 | fis2 g4 a | h1 | \break
  r1 |
  \repeat volta 2 {
    h4 h h h | a1 | a4 a h c | e,1 | \break
    gis4 gis gis gis | a2 e4 a | a2 e4 a |
    \alternative {
      \volta 1 { g a8( g) fis2 | }
      \volta 2 { g2 fis4.( e8) | \break }
    }
  }
  e2. r4 | r1 \fine
}