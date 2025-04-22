\version "2.24.3"
\language "deutsch"
% TODO: figure out page layout for a5
#(set-default-paper-size "a5")

% kopirovane listy 117

\paper {
  indent = 0.0  % remove default first line indentation
}

\header {
  title = "Štít"
  tagline = ""  % get rid of default footer
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

the_chords = \chords {
  \set noChordSymbol = ""  % hide "N.C." symbols
  \set chordChanges = ##t  % display chords +- only when they change
  r1 | d | d | c | c | g | g | d | \break
  d | c | c | g | g | d | \break
  r1 | r | r | c | g | d | \break
  d | c | g | d | d | c | \break
  g | d | d | d | d | c | \break
  c | g | g | d | d | d |
}

melody = \relative {
  \key d \major
  r2. d'4 | a'1 | r2 g8[ fis] e fis | g1 | r2 g8[ fis] e fis |
  g2 d~ | d r4 d4 | a'1 | \break
  r2 g8[ fis] e fis | g1 | r4 r8 g8 g[ fis] e fis | g2 d | 
  r4 h4 d e | d1 | \break
  r1 | r | r2 r4 d4 | c'2. r8 d8 | h4 a8 g4. h4 | a1 | \break
  r2. d,4 | c'2. r8 d8 | h4 a8 g4. h4 | a1 | r2 r4 d,4 | 
  c'2. r8 d8 | \break
  h4 a8 g4. h4 | a1 | r2 r4 d,4 | a'1 | r2 g8[ fis] e fis | 
  g1 | \break
  r2 g8[ fis] e fis | g2 d | r4 h4 d e | d1 | r1 | r \fine
}

verse_one = \lyricmode {
  Můj Bůh je __ _ můj _ štít, je __ _ mou _ pís -- ní. __
  Já vím, On mi od -- po -- ví 
  a mo -- cí své -- ho jmé -- na vy -- svo -- bo -- dí.
}

chorus = \lyricmode {
  Chci žít ve stí -- nu kří -- del Tvých,
  spě -- chám do stí -- nu kří -- del Tvých,
  smím žít ve stí -- nu kří -- del Tvých.
  Teď smím jít v_po -- ko -- ji dál,
  vím, že jsi mi blíz -- ko, ha -- le -- lu -- ja.
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
>>
