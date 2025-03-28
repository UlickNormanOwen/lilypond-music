\version "2.24.3"
\language "deutsch"

% TODO: figure something out about layout
% #(set-default-paper-size "a5")

% (?) "K Tobe prichazim"
% kopirovane listy 118

% TODO: finish the chorus, check correctness

\paper {
  indent = 0.0  % remove default first line indentation
}

\layout {
  \context {
    \Score
    \override LyricText.font-size = #-0.7  % smaller lyrics
  }
}

\header {
  title = "(?) K Tobě přicházím"
  tagline = ""  % get rid of default footer
}

the_chords = \chords {
  e1 | h/dis | a2/fis e4/gis a | h2:sus4 h |
  e1 | h/dis | a2/fis e4/gis a | h2:sus4 h |
  a/fis e/gis | h1 | a2/fis e/gis | h1 |
  a2/fis e/gis | h1 | a2/fis e/gis | h1 |
  e | h/dis | a/fis | a/h | e
}

upper_voice = \relative {
  \key e \major
  % TODO: use repeat or something like that
  r1 | r | r | r | \break
  r1 | r | r | r | \break
  r1 | r | r | r | \break
  r1 | r | r | r | \section \break
  \repeat volta 2 {
    r8 h'8 h h h e, e cis'~ |
    8 h4 gis fis8 r8 e16 fis |
    <e gis>8.[ <fis a>] <e gis>8~ q4. h8 |
    <e gis>8.[ <fis a>] <e gis>4 <dis fis> \tieDashed e8~ |
  }
  2 r2 \fine
}

lower_voice = \relative {
  \clef bass
  \key e \major
  r4 r8 gis16 a h8 e,4 fis8~ |
  4. h,8 gis' fis fis16 e e r16 |
  r4 r8 e16 gis gis4 e8 fis~ |
  4 r r2 | \break
  r4 r8 gis16 a h8 e,4 fis8~ |
  4. h,8 gis'16 fis8. 16 e e r16 |
  r4 r8 gis16 h h4 e,8 fis~ |
  4 r4 r2 | \break
  r8 a8 a a gis fis e fis~ | 
  4 r8 h,8 gis' fis16 8 e8. | 
  r8 h'8 h h h e, gis fis~ |
  4 r4 r2 | \break
  r8 a8 a a gis fis e fis~ | 
  4 r8 h,8 gis' fis16 8 e8. | 
  r8 h'8 h h h e, gis fis~ |
  4 r4 r2 \section \break
  \repeat volta 2 {
    r8 h8 h h h e, e cis'~ |
    8 h4 gis fis8 r8 e16 fis |
    <gis h>8. <a cis> <gis h>8~ q4. h,8 |
    <gis' h>8.[ <a cis>] <gis h>4 <fis a> \tieDashed <e gis~>8 |
  }
  q2 r2 \fine
}

first_verse = \lyricmode {
  K_To -- bě při -- chá -- zím,
  když hu -- dba u -- mlk -- ne,
  ztich -- ne pí -- seň má;
  slo -- va po -- ztrá -- cím, 
  vše ko -- lem za -- nik -- ne,
  jsem jen Ty a já.
  Co mo -- hu, Bo -- že, Ti dát?
  Vždyť vše -- chno je Tvé!
  Ves -- mí -- ru Král jsi a Pán!
  Chtěl bych Tě víc, Pa -- ne, znát
  z_ce -- lé -- ho srd -- ce,
  buď, Bo -- že, o -- sla -- vo -- ván!
}

second_verse = \lyricmode {
  K_To -- bě při -- chá -- zím,
  a ti -- cho o -- vlád -- lo
  ze -- mi, ves -- mír sám.
  V_sl -- zách ne -- vi -- dím,
  všech -- no se pro -- pad -- lo,
  jen se o -- mlou -- vám...
  To -- lik bych ji -- ný chtěl být
  a všech -- no Ti dát,
  srd -- ce své pře -- vrá -- ce -- né!
  Jak Tvo -- je dí -- tě vždy žít,
  čest chvá -- lu vzdá -- vat,
  dě -- ko -- vat mi -- lo -- sti Tvé!
}

chorus_first_part = \lyricmode {
  Z_ce -- lé -- ho srd -- ce Ti chvá -- lu vzdá -- vám,
  ví -- ce ne -- u -- mím, a ne -- spla -- tím svůj dluh.
}

chorus_second_part = \lyricmode {
  Po -- kor -- ně mi -- lost -- Tvou o -- če -- ká -- vám, 
  Ty jsi Lás -- ka sám a jmé -- no Tvé je Bůh.
}

\new PianoStaff <<
  \the_chords
  \new Staff \upper_voice
  \new Staff = "lower_staff" { 
    \new Voice = "lower_voice" \lower_voice
  }
  \new Lyrics = "first_lyrics_line" \with { alignAboveContext = "lower_staff" } {
    \lyricsto "lower_voice" {
      \first_verse
      <<
        \chorus_first_part
        \new Lyrics \with { alignBelowContext = "first_lyrics_line" } {
          \set associatedVoice = "lower_voice" 
          \chorus_second_part
        }
      >>
    }
  }
  \new Lyrics \with { alignBelowContext = "first_lyrics_line" } {
    \lyricsto "lower_voice" \second_verse
  }
>>