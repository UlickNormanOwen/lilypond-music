\version "2.24.3"
\language "deutsch"
#(set-default-paper-size "a5")

% "Tobe patri chvala"
% kopirovane listy 114

% TODO: 
% - zkontrolovat useky kde delky not nesedi
% - schovat N.C. (no chord) symboly a dodelat akordy

\paper {
  indent = 0.0  % remove default first line indentation
}

\header {
  title = "Tobě patří chvála"
  tagline = ""  % get rid of default footer
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

the_chords = \chords {
  r4 | a1
}

melody = \relative {
  \key a \major
  \repeat segno 2 {
    \repeat volta 2 {
      \partial 4 cis'16 e e cis | 
      e8. cis16^\staccato r4 r cis8 e | e8. cis16 r4 r cis8 e | \break
      e d d cis cis h r8 h16 cis |
      \alternative {
        \volta 1 { d8. cis16 d8 e16 e~ 4 | \break }
        \volta 2 { d8[ cis d e16 e~] 8 e a gis | }
      }
    }
    \repeat volta 2 {
      a4~ 8 gis16 a h a8. gis8 a | \break 
      a4~ 8 gis16 a h a8. gis8 a | fis2 r4 16 gis8. | \break
      \alternative {
        \volta 1 { a gis16 8 fis16 e~ 8 8 a gis | }
        \volta 2 { a8.[ gis16] 8 fis e4 \bar "||" }
      }
    }
  }
  h8 cis | \break
  d8. 16 8 cis8 h4 cis8 d | e e e d cis4. 8 | \break
  fis4 8 8 gis8 8 fis gis | a gis fis e16 fis~ 4 8 gis | \break
  \repeat volta 2 {
    a16 8.~ 4~ 4 fis8 gis | a2~ 4 8 gis |
    \alternative {
      \volta 1 { a2~ 4 fis8 gis | }
      \volta 2 { a2 r2 }
    }
  }
  \fine
}

the_lyrics = \lyricmode {
  \repeat segno 2 {
    \repeat volta 2 {
      To -- bě pa -- tří chvá -- la, čest a slá -- va,
      my zve -- dá -- me svo -- je dla -- ně,
      my vo -- 
      \alternative {
        \volta 1 { lá -- me: Ty jsi Pán! }
        \volta 2 { lá -- me: Ty jsi Pán! Vždyť Ty jsi }
      }
    }
    \repeat volta 2 {
      Pán, ty je -- di -- ný, Ty jsi král,
      Ty jsi to -- li nád -- her -- ný, ce -- lý 
      \alternative {
        \volta 1 { svět se Ti kla -- ní. Vždyť Ty jsi }
        \volta 2 { svět se Ti kla -- ní. }
      }
    }
  }
  Ne -- boť Tvé je krá -- lov -- ství, 
  moc i slá -- va na -- vě -- ky,
  v_Tvém jmé -- nu je sí -- la,
  Ty jsi al -- fa, o -- me -- ga,
  Ty jsi 
  \repeat volta 2 {
    Je -- žíš, Ty jsi Pán, vlád -- ce 
    \alternative {
      \volta 1 { můj, Ty jsi }
      \volta 2 { můj. }
    }
  }
}

<<
  \the_chords
  \melody
  \addlyrics {
    \the_lyrics
    %\chorus
  }
>>