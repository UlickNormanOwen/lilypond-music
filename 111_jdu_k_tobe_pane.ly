\version "2.24.3"
\language "deutsch"
% TODO: figure out page layout for a5
% #(set-default-paper-size "a5")

% "Jdu k Tobe, Pane"
% kopirovane listy 111

\header {
  title = "Jdu k Tobě, Pane"
  tagline = ""  % get rid of default footer
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

% how to deal with chorus?

<<
  \chords {
    g2 d2 | e1:m | h:m7 |
    e2.:m d4 | c1 | d | e:m |
    c2 d | g d | e1:m | h:m7 |
    e2.:m d4 | c1 | d | c |
    g4 d e:m d | c2 e:m | d1 | c |
    g4 d e:m d | c2 e:m | d1 | g2 a:m7 |
    g/b a:m7 | c e:m | d1 |
    c | g2. d4/fis | e2.:m d4 |
    c2 c/d | c1/g | g |
  }
  \relative {
    \key g \major
    \numericTimeSignature
    r4 h8 c d4 a'8 g~ | 
    4 r h,8 h c d |
    d2~ 4 a'8 g~ | \break
    4. g8 g fis fis e |
    e2 r8 g,8 h[ a]~ |
    a2 r4 d |
    h2. r4 | \break
    r1 | 
    r8h h[ c] d4 a'8 g~ |
    4. h,8 h h c d |
    d2 r4 a'8 g~ | \break
    4. 8 8 fis fis e |
    e1 |
    r4 r8 d16 d c'8 h a a |
    h8. g16( 4 2) | \break
    r1 \bar 
    "||" g2~ 4 h8 a |
    r2 a8 a h c |
    2~ 4. h8 | \break
    1 | 
    g2~ 4 c8 h | 
    r2 a8 g fis g~ |
    8 4.~ 2~ | \break
    2 r4. g8 | 
    2~ 4 h8 a |
    r4. a8 a a h c | \break
    4~ 4~ 4. h8 | 
    4 r8 h h a16 a~ 8 g16 g |
    r4. g8 g fis16 fis~ 8 e16 e | \break
    r4 r8 d16 d c'8 h a a~ |
    8 g4.~ 2~ |
    4 r r2 \fine
  }
  \addlyrics {
    \set stanza = "1. "
    Ty jsi Pán a Bůh,
    k_To -- bě při -- chá -- zí můj duch.
    Změň pro -- sím srd -- ce mé, 
    máš tu moc, jsi Král.
    Můj dra -- hý tá -- to, já
    Tvou mi -- lost po -- zná -- vám a vím
    Tvá lá -- ska po -- sta -- čí
    a -- by změ -- ni -- la nás.
    % chorus
    _ _ Můj pa -- ne, 
    drž mě pev -- ně lás -- kou svou.
    Můj pa -- ne, sí -- lu mi dá -- váš.
    A já če -- kám, že ja -- ko o -- rel vzlét -- nu výš,
    jen v_mo -- ci lás -- ky Tvé, jak o -- rel vzlét -- nu výš,
    Du -- chem Tvým dám se vést.
  }
  \addlyrics {
    \set stanza = "2. "
    Ot -- če můj chci být
    tím kdo Te -- be zná a mít
    Tvé lá -- sky pl -- ný stůl,
    pro dru -- hé tu být.
    Chci ko -- nat vů -- li Tvou,
    tak žít na ka -- ždý den s_ví -- rou,
    že Ty mě pro -- mě -- níš,
    to je na -- dě -- je má.
  }
>>