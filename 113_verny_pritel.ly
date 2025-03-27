\version "2.24.3"
\language "deutsch"

#(set-default-paper-size "a5")

\paper {
  indent = 0.0  % remove default first line indentation
}

\header {
  title = "Věrný přítel"
  tagline = ""  % get rid of default footer
}

% TODO: figure out whether the original has errors...
% TODO: fix the G chords - what does '7/4' mean?

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

the_chords = \chords {
  c d:m7 c a:m | g1 | c4 d:m7 c a:m |
  g1 | c4 d:m7 c a:m | g1 |
  c8 d4.:m7 c4 a:m | g1 | f |
  c | f | c |
  a2:m g | c d4:m7 c | d:m7 c2. |
}

melody = \relative {
  \numericTimeSignature
  e'4 f g e |
  d2~ 4. c8 |
  e4 f g8 e4. | \break
  d4 c2 r4 |
  e4 f g8 e4 d8 |
  r1 | \break  % ???
  e8 f4. g4 e |
  d( c2) r4 \bar "||"
  a'1 | \break
  g |
  a |
  g | \break
  a2 g |
  c, f4 e |
  d c2~ \break
  4 r r2 \fine
}

verse_one = \lyricmode{
  Ty jsi pří -- tel můj, jsi blíž než je můj brá -- cha.
  Cí -- tím do -- tek tvůj, se mnou zů -- stá -- váš.
}

verse_two = \lyricmode{
  Na -- dě -- ji teď mám, _ pev -- nou ja -- ko ská -- lu.
  Bez te -- be jsem sám, s_te -- bou lá -- sku cítím.
}

chorus = \lyricmode{
  Pán můj, pán můj, Pá -- n můj, věr -- ný pří -- tel.
}

<<
  \the_chords
  \melody
  \addlyrics {
    \verse_one
    \chorus
  }
  \addlyrics {
    \verse_two
  }
>>