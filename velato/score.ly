on "2.19.64"

\header{
  title = "Hello World"
}

\language "english"

\paper {
  top-margin = 1.5\in
  left-margin = 2.0\in
  right-margin = 2.0\in
}

\score {
  \transpose c c' {
    % H
    <c a>4
    g8(
    e8 f8
    gs8 d8
    g8) |

    % e
    a8
    <g e>4.
    <f cs>4
    c16( cs16
    g8 |

    % l
    a8)
    <g e>8
    <f cs>4
    <c a>4
    g4( |

    % l
    a16 g16
    e16 f8
    cs8.) <c a g>2 |

    % o
    a8( g8 e8)
    f8.
    cs16( cs8 cs8 g8 |

    % ,
    a8 g4
    e8 f8
    e e
    g8) |

    % space
    a8
    <g e>4.
    f8(
    ds d
    g8 |

    % W
    a8 g4
    e8 f8
    a8 gs8
    g8) |

    % o
    a8( g8
    e8 f8
    cs8 cs8) <cs g>4 |

    % r
    a8( g8
    e8 f8
    cs8 cs8 e8. g16 |

    % l
    c16 a16)
    <g e>8
    <f cs>4
    <c a>4
    g4( |

    % d
    a8 g4
    e16 f16
    cs8 c8 c8
    g8 |

    % !
    a16)
    <g e>4
    f16( ds16 ds16)
    <g c>2 |
  }
  \layout {
    indent = 0\cm
  }
  \midi {
    \tempo 4 = 120
  }
}
