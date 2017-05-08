\include "predefined-guitar-fretboards.ly"
\version "2.18.2"

\paper {
  indent = 0\mm
}

\header {
  title = "Country Guitar Chords"
  subsubtitle = "Most popular guitar chords used in country music."
}

commonCountryChordProgressionInG = \chordmode {
  g c d:7 e:m
}

commonCountryChordProgressionInKey = #(define-music-function
                                       (parser location key)
                                       (ly:pitch?)
                                       #{
                                       \transpose g #key { \commonCountryChordProgressionInG }
                                       #})

\layout {
  ragged-last = ##f
  \context {
    \Score
    \once \override Staff.TimeSignature #'stencil = ##f % turn off the time signature
    \remove "Bar_number_engraver"
  }
}

\score {
  <<
    \new ChordNames { \commonCountryChordProgressionInKey g }
    \new FretBoards { \commonCountryChordProgressionInKey g }
    \new Staff { \commonCountryChordProgressionInKey g }
  >>
  \header { piece = "Key of G" }
}

\score {
  <<
    \new ChordNames { \commonCountryChordProgressionInKey a }
    \new FretBoards { \commonCountryChordProgressionInKey a }
    \new Staff { \commonCountryChordProgressionInKey a }
  >>
  \header { piece = "Key of A" }
}

\score {
  <<
    \new ChordNames { \commonCountryChordProgressionInKey d }
    \new FretBoards { \commonCountryChordProgressionInKey d }
    \new Staff { \commonCountryChordProgressionInKey d }
  >>
  \header { piece = "Key of D" }
}

\score {
  <<
    \new ChordNames { \commonCountryChordProgressionInKey e }
    \new FretBoards { \commonCountryChordProgressionInKey e }
    \new Staff { \commonCountryChordProgressionInKey e }
  >>
  \header { piece = "Key of E" }
}

\score {
  <<
    \new ChordNames { \commonCountryChordProgressionInKey c }
    \new FretBoards { \commonCountryChordProgressionInKey c }
    \new Staff { \commonCountryChordProgressionInKey c }
  >>
  \header { piece = "Key of C" }
}
