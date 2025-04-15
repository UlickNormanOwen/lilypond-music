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
    \override LyricText.font-size = #-0.7  % smaller lyrics
  }
}

the_chords = \chords {
  \set chordChanges = ##t  % display chords +- only when they change
  e1:m | 1 | a:m7 | d | a:m7 | d | e:m | fis2:m h:7 |
  e1:m | 1 | a:m7 | d | a:m7 | d | e:m | 1 |
  \repeat volta 2 {
    g | d:/fis | f | a:7/e | e:7/d | a:/cis | a:m/c |
    \alternative {
      \volta 1 { e2:m/h h:7 | }
      \volta 2 { e2:m/h h:7 | }
    }
  }
  e1:m | 1 |
}

melody = \relative {
  \key g \major
  g'4 g g fis | g2 a4 g | 1 | fis2 e4 fis | g1 | \break
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

verse_one = \lyricmode {
  Vy -- hlí -- žím Tvou tvář bez u -- stá -- ní,
  od sví -- tá -- ní, ce -- lý den.
  Dla -- ně po -- zve -- dám k_To -- bě vzhů -- ru,
  k_Tvé -- mu trů -- nu, ta -- dy jsem.
}

verse_two = \lyricmode {
  Ob -- myj srd -- ce mé od všech hří -- chů, 
  od -- pusť pý -- chu zá -- lud -- nou.
  U -- zdrav lás -- kou svou mo -- je rá -- ny,
  chraň mé zrá -- ní kr -- ví svou.
}

chorus_one = \lyricmode {
  Vy -- hlí -- žím Tvou tvář, hle -- dám, ku -- dy jít,
  slo -- vo Tvé mě chrá -- ní a brá -- ní mi v_blou -- dě -- ní.
}

chorus_two = \lyricmode {
  Vy -- hlí -- žím Tvou tvář, slo -- vo ze Tvých rtů,
  ú -- tě -- chu mi dá -- vá, když vstá -- vám vstříc
  \repeat unfold 3 { \skip 1 }
  příš -- tím dnům.
}

<<
  \the_chords
  \melody
  \addlyrics {
    \set stanza = "1. "
    \verse_one
    \chorus_one
  }
  \addlyrics {
    \set stanza = "2. "
    \verse_two
    \chorus_two
  }
>>