\version "2.24.3"
\language "deutsch"
#(set-default-paper-size "a5")

% kopirovane listy 119

\paper {
  indent = 0.0  % remove default first line indentation
}

\header {
  title = "Toužím"
  tagline = ""  % get rid of default footer
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

the_chords = \chords {
  \repeat volta 2 {
    g1 | c:sus2 | a:m7 | d |
    g1 | c:sus2 | a:m7 |
    \alternative {
      \volta 1 { d | }
      \volta 2 { d | }
    }
  }
  d2:sus4 d |
  \repeat segno 2 {
    \repeat volta 2 {
      g1 | c | d | d2:sus4 d |
      g1 | c | d | d2:sus4 d |
    }
    \repeat volta 2 {
      g1 | c:sus2 | a:m7 | d |
      g1 | c:sus2 | a:m7 |
      \alternative {
        \volta 1 { d | }
        \volta 2 { d | }
      }
    }
    d2:sus4 d |
  }
}

melody = \relative {
  \key g \major
  \repeat volta 2 {
    fis'4 g r8 g8 fis[ g] | a4 g2 r4 | r g4 g4. 8 | 8 fis4. 4 4 | \break
    fis2 g4 fis8 g | a2 g4 r4 | r2 \tuplet 3/2 { g4 4 4 } | 
    \alternative {
      \volta 1 { g8 fis4. 4 r4 | \break }
      \volta 2 { g8 a4. 4 r4 | }
    }
  }
  r1 |
  \repeat segno 2 {
    \repeat volta 2 {
      r2 h8 8 4 | c4. h8 g8 r8 a a~ | \break
      a2 r2 | r1 | r4. h8~ 8 8 4 | c4. h8 g4 a8 a~ | \break
      a2 r2 | r1 |
    }
    \repeat volta 2 {
      fis8 g4. r4 fis8 g | a8 g4. r2 | \break
      r4 g8\noBeam 8 4. 8 | 4 fis4 2 | 2 g4 fis8 g | a2 g4 r4 | \break
      r4 g8\noBeam 8 4. 8 |
      \alternative {
        \volta 1 { g8 fis4. 4 r4 | }
        \volta 2 { g8 a4. 2 | }
      }
    }
    r1 \fine
  }
}

verse_one = \lyricmode {
  \repeat volta 2 {
    Tou -- žím po To -- bě tou -- žím, tou -- žím Tě po -- zná -- vat,
    Tvou lás -- kou, věč -- nou lás -- kou ne -- chat se 
    \alternative {
      \volta 1 { ob -- jí -- mat. }
      \volta 2 { ob -- jí -- mat. }
    }
  }
}

chorus = \lyricmode {
  \repeat volta 2 {
    Bo -- že, má spá -- so, veď mě dál, 
    v_ná -- dvo -- řích Tvých chci být i já
  }
}

verse_two = \lyricmode {
  \repeat volta 2 {
    Hle -- dám, Te -- be hle -- dám, kří -- dla Tvá jsou skrý -- ší mou.
    Chvá -- lím, Te -- be chvá -- lím, ob -- jí -- máš mě
    \alternative {
      \volta 1 { mo -- cí svou. }
      \volta 2 { mo -- cí svou. }
    }
  }
}

<<
  \the_chords
  \melody
  \addlyrics {
    \set stanza = "1. "
    \verse_one
    \chorus
    \set stanza = "2. "
    \verse_two
  }
>>