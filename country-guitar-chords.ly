\include "predefined-guitar-fretboards.ly"
\version "2.18.2"

\paper {
  indent = 0\mm
}

\header {
  title = "Country Guitar Chords"
  subsubtitle = "Most popular guitar chords used in country music."
}

commonCountryChords = \chordmode {
  g c d:7 e:m
}

\score {
  <<
    \new ChordNames { \transpose g g { \commonCountryChords } }
    \new FretBoards { \transpose g g { \commonCountryChords } }
    \new Staff { \transpose g g { \commonCountryChords } }
  >>
  \layout {
    ragged-last = ##f
    \context {
      \Score
      \once \override Staff.TimeSignature #'stencil = ##f % turn off the time signature
      \remove "Bar_number_engraver"
    }
  }
  \header { piece = "Key of G" }
}

\score {
  <<
    \new ChordNames { \transpose g a { \commonCountryChords } }
    \new FretBoards { \transpose g a { \commonCountryChords } }
    \new Staff { \transpose g a { \commonCountryChords } }
  >>
  \layout {
    ragged-last = ##f
    \context {
      \Score
      \once \override Staff.TimeSignature #'stencil = ##f % turn off the time signature
      \remove "Bar_number_engraver"
    }
  }
  \header { piece = "Key of A" }
}

\score {
  <<
    \new ChordNames { \transpose g d { \commonCountryChords } }
    \new FretBoards { \transpose g d { \commonCountryChords } }
    \new Staff { \transpose g d { \commonCountryChords } }
  >>
  \layout {
    ragged-last = ##f
    \context {
      \Score
      \once \override Staff.TimeSignature #'stencil = ##f % turn off the time signature
      \remove "Bar_number_engraver"
    }
  }
  \header { piece = "Key of D" }
}

\score {
  <<
    \new ChordNames { \transpose g e { \commonCountryChords } }
    \new FretBoards { \transpose g e { \commonCountryChords } }
    \new Staff { \transpose g e { \commonCountryChords } }
  >>
  \layout {
    ragged-last = ##f
    \context {
      \Score
      \once \override Staff.TimeSignature #'stencil = ##f % turn off the time signature
      \remove "Bar_number_engraver"
    }
  }
  \header { piece = "Key of E" }
}

\score {
  <<
    \new ChordNames { \transpose g c { \commonCountryChords } }
    \new FretBoards { \transpose g c { \commonCountryChords } }
    \new Staff { \transpose g c { \commonCountryChords } }
  >>
  \layout {
    ragged-last = ##f
    \context {
      \Score
      \once \override Staff.TimeSignature #'stencil = ##f % turn off the time signature
      \remove "Bar_number_engraver"
    }
  }
  \header { piece = "Key of C" }
}
