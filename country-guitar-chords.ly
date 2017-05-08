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

commonCountryChordProgressionScoreInKey = #(define-music-function
                                            (parser location key)
                                            (ly:pitch?)
                                            #{
                                            <<
                                              \new ChordNames { \commonCountryChordProgressionInKey #key }
                                              \new FretBoards { \commonCountryChordProgressionInKey #key }
                                              \new Staff { \commonCountryChordProgressionInKey #key }
                                            >>
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
  \header { piece = "Key of G" }
  \commonCountryChordProgressionScoreInKey g
}

\score {
  \header { piece = "Key of A" }
  \commonCountryChordProgressionScoreInKey a
}

\score {
  \header { piece = "Key of D" }
  \commonCountryChordProgressionScoreInKey d
}

\score {
  \header { piece = "Key of E" }
  \commonCountryChordProgressionScoreInKey e
}

\score {
  \header { piece = "Key of C" }
  \commonCountryChordProgressionScoreInKey c
}
