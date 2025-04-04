\version "2.24.3"
\language "deutsch"
#(set-default-paper-size "a5")

% "Chces-li viru mit"
% kopirovane listy 112

\paper {
  indent = 0.0  % remove default first line indentation
}

\header {
  title = "Chceš-li víru mít"
  tagline = ""  % get rid of default footer
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

the_chords = \chords {
  \set chordChanges = ##t  % display chords +- only when they change
  c1 | 1 | 1 | 1 | 
  e:m7 | a:m7 | d:m7 | g | 
  c | 1 | 1 | 1 |
  b | c2 a:m7 | d1:m7 | g |
  \repeat volta 2 {
    c | d:m7 | e:m/c | f |
    g2 f:/g | e:m/c a:m7 | 
    \alternative {
      \volta 1 { d1:m7 | g | }
      \volta 2 { d2:m7 g | c1 | }
    }
  }
}

melody = \relative {
  r4 e'8 f g4 r8 e8 | d4. e8 c2 | 
  r4 e8 f g e4. | d4. a'8 g2 | \break
  r4 e8 f g h4. | c4. h8 a2 |
  r4 d,8 e f4. e8 | d1 | \break
  r4 e8 f g4. e8 | d4. e8 c2 |
  r4 e8 f g4. e8 | c1 | \break
  r4 c'8 c b4. as8 | g4. e8 c2 |
  r4 d8 e f a4. | g1 | \break
  \repeat volta 2 {
    r4 c8 h c4 e,8 f~ | 1 |
    r4 c'8 h c4 g8 a~ | 1 | \break
    r4 h8 h h4 a8 g~ | 4 c8 c~ 2 |
    \alternative {
      \volta 1 { r4 d,8 e f4 a8 g~ | 1 \break }
      \volta 2 { r4 d8 e d4 c8 c~ | 1 }
    }
  } \fine
}

verse_one = \lyricmode {
  Kaž -- dý den mne mí -- je -- jí
  o -- či mno -- hých ří -- ka -- jí
  že jsou li -- dé zou -- fa -- lí,
  vel -- mi strá -- da -- jí.
  S_bo -- les -- tí a prázd -- no -- tou,
  bě -- ží stá -- le dál,
  je -- jich tou -- hu skrý -- va -- nou
  vi -- dí Je -- žíš Král.
}

verse_two = \lyricmode {
  Svě -- tlo má -- me dá -- le nést
  ru -- kou Pá -- na dát se vést,
  li -- dem pří -- klad lás -- ky dát
  a_Bo -- ha stá -- le více_znát.
  Kaž -- dá chví -- le sdí -- le -- ní
  no -- vou sí -- lu dá,
  poz -- ve -- dá i v_trá -- pe -- ní,
  srd -- ce ot -- ví -- rá.
}

chorus = \lyricmode {
  Chceš- li ví -- ru mít,
  mu -- síš s_Pá -- nem žít,
  Je -- ho jmé -- no váž -- ně brát,
  \alternative {
      \volta 1 { ži -- vot svůj mu dát. }
      \volta 2 { ži -- vot svůj mu dát. }
  }
  ži -- vot svůj mu dát.
}

<<
  \the_chords
  \melody
  \addlyrics {
    \set stanza = "1. "
    \verse_one
    \set stanza = "Ref. "
    \chorus
  }
  \addlyrics {
    \set stanza = "2. "
    \verse_two
  }
>>