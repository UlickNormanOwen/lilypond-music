\version "2.24.3"
\language "deutsch"
#(set-default-paper-size "a5")

% kopirovane listy 120

\paper {
  indent = 0.0  % remove default first line indentation
}

\header {
  title = "Naplň nás, Pane, milostí"
  tagline = ""  % get rid of default footer
}

\layout {
  \context {
    \Score
    \omit BarNumber
    % (JAK TOHLE PŘESNĚ FUNGUJE?)
    \override LyricText.font-size = #-2.3  % smaller lyrics
  }
}

melody = \relative {
  \repeat volta 3 {
    r8 e'8 e[ d] e d e a | g2. r4 | r8 g8 g[ g] a c a g | e2. r4 | \break
    r8 f8 f[ f] f f e d | f2 r2 | r8 f8 f[ f] f g e d | c4.( e8 d2) | \break
    r8 e8 e[ d] e d e a | g2. r4 | r8 g8 g[ g] a c a g | e2. r4 | \break
    r8 f8 f[ f] f g e f | d2 r4. c8 | e2~ e4 r8 e8 | d4 c2 r4 | r1 \bar "||" \break
    r8 f8 f[ f] f16 f8. f8 e~ | e r8 d d e f r4 | r8 g g[ e] g e g a | e2. r4 | \break
    r8 f8 f[ f] f16 f8. f8 e | r4 g8 a e f4. | r8 g8 g[ e] g e g a | a2. r4 | \break
    r8 f8 f[ f] f f f e | r4 d8 d e4 f | r8 g8 g[ e] g e g a | e2. r4 | \break
    r8 f8 f[ f] f f f e |
    \alternative {
      \volta 1,2 { r4 d8 c e4 d | c1 | r1 | }
      \volta 3 { r4 d8 c e4 g | c,1 | r1 \fine }
    }
  }
}

verse_one = \lyricmode {
  Na -- plň nás, Pa -- ne, mi -- los -- tí,
  tou -- ží -- me Tvo -- ji vů -- li znát,
  k_no -- hám Ti slo -- žit sta -- ros -- ti,
  když smí -- me pod Tvým kří -- žem stát.
  Na -- plň nás, Pa -- ne, lás -- kou svou,
  tou lás -- kou, kte -- rá ne -- ní z_nás,
  pak li -- dé o -- či  o -- te -- vřou,
  vždyť Bůh je s_ná -- mi.
}

verse_two = \lyricmode {
  Na -- plň nás, Pa -- ne, mou -- dros -- tí,
  tou -- ží -- me Tvo -- je slo -- vo znát,
  chce -- me Tě chvá -- lit v_ra -- dos -- ti,
  když smí -- me před Tvým trů -- nem stát.
  Na -- plň nás, Pa -- ne, lás -- kou svou,
  tou lás -- kou, kte -- rá ne -- ní z_nás,
  pak li -- dé o -- či  o -- te -- vřou,
  vždyť Bůh je s_ná -- mi.
}

chorus = \lyricmode {
  \repeat volta 3 {
    Na -- plň teď svo -- jí lás -- kou na -- še dla -- ně,
    a snad v_nich rů -- že vy -- kve -- tou.
    Ať je v_nich sva -- té vů -- ně po -- žeh -- na -- ně,
    a s_šíp -- ko -- vím se ne -- ple -- tou.
    Na -- plň nás, Pa -- ne Bo -- že po -- žeh -- ná -- ním
    a vo -- dy ži -- vé dej nám pít,
    ať mů -- žem ja -- ko dě -- ti
    \alternative {
      \volta 1 { za svým Pá -- nem jít. }
      \volta 2 { za svým Pá -- nem jít. }
      \volta 3 { za svým Pá -- nem jít. }
    }
  }
}

<<
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