\version "2.24.3"
\language "deutsch"

% TODO: figure something out about layout
% #(set-default-paper-size "a5")

% "K Tobe prichazim" (?)
% kopirovane listy 118

\new PianoStaff <<
  \new Staff \relative {
    \key e \major
    % TODO: use repeat or something like that
    r1 | r | r | r | \break
  }
  \new Staff = "lower_staff" { 
    \new Voice = "lower_voice" \relative {
      \clef bass
      \key e \major
      r4 r8 gis16 a h8 e,4 fis8~ |
      4. h,8 gis' fis fis16 e e r16 |
      r4 r8 e16 gis gis4 e8 fis~ |
      4 r r2 | \break
    }
  }
  \new Lyrics \with { alignAboveContext = "lower_staff" } {
    \lyricsto "lower_voice" {
      K_To -- bě při -- chá -- zím,
      když hu -- dba u -- mlk -- ne,
      ztich -- ne pí -- seň má;
    }
  }
>>