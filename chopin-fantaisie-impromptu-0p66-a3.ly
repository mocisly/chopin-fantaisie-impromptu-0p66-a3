\version "2.26.0"
% Source: supplied MusicXML and matching five-page PDF, MuseScore 3.6.2.
% All 138 source measures and 3152 note/rest elements retained.
% Existing same-pitch/source-time notes anchor 24 cross-voice slurs.
% Source controller streams are explicit and preserve exact rational moments.
% Visibility follows the supplied PDF; hidden playback directions remain events.
\pointAndClickOff



%% additional definitions required by the score:
% For cross-staff arpeggios.
arpeggioXX =
  \once \set PianoStaff.connectArpeggios = ##t
arpeggioArrowUpXX =
  \once \override PianoStaff.Arpeggio.arpeggio-direction = #UP
arpeggioArrowDownXX =
  \once \override PianoStaff.Arpeggio.arpeggio-direction = #DOWN
arpeggioBracketXX =
  \once \override PianoStaff.Arpeggio.stencil =
    #ly:chord-bracket::print

hideNote =
  \tweak Dots.transparent ##t
  \tweak NoteHead.transparent ##t
  \tweak NoteHead.no-ledgers ##t
  \tweak Stem.transparent ##t
  \tweak Accidental.transparent ##t
  \tweak Rest.transparent ##t
  \tweak TabNoteHead.transparent ##t \etc

% Eight original duplicate heads in XML 13/91 are hidden, but their
% downward stems, double beams and phrase slurs are visible in the source PDF.
hideDuplicateHead =
  \tweak Dots.transparent ##t
  \tweak NoteHead.transparent ##t
  \tweak NoteHead.no-ledgers ##t
  \tweak Accidental.transparent ##t \etc

D = \tweak Stem.direction #DOWN \etc
U = \tweak Stem.direction #UP \etc


\header {
  title = \markup \override #'(font-name . "Times New Roman, Liberation Serif, C059")
    \center-column {
      \abs-fontsize #24 "Fantaisie-Impromptu in C♯ Minor"
    }
  subtitle = \markup \override #'(font-name . "Times New Roman, Liberation Serif, C059")
    \abs-fontsize #14 "Op. posth. 66"
  composer = \markup \override #'(font-name . "Times New Roman, Liberation Serif, C059")
    \abs-fontsize #11.5 "Frédéric François Chopin"
  composerDates = \markup \override #'(font-name . "Times New Roman, Liberation Serif, C059")
    \abs-fontsize #11.5 "(1810 – 1849)"
  pdftitle = "Fantaisie-Impromptu in C-sharp minor, Op. posth. 66"
  midititle = "Fantaisie-Impromptu in C-sharp minor, Op. posth. 66"
  tagline = ##f
}
#(set-global-staff-size 17)
#(ly:set-option 'midi-extension "mid")
\paper {
  #(set-paper-size "a3")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 15\mm
  indent = 12\mm
  short-indent = 2.4\mm
  ragged-last = ##f
  ragged-last-bottom = ##f
  print-first-page-number = ##f
  bookTitleMarkup = \markup \column {
    \fill-line { \fromproperty #'header:title }
    \vspace #0.8
    \overlay {
      \fill-line { \fromproperty #'header:subtitle }
      \fill-line { "" \fromproperty #'header:composer }
    }
    \vspace #0.7
    \fill-line { "" \fromproperty #'header:composerDates }
  }
  oddHeaderMarkup = ##f
  evenHeaderMarkup = ##f
  oddFooterMarkup = \markup \fill-line { "" \if \should-print-page-number \abs-fontsize #9 \fromproperty #'page:page-number-string }
  evenFooterMarkup = \markup \fill-line { \if \should-print-page-number \abs-fontsize #9 \fromproperty #'page:page-number-string "" }
  markup-system-spacing = #'((basic-distance . 8) (minimum-distance . 6) (padding . 2) (stretchability . 0))
  top-system-spacing = #'((basic-distance . 6) (minimum-distance . 4) (padding . 1))
  system-system-spacing = #'((basic-distance . 16) (minimum-distance . 10) (padding . 2) (stretchability . 20))
}
\layout {
  \context { \Staff
    printKeyCancellation = ##f
    pedalSustainStyle = #'text
    \override SustainPedalLineSpanner.staff-padding = #2
    \override SustainPedal.extra-offset = #'(0 . -1.8)
    \consists "Span_arpeggio_engraver"
  }
  \context { \Score
    autoBeaming = ##f
  }
  \context { \PianoStaff
    \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 12) (minimum-distance . 10) (padding . 2) (stretchability . 0))
  }
}

PartPOneVoiceOne = {
  
  % XML measure 1
\clef "treble" \time 2/2 \key e \major \tweak direction #UP
  \tempo \markup \normal-text \concat { \bold "Allegro agitato " \normal-text
    \smaller { ( \char ##x200A \fontsize #-2 \rhythm { 2 } \char ##x2009 = \char
      ##x2009 84 ) } } 4 = 168 \oneVoice R1 | % 1
  
  % XML measure 2
| % 1
  R1 | % 2
  
  % XML measure 3
| % 2
  R1 | % 3
  
  % XML measure 4
| % 3
  R1 | % 4
  
  % XML measure 5
| % 4
  r16 \U gis'16 ^( [ \U a'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16 \U
  e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16 ] \D bis'16 [ \D cis''16
  \D e''16 \D gis''16 ) ]
  % XML measure 6
\break | % 5
  r16 \U gis'16 ^( [ \U a'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16 \U
  e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16 ] \D bis'16 [ \D cis''16
  \D e''16 \D gis''16 ) ]
  % XML measure 7
| % 6
  r16 \D a'16 ^( [ \D cis''16 \D dis''16 ] \D fis''16 [ \D a''16 \D cis'''16 \D
  dis'''16 ] \ottava #1 \D b'''16 [ \D a'''16 \D gis'''16 \D fis'''16 ] \D e'''16
  [ \D dis'''16 \D fis'''16 \D cis'''16 ) ] \ottava #0
  % XML measure 8
| % 7
  \D bis''16 ^( [ \D dis'''16 \D a''16 \D gis''16 ] \D fis''16 [ \D a''16 \D e''16
  \D dis''16 ] \D fis''16 [ \D cis''16 \D bis'!16 \D dis''16 ] \U a'16 [ \U gis'16
  \U b'16 \U a'16 ~ ) ]
  % XML measure 9
\break | % 8
  \U a'16 [ \U gis'16 ^( \U a'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16
  \U e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16 ] \D bis'16 [ \D
  cis''16 \D e''16 \D gis''16 ) ]
  % XML measure 10
| % 9

  \barNumberCheck #10
  r16 \U gis'16 ^( [ \U ais'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16 \U
  e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16 ] \D bis'16 [ \D cis''16
  \D e''16 \D gis''16 ) ]
  % XML measure 11
| % 10
  \D dis''16 ^( [ _\markup \italic "cresc." \D e''16 \D dis''16 \D cisis''16 ]
  \D dis''16 [ \D b''16 \D ais''16 \D gis''16 ] \D fisis''16 ) [ \D e'''16 ^( \D
  dis'''16 \D \tweak Accidental.restore-first ##t cis'''!16 ] \D b''16 [ \D ais''16 \D gis''16 \D fisis''16 ) ]
  % XML measure 12
\break | % 11
  \D ais''16 ^( -\tweak stencil ##f ^^ [ _\markup \italic "dim." \D gis''16 \D b''16 \D cisis''16 )
  ] \D e''16 ^( -\tweak stencil ##f ^^ [ \D dis''16 \D gis''16 \D ais'!16 ) ] \U cis''16 _( -\tweak stencil ##f ^^ [ \U
  b'16 \U dis''16 \U fisis'16 ) ] \U ais'16 _( -\tweak stencil ##f ^^ [ \U gis'16 \U fisis'16 \U
  gis'16 ) ]
  % XML measure 13
| % 12
  \U gis'4 ^> \U fis'4 ^> \U eis'4 ^> \U fis'4 ^>
  % XML measure 14
| % 13
  \U cis'16 _( _> [ \U cis''16 \U fis'16 \U a'16 ) ] \U dis'16 _( _> [ \U dis''16
  \U fis'16 \U a'16 ) ] \U e'16 _( _> [ \U e''16 \U gis'16 \U b'16 ) ] \D gis'16
  ^( ^> [ \D gis''16 \D b'16 \D e''16 ) ]
  % XML measure 15
\break | % 14
  \D gis'16 ^( ^> [ \D gis''16 \D bis'16 \D cis''16 ) ] \D fis'16 ^( ^> [ \D
  fis''16 \D bis'16 \D cis''16 ) ] \D eis'16 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) ^( ^> [ \D eis''!16 \D bis'16 \D
  cis''16 ) ] \D fis'16 ^( ^> [ \D fis''16 \D bis'16 \D cis''16 ) ]
  % XML measure 16
| % 15
  \D eis'16 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) ^( ^> [ \D eis''!16 \D b'!16 \D dis''16 ) ] \D fis'16 ^( ^> [ \D
  fis''16 \D b'16 \D dis''16 ) ] \D a'16 ^( ^> [ \D a''16 \D b'16 \D e''16 ) ]
  \D gis'16 ^( ^> [ \D gis''16 \D b'16 \D e''16 ) ]
  % XML measure 17
| % 16
  \hideNote r16 \voiceOne \tweak TupletBracket.stencil ##f \tweak
  TupletNumber.stencil ##f \tuplet 4/3 {
    \U gis''4 ^> }
  \hideNote r16 \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 4/3 {
    \U fis''4 ^> }
  \hideNote r16 \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 4/3 {
    \U eis''4 ^> }
  \hideNote r16 \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 4/3 {
    \U fis''4 ^> }
  
  % XML measure 18
\break | % 17
  \oneVoice \U cis'16 _( [ _\markup \italic "cresc." \U cis''16 ^> \U fis'16 \U
  a'16 ) ] \U dis'16 _( [ \U dis''16 ^> \U fis'16 \U a'16 ) ] \D e'16 ^( [ \D
  e''16 ^> \D gis'16 \D b'16 ) ] \D gis'16 ^( [ \D gis''16 ^> \D b'16 \D e''16 )
  ]
  % XML measure 19
| % 18
  \D gis'16 ^( [ \D gis''16 ^> \D bis'16 \D cis''16 ) ] \D fis'16 ^( [ \D fis''16
  ^> \D bis'16 \D cis''16 ) ] \D dis''16 ^( [ \D dis'''16 ^> \D fis''16 \D a''16
  ) ] \D cis''16 ^( [ \D cis'''16 ^> \D fis''16 \D a''16 ) ]
  % XML measure 20
| % 19

  \barNumberCheck #20
  \D cis''16 ^( [ \D cis'''16 ^> \D dis''16 \D fis''16 ) ] \D bis'16 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) ^( [ \D
  bis''!16 ^> \D dis''16 \D fis''16 ) ] \D bis'16 ^( [ _\markup \italic "dim."
  \D bis''16 ^> \D dis''16 \D fis''16 ) ] \D bis'16 ^( [ \D bis''16 ^> \D dis''16
  \D fis''16 ) ]
  % XML measure 21
\break | % 20
  \D c''16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D c'''!16 ^> \D dis''16 \D fis''16 ) ] \D b'!16 \shape #'((0 . 0) (0 . 2.8) (0 . 2.8) (0 . 0)) ^( [ \D b''!16
  ^> \D dis''16 \D fis''16 ) ] \D b'16 ^( [ \D b''16 ^> \D dis''16 \D fis''16 )
  ] \D ais'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D ais''!16 ^> \D dis''16 \D fis''16 ) ]
  % XML measure 22
| % 21
  \D ais'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D ais''!16 ^> \D dis''16 \D fis''16 ) ] \D a'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D a''!16
  ^> \D dis''16 \D fis''16 ) ] \D a'16 ^( [ \D a''16 ^> \D dis''16 \D fis''16 )
  ] \D a'16 ^( [ \D a''16 ^> \D dis''16 \D fis''16 ) ]
  % XML measure 23
| % 22
  \D c''16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D c'''!16 ^> \D dis''!16 \D fis''16 ) ] \D b'16 ^( [ \D b''16
  ^> \D dis''16 \D fis''16 ) ] \D b'16 ^( [ \D b''16 ^> \D dis''16 \D fis''16 )
  ] \D ais'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D ais''!16 ^> \D dis''16 \D fis''16 ) ]
  % XML measure 24
| % 23
  \D ais'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D ais''!16 ^> \D dis''16 \D fis''16 ) ] \D a'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D a''!16
  ^> \D dis''16 \D fis''16 ) ] \D a'16 ^( [ ^\markup \italic "riten." \D a''16
  ^> \D dis''16 \D fis''16 ) ] \D gis'16 ^( [ \D gis''16 ^> \D dis''16 \D fis''16
  ) ]
  % XML measure 25
\break | % 24
  r16 ^\markup \italic "a tempo" \U gis'16 ^( [ \U a'16 \U gis'16 ] \U fisis'16
  [ \U gis'16 \U cis''16 \U e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16
  ] \D bis'16 [ \D cis''16 \D e''16 \D gis''16 ) ]
  % XML measure 26
| % 25
  r16 \U gis'16 ^( [ \U a'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16 \U
  e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16 ] \D bis'16 [ \D cis''16
  \D e''16 \D gis''16 ) ]
  % XML measure 27
| % 26
  r16 \D a'16 ^( [ \D cis''16 \D dis''16 ] \D fis''16 [ \D a''16 \D cis'''16 \D
  dis'''16 ] \ottava #1 \D b'''16 [ \D a'''16 \D gis'''16 \D fis'''16 ] \D e'''16
  [ \D dis'''16 \D fis'''16 \D cis'''16 ) ] \ottava #0
  % XML measure 28
\pageBreak | % 27
  \D bis''16 ^( [ \D dis'''16 \D a''16 \D gis''16 ] \D fis''16 [ \D a''16 \D e''16
  \D dis''16 ] \D fis''16 [ \D cis''16 \D bis'!16 \D dis''16 ] \U a'16 [ \U gis'16
  \U b'16 \U a'16 ~ ) ]
  % XML measure 29
| % 28
  \U a'16 [ \U gis'16 ^( \U a'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16
  \U e''16 ] \D dis''16 [ _\markup \italic "cresc." \D cis''16 \D dis''16 \D
  cis''16 ] \D bis'16 [ \D cis''16 \D e''16 \D gis''16 ) ]
  % XML measure 30
| % 29

  \barNumberCheck #30
  \D e''16 ^( [ \D dis''16 \D e''16 \D dis''16 ] \D cisis''16 [ \D dis''16 \D
  fis''16 \D a''16 ) ] \D fis''16 ^( [ \D eis''16 \D fis''16 \D eis''16 ] \D
  disis''16 [ \D eis''16 \D gis''16 \D \tweak Accidental.restore-first ##t cis'''!16 ) ]
  % XML measure 31
\break | % 30
  r16 \D cis''16 \shape #'((0 . 0) (0 . 2.6) (0 . 2.6) (0 . 0)) ^( [ \D d''16 \D cis''16 ] \D bis'16 [ \D cis''16 \D fis''16 \D
  a''16 ] \D fis''16 [ \D eis''16 \D fis''16 \D eis''16 ] \D disis''16 [ \D
  eis''16 \D gis''16 \D cis'''16 ) ]
  % XML measure 32
| % 31
  \D gis''16 ^( [ _\markup \italic "sempre cresc." \D fis''16 \D gis''16 \D
  fis''16 ] \D eis''16 [ \D fis''16 \D a''16 \D cis'''16 ) ] \D a''16 ^( [ \D
  gis''16 \D a''16 \D gis''16 ] \D fisis''16 [ \D gis''16 \D bis''16 \D dis'''16
  ) ]
  % XML measure 33
| % 32
  \D gis''16 ^( [ \D a''16 \D gis''16 \D fisis''16 ] \D gis''16 ) [ \D e'''16 \shape #'((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0)) ^(
  ^> \D dis'''16 \D d'''16 ] \D cis'''16 [ \D c'''16 \D b''16 \D ais''16 ] \D
  a''16 [ \D gis''16 \D g''16 \D fis''16 ) ]
  % XML measure 34
\break | % 33
  \D e''16 ^( [ \D fis''16 \D e''16 \D dis''16 ] \D e''16 ) [ \D e'''16 ^( ^> \D
  dis'''16 \D d'''16 ] \D cis'''16 [ \D c'''16 \D b''16 \D ais''16 ] \D a''16 [
  \D gis''16 \D g''16 \D fis''16 ]
  % XML measure 35
| % 34
  \D gis''!16 ) r16 \D gis'''16 \shape #'(((0 . 0) (0 . 0) (0 . 0.4) (0 . 0.4)) ((0 . 0.65) (0 . 0.65) (0 . 0.65) (0 . 0.65))) ^( ^> [ \D g'''16 ] \D fis'''16 [ \D eis'''16 \D
  e'''16 \D dis'''16 ] \D d'''16 [ \D cis'''16 \D c'''16 \D b''16 ] \D ais''16 [
  \D a''16 \D gis''!16 \D g''16 ]
  % XML measure 36
| % 35
  \D fis''16 [ \D eis''16 \D e''16 \D dis''16 ] \D d''16 [ \D cis''16 \D c''16
  \D b'16 ] \U ais'16 [ \U a'16 \U gis'16 \U g'16 ] \U fis'16 [ \U e'!16 \U dis'!16
  \U cis'!16 ]
  % XML measure 37
\break | % 36
  \U gis8 ) _! r8 \ottava #1 \D a'''16 ^( ^> [ \D gis'''16 \D e''''16 \D e'''16
  ) ] \D fis'''16 ^( ^> [ \D e'''16 \D cis''''16 \D cis'''16 ) ] \D dis'''16 ^(
  ^> [ \D cis'''16 \D gis'''16 \D gis''16 ) ] \ottava #0
  % XML measure 38
| % 37
  \D a''16 ^( ^> [ \D gis''16 \D e'''16 \D e''16 ) ] \D fis''16 ^( ^> [ \D e''16
  \D cis'''16 \D cis''16 ) ] \D dis''16 ^( ^> [ \D cis''16 \D gis''16 \D gis'16
  ) ] \D a'16 ^( ^> [ \D gis'16 \D e''16 \D e'16 ) ]
  % XML measure 39
| % 38
  \U fis'16 _( _> [ \U e'16 \U cis''16 \U cis'16 ) ] \U dis'16 _( _> [ \U cis'16
  \U gis'16 \U gis16 ) ] \U dis'16 _( _> [ ^\markup \italic "riten." \U cis'16
  \U gis'16 \U gis16 ) ] \U dis'16 _( _> [ \U cis'16 \U a'16 \U a16 ) ]
  % XML measure 40
\break | % 39

  \barNumberCheck #40
  \U dis'16 _( _> [ \U cis'16 \U gis'16 \U gis16 ) ] \U dis'16 _( _> [ \U cis'16
  \U fisis'16 \U fisis!16 ) ] \U dis'16 _( _> [ \U cis'16 \U gis'16 \U gis16 ) ]
  \U dis'16 _( _> [ \U bis16 \U gis'16 \U gis16 ) ] \bar "||" % 40
  
  % XML measure 41
| % 40
  \key des \major <>^\markup \bold Largo <>_\markup \italic pesante R1 | % 41
  
  % XML measure 42
| % 41
  <>_\markup \italic "poco dim." R1 \bar "||" % 42
  
  % XML measure 43
\break | % 42
  \time 4/4 \U as'2 ^( ^\markup \bold "Moderato cantabile" _\markup \italic
  "sotto voce" \D bes'8 ^\trill [ \D as'8 \D des''8 \D es''8 ]
  % XML measure 44
| % 43
  \D f''2 ) \D as''2 ^( ^>
  % XML measure 45
| % 44
  \D ges''4 \D f''4 \D es''4 \D f''8. ^> [ \D des''16 ]
  % XML measure 46
| % 45
  \U as'2 ) \D bes'2 ~ ^( ^>
  % XML measure 47
\break | % 46
  \D bes'2 \D ces''8 ^\trill [ ^\markup \italic "♭" \D bes'8 \D es''8 \D f''8 )
  ]
  % XML measure 48
| % 47
  \D ges''4 ^( \D f''4 \D es''4 \D f''4 )
  % XML measure 49
| % 48
  \D des''2 \shape #'((0 . 0) (0 . 3) (0 . 3) (0 . 0)) ^( \D f''4. -\tweak stencil ##f -> \D es''8
  % XML measure 50
| % 49

  \barNumberCheck #50
  \after 2 ^\markup \italic "riten." es''1 ) ^> ^\markup \italic "ten."
  % XML measure 51
\break | % 50
  \U as'2 ^( ^\markup \italic "a tempo" \D bes'8 ^\trill [ \D as'8 \D des''8 \D
  es''8 ]
  % XML measure 52
| % 51
  \D f''2 ) \D as''2 \shape #'((0 . 0) (0 . 3) (0 . 3) (0 . 0)) ^( ^>
  % XML measure 53
| % 52
  \D ges''4 \D f''4 \D es''4 \D f''8. ^> [ \D des''16 ]
  % XML measure 54
| % 53
  \U as'2 ) \D bes'2 ~ ^( ^>
  % XML measure 55
\pageBreak | % 54
  \D bes'2 \D ces''8 ^\trill [ ^\markup \italic "♭" \D bes'8 \D es''8 \D f''8 )
  ]
  % XML measure 56
| % 55
  \D ges''4 ^( \D f''4 \D es''4 \D f''4
  % XML measure 57
| % 56
  \D des''4. ) \U g'32 ^( [ \U as'32 \U bes'32 \U as'32 ] \D f''4. -\tweak stencil ##f -> \D es''8 )
  % XML measure 58
| % 57
  \D es''2 ^( ^> \D des''4 ) r8 \D as''8 \shape #'(((0 . 0) (0 . 0) (0 . 0) (0 . 0)) ((0 . 0.65) (0 . 0.65) (0 . 0.65) (0 . 0.65))) ^(
  % XML measure 59
\break | % 58
  \U as'2 ) -\tweak stencil ##f -> _\markup \dynamic "sf" \D bes'8. ^( ^\trill [ \D a'16 \D
  bes'8. \D c''16 ]
  % XML measure 60
| % 59

  \barNumberCheck #60
  \U as'!8 ) r8 \D c'''4 ~ ^( -\tweak stencil ##f -> _\markup \dynamic "sf" \tweak
  TupletBracket.stencil ##f \tuplet 7/4 {
    \D c'''8*959/960 [ \D bes''8*959/960 \D as''8*959/960 \D fes''8*959/960 \D
    des''8*959/960 \D bes'8.*721/720 ) \D as''16*161/160 ^( ] }
  
  % XML measure 61
| % 60
  \U es'2 ) _> \slashedGrace { \U c''8 _\markup \italic "dim." } \D bes'8. ^( [
  \D a'16 \D bes'8. \D es''16 ]
  % XML measure 62
| % 61
  \U as'!4 ) r4 \D bes'4 ^( \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \D des''8 [ \D c''8 \D bes'8 ) ] }
  
  % XML measure 63
\break | % 62
  \U as'2 ^( \D bes'8 ^\trill [ \D as'8 \D des''8 \D es''8 ]
  % XML measure 64
| % 63
  \D f''2 ) \D as''2 \shape #'((0 . 0) (0 . 3) (0 . 3) (0 . 0)) ^( ^>
  % XML measure 65
| % 64
  \D ges''4 \D f''4 \D es''4 \D f''8 ^> [ \D des''8 ]
  % XML measure 66
| % 65
  \U as'2 ) \D bes'2 ~ ^( ^> _\markup \dynamic "rf"
  % XML measure 67
\break | % 66
  \D bes'2 \D ces''8 ^\trill [ ^\markup \italic "♭" \D bes'8 \D es''8 \D f''8 )
  ]
  % XML measure 68
| % 67
  \D ges''4 ^( \D f''4 \D es''4 \D f''4
  % XML measure 69
| % 68
  \D des''4. ) \U g'32 ^( [ \U as'32 \U bes'32 \U as'32 ] \D f''4. -\tweak stencil ##f -> \D es''8 )
  % XML measure 70
| % 69

  \barNumberCheck #70
  \D es''2 ^( ^> \D des''4 ) r8 \D as''8 \shape #'(((0 . 0) (0 . 0) (0 . 0) (0 . 0)) ((0 . 0.65) (0 . 0.65) (0 . 0.65) (0 . 0.65))) ^(
  % XML measure 71
\break | % 70
  \U as'2 ) -\tweak stencil ##f -> _\markup \dynamic "sf" \D bes'8. ^( ^\trill [ \D a'16 \D
  bes'8. \D c''16 ]
  % XML measure 72
| % 71
  \U as'!8 ) r8 \D c'''4 ~ \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( -\tweak stencil ##f -> _\markup \dynamic "sf" \tweak
  TupletBracket.stencil ##f \tuplet 7/4 {
    \D c'''8*959/960 [ \D bes''8*959/960 \D as''8*959/960 \D fes''8*959/960 \D
    des''8*959/960 \D bes'8.*721/720 ) \D as''16*161/160 ^( ] }
  
  % XML measure 73
| % 72
  \U es'2 ) _> \slashedGrace { \U c''8 _\markup \italic "dim." } \D bes'8. ^( [
  \D a'16 \D bes'8. \D es''16 ]
  % XML measure 74
\break | % 73
  \U as'!4 ) r4 \D bes'4 ^( \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \D des''8 [ \D c''8 \D bes'8 ) ] }
  
  % XML measure 75
| % 74
  \U as'2 ^( \D bes'8 ^\trill [ \D as'8 \D des''8 \D es''8 ]
  % XML measure 76
| % 75
  \D f''2 ) \D as''2 \shape #'(((0 . 0) (0 . 0) (0 . 0) (0 . 0)) ((0 . 0) (0 . 3) (0 . 3) (0 . 0))) ^( ^>
  % XML measure 77
\break | % 76
  \D ges''4 \D f''4 \D es''4 \D f''8 [ \D des''8 ]
  % XML measure 78
| % 77
  \U as'2 ) \D bes'2 ~ ^( ^> _\markup \dynamic "rf"
  % XML measure 79
| % 78
  \D bes'2 \D ces''8 ^\trill [ ^\markup \italic "♭" \D bes'8 \D es''8 \D f''8 )
  ]
  % XML measure 80
\break | % 79

  \barNumberCheck #80
  \D ges''4 ^( \D f''4 \D es''4 \D f''4
  % XML measure 81
| % 80
  \D des''4. ) _\markup \italic "dim." \U g'32 ^( [ \U as'32 \U bes'32 \U as'32
  ] \D f''4. -\tweak stencil ##f -> \D es''8
  % XML measure 82
| % 81
  es''1 ) -\tweak stencil ##f -> ^\markup \italic "riten." \bar "||" % 82
  
  % XML measure 83
\pageBreak | % 82
  \time 2/2 \key e \major r16 ^\markup \bold Presto \U gis'16 ^( [ \U a'16 \U
  gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16 \U e''16 ] \D dis''16 [ \D cis''16
  \D dis''16 \D cis''16 ] \D bis'16 [ \D cis''16 \D e''16 \D gis''16 ) ]
  % XML measure 84
| % 83
  r16 \U gis'16 ^( [ \U a'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16 \U
  e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16 ] \D bis'16 [ \D cis''16
  \D e''16 \D gis''16 ) ]
  % XML measure 85
| % 84
  r16 \D a'16 ^( [ \D cis''16 \D dis''16 ] \D fis''16 [ \D a''16 \D cis'''16 \D
  dis'''16 ] \ottava #1 \D b'''16 [ \D a'''16 \D gis'''16 \D fis'''16 ] \D e'''16
  [ \D dis'''16 \D fis'''16 \D cis'''16 ) ] \ottava #0
  % XML measure 86
| % 85
  \D bis''16 ^( [ \D dis'''16 \D a''16 \D gis''16 ] \D fis''16 [ \D a''16 \D e''16
  \D dis''16 ] \D fis''16 [ \D cis''16 \D bis'!16 \D dis''16 ] \U a'16 [ \U gis'16
  \U b'16 \U a'16 ~ ) ]
  % XML measure 87
\break | % 86
  \U a'16 [ \U gis'16 ^( \U a'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16
  \U e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16 ] \D bis'16 [ \D
  cis''16 \D e''16 \D gis''16 ) ]
  % XML measure 88
| % 87
  r16 \U gis'16 ^( [ \U ais'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16 \U
  e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16 ] \D bis'16 [ \D cis''16
  \D e''16 \D gis''16 ) ]
  % XML measure 89
| % 88
  \D dis''16 ^( [ _\markup \italic "cresc." \D e''16 \D dis''16 \D cisis''16 ]
  \D dis''16 [ \D b''16 \D ais''16 \D gis''16 ] \D fisis''16 ) [ \D e'''16 ^( \D
  dis'''16 \D \tweak Accidental.restore-first ##t cis'''!16 ] \D b''16 [ \D ais''16 \D gis''16 \D fisis''16 ) ]
  % XML measure 90
\break | % 89

  \barNumberCheck #90
  \D ais''16 ^( -\tweak stencil ##f ^^ [ _\markup \italic "dim." \D gis''16 \D b''16 \D cisis''16 )
  ] \D e''16 ^( -\tweak stencil ##f ^^ [ \D dis''16 \D gis''16 \D ais'!16 ) ] \U cis''16 _( -\tweak stencil ##f ^^ [ \U
  b'16 \U dis''16 \U fisis'16 ) ] \U ais'16 _( -\tweak stencil ##f ^^ [ \U gis'16 \U fisis'16 \U
  gis'16 ) ]
  % XML measure 91
| % 90
  \U gis'4 ^> \U fis'4 ^> \U eis'4 ^> \U fis'4 ^>
  % XML measure 92
| % 91
  \U cis'16 _( _> [ \U cis''16 \U fis'16 \U a'16 ) ] \U dis'16 _( _> [ \U dis''16
  \U fis'16 \U a'16 ) ] \U e'16 _( _> [ \U e''16 \U gis'16 \U b'16 ) ] \D gis'16
  ^( ^> [ \D gis''16 \D b'16 \D e''16 ) ]
  % XML measure 93
\break | % 92
  \D gis'16 ^( ^> [ \D gis''16 \D bis'16 \D cis''16 ) ] \D fis'16 ^( ^> [ \D
  fis''16 \D bis'16 \D cis''16 ) ] \D eis'16 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) ^( ^> [ \D eis''!16 \D bis'16 \D
  cis''16 ) ] \D fis'16 ^( ^> [ \D fis''16 \D bis'16 \D cis''16 ) ]
  % XML measure 94
| % 93
  \D eis'16 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) ^( ^> [ \D eis''!16 \D b'!16 \D dis''16 ) ] \D fis'16 ^( ^> [ \D
  fis''16 \D b'16 \D dis''16 ) ] \D a'16 ^( ^> [ \D a''16 \D b'16 \D e''16 ) ]
  \D gis'16 ^( ^> [ \D gis''16 \D b'16 \D e''16 ) ]
  % XML measure 95
| % 94
  \hideNote r16 \voiceOne \tweak TupletBracket.stencil ##f \tweak
  TupletNumber.stencil ##f \tuplet 4/3 {
    \U gis''4 ^> }
  \hideNote r16 \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 4/3 {
    \U fis''4 ^> }
  \hideNote r16 \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 4/3 {
    \U eis''4 ^> }
  \hideNote r16 \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 4/3 {
    \U fis''4 ^> }
  
  % XML measure 96
\break | % 95
  \oneVoice \U cis'16 _( [ _\markup \italic "cresc." \U cis''16 ^> \U fis'16 \U
  a'16 ) ] \U dis'16 _( [ \U dis''16 ^> \U fis'16 \U a'16 ) ] \D e'16 ^( [ \D
  e''16 ^> \D gis'16 \D b'16 ) ] \D gis'16 ^( [ \D gis''16 ^> \D b'16 \D e''16 )
  ]
  % XML measure 97
| % 96
  \D gis'16 ^( [ \D gis''16 ^> \D bis'16 \D cis''16 ) ] \D fis'16 ^( [ \D fis''16
  ^> \D bis'16 \D cis''16 ) ] \D dis''16 ^( [ \D dis'''16 ^> \D fis''16 \D a''16
  ) ] \D cis''16 ^( [ \D cis'''16 ^> \D fis''16 \D a''16 ) ]
  % XML measure 98
| % 97
  \D cis''16 ^( [ \D cis'''16 ^> \D dis''16 \D fis''16 ) ] \D bis'16 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) ^( [ \D
  bis''!16 ^> \D dis''16 \D fis''16 ) ] \D bis'16 ^( [ _\markup \italic "dim."
  \D bis''16 ^> \D dis''16 \D fis''16 ) ] \D bis'16 ^( [ \D bis''16 ^> \D dis''16
  \D fis''16 ) ]
  % XML measure 99
\break | % 98
  \D c''16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D c'''!16 ^> \D dis''16 \D fis''16 ) ] \D b'!16 \shape #'((0 . 0) (0 . 2.8) (0 . 2.8) (0 . 0)) ^( [ \D b''!16
  ^> \D dis''16 \D fis''16 ) ] \D b'16 ^( [ \D b''16 ^> \D dis''16 \D fis''16 )
  ] \D ais'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D ais''!16 ^> \D dis''16 \D fis''16 ) ]
  % XML measure 100
| % 99

  \barNumberCheck #100
  \D ais'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D ais''!16 ^> \D dis''16 \D fis''16 ) ] \D a'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D a''!16
  ^> \D dis''16 \D fis''16 ) ] \D a'16 ^( [ \D a''16 ^> \D dis''16 \D fis''16 )
  ] \D a'16 ^( [ \D a''16 ^> \D dis''16 \D fis''16 ) ]
  % XML measure 101
| % 100
  \D c''16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D c'''!16 ^> \D dis''!16 \D fis''16 ) ] \D b'16 ^( [ \D b''16
  ^> \D dis''16 \D fis''16 ) ] \D b'16 ^( [ \D b''16 ^> \D dis''16 \D fis''16 )
  ] \D ais'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D ais''!16 ^> \D dis''16 \D fis''16 ) ]
  % XML measure 102
| % 101
  \D ais'16 \shape #'((0 . 0.8) (0 . 1.8) (0 . 1.8) (0 . 0)) ^( [ \D ais''!16 ^> \D dis''16 \D fis''16 ) ] \D a'16 \shape #'((0 . 1) (0 . 2.4) (0 . 0) (0 . 0)) ^( [ ^\markup
  \italic "riten." \D a''!16 ^> \D dis''16 \D fis''16 ) ] \D a'16 ^( [ \D a''16
  ^> \D dis''16 \D fis''16 ) ] \D gis'16 ^( [ \D gis''16 ^> \D dis''16 \D fis''16
  ) ]
  % XML measure 103
\break | % 102
  r16 ^\markup \italic "a tempo" \U gis'16 ^( [ \U a'16 \U gis'16 ] \U fisis'16
  [ \U gis'16 \U cis''16 \U e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16
  ] \D bis'16 [ \D cis''16 \D e''16 \D gis''16 ) ]
  % XML measure 104
| % 103
  r16 \U gis'16 ^( [ \U a'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16 \U
  e''16 ] \D dis''16 [ \D cis''16 \D dis''16 \D cis''16 ] \D bis'16 [ \D cis''16
  \D e''16 \D gis''16 ) ]
  % XML measure 105
| % 104
  r16 \D a'16 ^( [ \D cis''16 \D dis''16 ] \D fis''16 [ \D a''16 \D cis'''16 \D
  dis'''16 ] \ottava #1 \D b'''16 [ \D a'''16 \D gis'''16 \D fis'''16 ] \D e'''16
  [ \D dis'''16 \D fis'''16 \D cis'''16 ) ] \ottava #0
  % XML measure 106
\break | % 105
  \D bis''16 ^( [ \D dis'''16 \D a''16 \D gis''16 ] \D fis''16 [ \D a''16 \D e''16
  \D dis''16 ] \D fis''16 [ \D cis''16 \D bis'!16 \D dis''16 ] \U a'16 [ \U gis'16
  \U b'16 \U a'16 ~ ) ]
  % XML measure 107
| % 106
  \U a'16 [ \U gis'16 ^( \U a'16 \U gis'16 ] \U fisis'16 [ \U gis'16 \U cis''16
  \U e''16 ] \D dis''16 [ _\markup \italic "cresc." \D cis''16 \D dis''16 \D
  cis''16 ] \D bis'16 [ \D cis''16 \D e''16 \D gis''16 ) ]
  % XML measure 108
| % 107
  \D e''16 ^( [ \D dis''16 \D e''16 \D dis''16 ] \D cisis''16 [ \D dis''16 \D
  fis''16 \D a''16 ) ] \D fis''16 ^( [ \D eis''16 \D fis''16 \D eis''16 ] \D
  disis''16 [ \D eis''16 \D gis''16 \D \tweak Accidental.restore-first ##t cis'''!16 ) ]
  % XML measure 109
\break | % 108
  r16 \D cis''16 \shape #'((0 . 0) (0 . 2.6) (0 . 2.6) (0 . 0)) ^( [ \D d''16 \D cis''16 ] \D bis'16 [ \D cis''16 \D fis''16 \D
  a''16 ] \D fis''16 [ \D eis''16 \D fis''16 \D eis''16 ] \D disis''16 [ \D
  eis''16 \D gis''16 \D cis'''16 ) ]
  % XML measure 110
| % 109

  \barNumberCheck #110
  \D gis''16 ^( [ _\markup \italic "sempre cresc." \D fis''16 \D gis''16 \D
  fis''16 ] \D eis''16 [ \D fis''16 \D a''16 \D cis'''16 ) ] \D a''16 ^( [ \D
  gis''16 \D a''16 \D gis''16 ] \D fisis''16 [ \D gis''16 \D bis''16 \D dis'''16
  ) ]
  % XML measure 111
| % 110
  \D gis''16 ^( [ \D a''16 \D gis''16 \D fisis''16 ] \D gis''16 ) [ \D e'''16 \shape #'((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0)) ^(
  ^> \D dis'''16 \D d'''16 ] \D cis'''16 [ \D c'''16 \D b''16 \D ais''16 ] \D
  a''16 [ \D gis''16 \D g''16 \D fis''16 ) ]
  % XML measure 112
\pageBreak | % 111
  \D e''16 ^( [ \D fis''16 \D e''16 \D dis''16 ] \D e''16 ) [ \D e'''16 ^( ^> \D
  dis'''16 \D d'''16 ] \D cis'''16 [ \D c'''16 \D b''16 \D ais''16 ] \D a''16 [
  \D gis''16 \D g''16 \D fis''16 ]
  % XML measure 113
| % 112
  \D gis''!16 ) r16 \D gis'''16 \shape #'(((0 . 0) (0 . 0) (0 . 0.4) (0 . 0.4)) ((0 . 0.65) (0 . 0.65) (0 . 0.65) (0 . 0.65))) ^( ^> [ \D g'''16 ] \D fis'''16 [ \D eis'''16 \D
  e'''16 \D dis'''16 ] \D d'''16 [ \D cis'''16 \D c'''16 \D b''16 ] \D ais''16 [
  \D a''16 \D gis''!16 \D g''16 ]
  % XML measure 114
| % 113
  \D fis''16 [ \D eis''16 \D e''16 \D dis''16 ] \D d''16 [ \D cis''16 \D c''16
  \D b'16 ] \U ais'16 [ \U a'16 \U gis'16 \U g'16 ] \U fis'16 [ \U e'!16 \U dis'!16
  \U cis'!16 ]
  % XML measure 115
\break | % 114
  \U gis8 ) _! r8 \ottava #1 \D a'''16 ^( ^> [ \D gis'''16 \D e''''16 \D e'''16
  ) ] \D fis'''16 ^( ^> [ \D e'''16 \D cis''''16 \D cis'''16 ) ] \D dis'''16 ^(
  ^> [ \D cis'''16 \D gis'''16 \D gis''16 ) ] \ottava #0
  % XML measure 116
| % 115
  \D a''16 ^( -\tweak stencil ##f -> [ \D gis''16 \D e'''16 \D e''16 ) ] \D fis''16 ^( -\tweak stencil ##f -> [ \D e''16
  \D cis'''16 \D cis''16 ) ] \D dis''16 ^( -\tweak stencil ##f -> [ \D cis''16 \D gis''16 \D gis'16
  ) ] \D a'16 ^( -\tweak stencil ##f -> [ \D gis'16 \D e''16 \D e'16 ) ]
  % XML measure 117
| % 116
  \U fis'16 _( -\tweak stencil ##f -> [ \U e'16 \U cis''16 \U cis'16 ) ] \U dis'16 _( -\tweak stencil ##f -> [ \U cis'16
  \U gis'16 \U gis16 ) ] \U dis'16 _( -\tweak stencil ##f -> [ \U cis'16 \U gis'16 \U gis16 ) ] \U
  dis'16 _( -\tweak stencil ##f -> [ \U cis'16 \U a'16 \U a16 ) ]
  % XML measure 118
\break | % 117
  \U dis'16 _( -\tweak stencil ##f -> [ \U cis'16 \U gis'16 \U gis16 ) ] \U dis'16 _( -\tweak stencil ##f -> [ \U cis'16
  \U fisis'16 \U fisis!16 ) ] \U dis'16 _( -\tweak stencil ##f -> [ \U cis'16 \U gis'16 \U gis16 ) ]
  \U dis'16 _( -\tweak stencil ##f -> [ \U bis16 \U gis'16 \U gis16 ) ]
  % XML measure 119
| % 118
  \U dis'16 _( -\tweak stencil ##f -> [ \U cis'16 \U gis'16 \U gis16 ) ] \U a'16 _( [ \U gis'16
  \voiceOne \U e''16 ^> \U e'16 ) ] \U a'16 _( [ \U gis'16 \U e''16 ^> \U e'16 )
  ] \U a'16 _( [ \U gis'16 \U dis''16 ^> \U dis'16 ) ]
  % XML measure 120
| % 119

  \barNumberCheck #120
  \oneVoice \U a'16 _( [ \U gis'16 \U dis''16 ^> \U dis'16 ) ] \U a'16 _( [ \U
  gis'16 \U cis''16 ^> \U cis'16 ) ] \U e'16 _( [ \U dis'16 \U gis'16 ^> \U gis16
  ) ] \U e'16 _( [ \U dis'16 \U gis'16 ^> \U gis16 ) ]
  % XML measure 121
\break | % 120
  \U dis'16 _( [ \U cis'16 \U gis'16 ^> \U gis16 ) ] \U a'16 _( [ \U gis'16 \U
  e''16 ^> \U e'16 ) ] \U a'16 _( [ \U gis'16 \U e''16 ^> \U e'16 ) ] \U a'16 _(
  [ \U gis'16 \U dis''16 ^> \U dis'16 ) ]
  % XML measure 122
| % 121
  \U a'16 _( [ \U gis'16 \U dis''16 ^> \U dis'16 ) ] \U a'16 _( [ \U gis'16 \U
  cis''16 ^> \U cis'16 ) ] \U e'16 _( [ \U dis'16 \U gis'16 ^> \U gis16 ) ] \U
  e'16 _( [ \U dis'16 \U gis'16 ^> \U gis16 ) ]
  % XML measure 123
| % 122
  \U dis'16 _( [ \U cis'16 \U gis'16 ^> \U gis16 ) ] \U a'16 _( [ \U gis'16 \U
  e''16 ^> \U e'16 ) ] \U fis'16 _( [ \U e'16 \U cis''16 ^> \U cis'16 ) ] \U a'16
  _( [ \U gis'16 \U e''16 ^> \U e'16 ) ]
  % XML measure 124
| % 123
  \U dis'16 _( [ \U cis'16 \U gis'16 ^> \U gis16 ) ] \U a'16 _( [ \U gis'16 \U
  e''16 ^> \U e'16 ) ] \U fis'16 _( [ \U e'16 \U cis''16 ^> \U cis'16 ) ] \U a'16
  _( [ \U gis'16 \U e''16 ^> \U e'16 ) ]
  % XML measure 125
\break | % 124
  \U fis'16 _( [ _\markup \italic "poco a poco diminuendo" \U e'16 \U cis''16 \U
  cis'16 ) ] \U a'16 _( [ \U gis'16 \U cis''16 \U cis'16 ) ] \U fis'16 _( [ \U
  e'16 \U cis''16 \U cis'16 ) ] \U a'16 _( [ \U gis'16 \U cis''16 \U cis'16 ) ]
  % XML measure 126
| % 125
  \U fis'16 _( [ \U e'16 \U cis''16 \U cis'16 ) ] \U a'16 _( [ \U gis'16 \U
  cis''16 \U cis'16 ) ] \U fis'16 _( [ \U e'16 \U cis''16 \U cis'16 ) ] \U a'16
  _( [ \U gis'16 \U cis''16 \U cis'16 ) ]
  % XML measure 127
| % 126
  \U dis'16 _( [ \U cis'16 \U gis'16 \U gis16 ) ] \U dis'16 _( [ \U cis'16 \U
  gis'16 \U gis16 ) ] \U dis'16 _( [ \U cis'16 \U gis'16 \U gis16 ) ] \U dis'16
  _( [ \U cis'16 \U gis'16 \U gis16 ) ]
  % XML measure 128
\break | % 127
  \U dis'16 _( [ \U cis'16 \U gis'16 \U gis16 ) ] \U dis'16 _( [ \U cis'16 \U
  gis'16 \U gis16 ) ] \U dis'16 _( [ \U cis'16 \U gis'16 \U gis16 ) ] \U dis'16
  _( [ \U cis'16 \U gis'16 \U gis16 ) ]
  % XML measure 129
| % 128
  \U dis'16 _( [ \U cis'16 \U gis'16 \U gis16 ) ] \U dis'16 _( [ \U cis'16 \U
  gis'16 \U gis16 ) ] \U dis'16 _( [ \U cis'16 \U gis'16 \U gis16 ) ] \U dis'16
  _( [ \U cis'16 \U gis'16 \U gis16 ) ]
  % XML measure 130
| % 129

  \barNumberCheck #130
  \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16 \=2) ] \U dis'16 _\=2( [ \U
  cis'16 \U gis'16 \U gis16 \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16
  \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16 \=2) ]
  % XML measure 131
\break | % 130
  \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16 \=2) ] \U dis'16 _\=2( [ \U
  cis'16 \U gis'16 \U gis16 \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16
  \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16 \=2) ]
  % XML measure 132
| % 131
  \U dis'16 _( [ ^\markup \italic "poco a poco più tranquillo" \U cis'16 \U gis'16
  \U gis16 ) ] \U dis'16 _( [ \U cis'16 \U gis'16 \U gis16 ) ] \U dis'16 _( [ \U
  cis'16 \U gis'16 \U gis16 ) ] \U dis'16 _( [ \U cis'16 \U gis'16 \U gis16 ) ]
  % XML measure 133
| % 132
  \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16 \=2) ] \U dis'16 _\=2( [ \U
  cis'16 \U gis'16 \U gis16 \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16
  \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16 \=2) ]
  % XML measure 134
\break | % 133
  \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16 \=2) ] \U dis'16 _\=2( [ \U
  cis'16 \U gis'16 \U gis16 \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16
  \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U gis16 \=2) ]
  % XML measure 135
| % 134
  \U dis'16 \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) _\=2( [ \U cis'16 \U gis'16 \U eis16 \=2) ] \U dis'16 _\=2( [ \U
  cis'16 \U gis'16 \U eis16 \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U eis16
  \=2) ] \U dis'16 _\=2( [ \U cis'16 \U gis'16 \U eis16 \=2) ]
  % XML measure 136
| % 135
  \U eis'16 _( [ ^\markup \italic "riten." \U dis'16 \U gis'16 \U fis16 ) ] \U
  eis'16 _( [ \U dis'16 \U gis'16 \U fis16 ) ] \U eis'16 _( [ \U dis'16 \U gis'16
  \U fis16 ) ] \U eis'16 _( [ \U dis'16 \U gis'16 \U fis16 ) ]
  % XML measure 137
| % 136
  \arpeggioXX <fis gis bis dis'>1 \arpeggio ^(
  % XML measure 138
| % 137
  \arpeggioXX <eis gis cis'>1 \arpeggio ) \bar "|."
}

PartPOneVoiceTwo = {
  
  % XML measure 1
\clef "treble" \time 2/2 \key e \major s1
  % XML measure 2
s1
  % XML measure 3
| % 2
  \hideNote r2. \hideNote r4
  % XML measure 4
s1
  % XML measure 5
s1
  % XML measure 6
\break s1
  % XML measure 7
s1
  % XML measure 8
s1
  % XML measure 9
\break s1
  % XML measure 10
s1
  % XML measure 11
s1
  % XML measure 12
\break s1
  % XML measure 13
| % 12
  \D \hideDuplicateHead gis'16 \shape #'((0 . 1) (0 . 0.2) (0 . 0.2) (0 . 0)) ^( [ \D gis''16 \D bis'16 \D cis''16
  ) ] \D \hideDuplicateHead fis'16 ^\=2( [ \D fis''16 \D bis'16 \D
  cis''16 \=2) ] \D \hideDuplicateHead eis'16 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) ^\=3( [ \D eis''!16
  \D bis'16 \D cis''16 \=3) ] \D \hideDuplicateHead fis'16 ^\=4( [
  \D fis''16 \D bis'16 \D cis''16 \=4) ]
  % XML measure 14
s1
  % XML measure 15
\break s1
  % XML measure 16
s1
  % XML measure 17
| % 16
  \oneVoice \D gis'16 _( [ \voiceTwo \D gis''16 \D bis'16 \D cis''16 ) ]
  \oneVoice \D fis'16 _( [ \voiceTwo \D fis''16 \D bis'16 \D cis''16 ) ]
  \oneVoice \D eis'16 _( [ \voiceTwo \D \tweak Accidental.stencil ##f eis''16 \D bis'16 \D cis''16 ) ]
  \oneVoice \D fis'16 _( [ \voiceTwo \D fis''16 \D bis'16 \D cis''16 ) ]
  % XML measure 18
\break s1
  % XML measure 19
s1
  % XML measure 20
s1
  % XML measure 21
\break s1
  % XML measure 22
s1
  % XML measure 23
s1
  % XML measure 24
s1
  % XML measure 25
\break s1
  % XML measure 26
s1
  % XML measure 27
s1
  % XML measure 28
\pageBreak s1
  % XML measure 29
s1
  % XML measure 30
s1
  % XML measure 31
\break s1
  % XML measure 32
s1
  % XML measure 33
s1
  % XML measure 34
\break s1
  % XML measure 35
s1
  % XML measure 36
s1
  % XML measure 37
\break s1
  % XML measure 38
s1
  % XML measure 39
s1
  % XML measure 40
\break s1 \bar "||" % 40
  
  % XML measure 41
| % 40
  \key des \major s1
  % XML measure 42
s1 \bar "||" % 42
  
  % XML measure 43
\break | % 42
  \time 4/4 s1
  % XML measure 44
| % 43
  \hideNote r2. \U as'4 ^>
  % XML measure 45
s1
  % XML measure 46
s1
  % XML measure 47
\break s1
  % XML measure 48
s1
  % XML measure 49
| % 48
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tweak
  TupletBracket.transparent ##t \tweak TupletNumber.transparent ##t \tuplet 6/4
  {
    \tweak Stem.transparent ##t \hideNote des''2 \tweak transparent ##t ~ \tweak Stem.transparent ##t
    \hideNote des''8 \U c''32 [ \U des''32 \U es''32 \U des''32 ] }
  \hideNote r2
  % XML measure 50
s1
  % XML measure 51
\break s1
  % XML measure 52
| % 51
  \hideNote r2. \U as'4 ^>
  % XML measure 53
s2 \tweak TupletBracket.stencil ##f \tweak
  TupletNumber.stencil ##f \tweak TupletBracket.transparent ##t \tweak
  TupletNumber.transparent ##t \tuplet 3/2 {
    \tweak Stem.transparent ##t \hideNote es''8 \U f''16 [ \U es''16 \U des''16
    \U es''16 ] }
  s4
  % XML measure 54
s1
  % XML measure 55
\pageBreak s1
  % XML measure 56
s1
  % XML measure 57
s1
  % XML measure 58
s1
  % XML measure 59
\break s1
  % XML measure 60
s1
  % XML measure 61
s1
  % XML measure 62
s1
  % XML measure 63
\break s1
  % XML measure 64
| % 63
  \hideNote r2. \U as'4 ^>
  % XML measure 65
s2 \tweak TupletBracket.stencil ##f \tweak
  TupletNumber.stencil ##f \tweak TupletBracket.transparent ##t \tweak
  TupletNumber.transparent ##t \tuplet 3/2 {
    \tweak Stem.transparent ##t \hideNote es''8 \U f''16 [ \U es''16 \U des''16
    \U es''16 ] }
  s4
  % XML measure 66
s1
  % XML measure 67
\break s1
  % XML measure 68
s1
  % XML measure 69
s1
  % XML measure 70
s1
  % XML measure 71
\break s1
  % XML measure 72
s1
  % XML measure 73
s1
  % XML measure 74
\break s1
  % XML measure 75
s1
  % XML measure 76
| % 75
  \hideNote r2. \U as'4 ^>
  % XML measure 77
\break s2 \tweak TupletBracket.stencil ##f \tweak
  TupletNumber.stencil ##f \tweak TupletBracket.transparent ##t \tweak
  TupletNumber.transparent ##t \tuplet 3/2 {
    \tweak Stem.transparent ##t \hideNote es''8 \U f''16 [ \U es''16 \U des''16
    \U es''16 ] }
  s4
  % XML measure 78
s1
  % XML measure 79
s1
  % XML measure 80
\break s1
  % XML measure 81
s1
  % XML measure 82
s1 \bar "||" % 82
  
  % XML measure 83
\pageBreak | % 82
  \time 2/2 \key e \major s1
  % XML measure 84
s1
  % XML measure 85
s1
  % XML measure 86
s1
  % XML measure 87
\break s1
  % XML measure 88
s1
  % XML measure 89
s1
  % XML measure 90
\break s1
  % XML measure 91
| % 90
  \D \hideDuplicateHead gis'16 \shape #'((0 . 1) (0 . 0.2) (0 . 0.2) (0 . 0)) ^( [ \D gis''16 \D bis'16 \D cis''16
  ) ] \D \hideDuplicateHead fis'16 ^\=2( [ \D fis''16 \D bis'16 \D
  cis''16 \=2) ] \D \hideDuplicateHead eis'16 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) ^\=3( [ \D eis''!16
  \D bis'16 \D cis''16 \=3) ] \D \hideDuplicateHead fis'16 ^\=4( [
  \D fis''16 \D bis'16 \D cis''16 \=4) ]
  % XML measure 92
s1
  % XML measure 93
\break s1
  % XML measure 94
s1
  % XML measure 95
| % 94
  \oneVoice \D gis'16 _( [ \voiceTwo \D gis''16 \D bis'16 \D cis''16 ) ]
  \oneVoice \D fis'16 _( [ \voiceTwo \D fis''16 \D bis'16 \D cis''16 ) ]
  \oneVoice \D eis'16 _( [ \voiceTwo \D \tweak Accidental.stencil ##f eis''16 \D bis'16 \D cis''16 ) ]
  \oneVoice \D fis'16 _( [ \voiceTwo \D fis''16 \D bis'16 \D cis''16 ) ]
  % XML measure 96
\break s1
  % XML measure 97
s1
  % XML measure 98
s1
  % XML measure 99
\break s1
  % XML measure 100
s1
  % XML measure 101
s1
  % XML measure 102
s1
  % XML measure 103
\break s1
  % XML measure 104
s1
  % XML measure 105
s1
  % XML measure 106
\break s1
  % XML measure 107
s1
  % XML measure 108
s1
  % XML measure 109
\break s1
  % XML measure 110
s1
  % XML measure 111
s1
  % XML measure 112
\pageBreak s1
  % XML measure 113
s1
  % XML measure 114
s1
  % XML measure 115
\break s1
  % XML measure 116
s1
  % XML measure 117
s1
  % XML measure 118
\break s1
  % XML measure 119
s4. \D e''4 -\tweak stencil ##f -> \D e''4 -\tweak stencil ##f -> \tweak TupletBracket.stencil ##f
  \tweak TupletNumber.stencil ##f \tuplet 2/1 {
    \D dis''4 -\tweak stencil ##f -> }
  
  % XML measure 120
s1
  % XML measure 121
\break s1
  % XML measure 122
s1
  % XML measure 123
s1
  % XML measure 124
s1
  % XML measure 125
\break s1
  % XML measure 126
s1
  % XML measure 127
s1
  % XML measure 128
\break s1
  % XML measure 129
s1
  % XML measure 130
s1
  % XML measure 131
\break s1
  % XML measure 132
s1
  % XML measure 133
s1
  % XML measure 134
\break s1
  % XML measure 135
s1
  % XML measure 136
s1
  % XML measure 137
| % 136
  <\hideNote cis, \hideNote gis, \hideNote fis \hideNote gis \hideNote bis \hideNote dis'>1
  % XML measure 138
| % 137
  <\hideNote cis, \hideNote gis, \hideNote eis \hideNote gis \hideNote cis'>1
  \bar "|."
}

PartPOneVoiceFive = {
  
  % XML measure 1
\clef "bass" \time 2/2 \key e \major \oneVoice <gis, ~ gis ~>1
  -\tweak stencil ##f ->
  % XML measure 2
| % 1
  <gis, gis>1
  % XML measure 3
| % 2
  \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \tweak Stem.length #13.5 \D <cis, cis>8 ^( -\tweak stencil ##f -> \U gis8 [ \U cis'8 }
  ^\markup \italic "m.d." \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \U e'8 \U cis'8 \U gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \D cis8 ^( [ \D gis8 ^\markup \italic "m.g." \D cis'8 }
  \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 4
| % 3
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 5
| % 4
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 6
\break | % 5
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 7
| % 6
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 ^( [ \D a8 \D cis'8 \D fis'8 \D cis'8 \D a8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D fis8 ^( [ \D cis'8 \D dis'8 \D a'8 \D dis'8 \D cis'8 ) ] }
  
  % XML measure 8
| % 7
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  
  % XML measure 9
\break | % 8
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 10
| % 9

  \barNumberCheck #10
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D ais8 \D e'8 \D ais8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D ais8 \D cis'8 \D ais8 \D gis8 ) ] }
  
  % XML measure 11
| % 10
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 ^( [ \D gis8 \D b8 \D dis'8 \D b8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 \shape #'((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0)) ^( [ \D ais8 \D cis'8 \D fisis'8 \D cis'8 \D ais8 ) ] }
  
  % XML measure 12
\break | % 11
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D gis8 \D b8 \D gis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D gis8 \D b8 \D gis8 \D dis8 ) ] }
  
  % XML measure 13
| % 12
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  
  % XML measure 14
| % 13
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D b,8 ^( [ \D fis8 \D a8 \D b8 \D a8 \D fis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e,8 ^( [ \D b,8 \D e8 \D gis8 \D e8 \D b,8 ) ] }
  
  % XML measure 15
\break | % 14
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  
  % XML measure 16
| % 15
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D b,8 ^( [ \D dis8 \D a8 \D b8 \D a8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e,8 ^( [ \D b,8 \D e8 \D gis8 \D e8 \D b,8 ) ] }
  
  % XML measure 17
| % 16
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  
  % XML measure 18
\break | % 17
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D b,8 ^( [ \D fis8 \D a8 \D b8 \D a8 \D fis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e,8 ^( [ \D b,8 \D e8 \D gis8 \D e8 \D b,8 ) ] }
  
  % XML measure 19
| % 18
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D dis8 \D fis8 \D a8 \D fis8 \D dis8 ) ] }
  
  % XML measure 20
| % 19

  \barNumberCheck #20
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  
  % XML measure 21
\break | % 20
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D b!8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ais,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D ais!8 \D fis8 \D dis8 ) ] }
  
  % XML measure 22
| % 21
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bis,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D a!8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bis,8 ^( [ \D dis8 \D fis8 \D a8 \D fis8 \D dis8 ) ] }
  
  % XML measure 23
| % 22
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D b!8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ais,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D ais!8 \D fis8 \D dis8 ) ] }
  
  % XML measure 24
| % 23
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D b,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D a!8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bis,8 ^( ^> [ \D dis8 \D fis8 \D gis8 \D fis8 \D dis8 ) ] }
  
  % XML measure 25
\break | % 24
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( ^> [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 26
| % 25
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 27
| % 26
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 ^( [ \D a8 \D cis'8 \D fis'8 \D cis'8 \D a8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D fis8 ^( [ \D cis'8 \D dis'8 \D a'8 \D dis'8 \D cis'8 ) ] }
  
  % XML measure 28
\pageBreak | % 27
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  
  % XML measure 29
| % 28
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 30
| % 29

  \barNumberCheck #30
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D fis8 ^( [ \D cis'8 \D dis'8 \D a'8 \D dis'8 \D cis'8 ) ] }
  \clef "treble" \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil
  ##f \tuplet 6/4 {
    \U gis8 _( [ \U cis'8 \U eis'8 \U b'8 \U eis'8 \U cis'8 ) ] }
  
  % XML measure 31
\break | % 30
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \U a8 _( [ \U cis'8 \U fis'8 \U a'8 \U fis'8 \U cis'8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \U gis8 _( [ \U cis'8 \U eis'8 \U b'8 \U eis'8 \U cis'8 ) ] }
  
  % XML measure 32
| % 31
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \U a8 _( [ \U cis'8 \U fis'8 \U a'8 \U fis'8 \U cis'8 ) ] }
  \clef "bass" \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 6/4 {
    \D bis,8 ^( [ \D fis8 \D gis8 \D dis'8 \D gis8 \D fis8 ) ] }
  
  % XML measure 33
| % 32
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 ^( [ \D gis8 \D bis8 \D fis'8 \D bis8 \D gis8 ) ] }
  
  % XML measure 34
\break | % 33
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^\=2( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D fis8 ^\=2( [ \D cis'8 \D dis'8 \D a'8 \D dis'8 \D cis'8 \=2) ] }
  
  % XML measure 35
| % 34
  \D <gis cis' e' gis'>8 r8 r4 \D <fisis cis' e' a'>4 ^> r4
  % XML measure 36
| % 35
  R1 | % 36
  
  % XML measure 37
\break | % 36
  \U <gis,, gis,>8 _! r8 \clef "treble" \U <e' e''>4 \U <cis' cis''>4 \U <gis
    gis'>4
  % XML measure 38
| % 37
  \clef "bass" \D <e e'>4 \D <cis cis'>4 \U <gis, gis>4 \U <e, e>4
  % XML measure 39
| % 38
  \U <cis, cis>4 \U <gis,, gis,>4 \U <gis,, gis,>4 \U <a,, a,>4
  % XML measure 40
\break | % 39

  \barNumberCheck #40
  \U <gis,, gis,>4 \U <fisis,, fisis,!>4 \U <gis,, gis,>2 \bar "||" % 40
  
  % XML measure 41
| % 40
  \key des \major \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \D des,8 ^( [ \D as,8 \D des8 }
  \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \D f8 \D as8 \D des'8 ] }
  \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \D f'8 [ \D des'8 \D as8 }
  \tweak TupletBracket.stencil ##f \tuplet 3/2 {
    \D f8 \D des8 \D as,8 ) ] }
  
  % XML measure 42
| % 41
  \tweak TupletBracket.stencil ##f \tuplet 6/4 {
    \D des,8 ^( [ \D as,8 \D des8 \D f8 \D as8 \D des'8 ] }
  \tweak TupletBracket.stencil ##f \tuplet 6/4 {
    \D f'8 [ \D des'8 \D as8 \D f8 \D des8 \D as,8 ~ ) ] }
  \bar "||" % 42
  
  % XML measure 43
\break | % 42
  \time 4/4 \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 6/4 {
    \U <des, as,>8 \D as8 ^\=2( [ \D c'8 \D es'8 \D c'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 \=2) ] }
  
  % XML measure 44
| % 43
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 _\=2( [ \D as8 \D f'8 \voiceOne \change Staff="1" \D as'8 \oneVoice
    \change Staff="2" \D f'8 \D as8 \=2) ] }
  
  % XML measure 45
| % 44
  \voiceOne \U ges'4 ^> \U f'4 ^> \U es'4 ^> \U des'4 ^>
  % XML measure 46
| % 45
  \oneVoice \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ges,8 ^\=2( [ \D ges8 \D bes8 \D des'8 \D bes8 \D ges8 \=2) ] }
  
  % XML measure 47
\break | % 46
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bes,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D f8 \D bes8 \D d'8 \D bes8 \D f8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bes,8 ^( [ \D bes8 \D d'8 \D as'8 \D d'8 \D bes8 ) ] }
  
  % XML measure 48
| % 47
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D es8 ^( [ \D ges'8 \D bes8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D f8 ^( [ \D f'8 \D a8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D ges8 ^( [ \D es'8 \D bes8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D as8 ^( [ \D ges'8 \D c'8 ) ] }
  
  % XML measure 49
| % 48
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D es8 ^\=2( [ \D g8 \D des'8 \D es'8 \D des'8 \D g8 \=2) ] }
  
  % XML measure 50
| % 49

  \barNumberCheck #50
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^( [ \D es8 \D as8 \D c'8 \D as8 \D es8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 \shape #'((0 . 0) (0 . 2.6) (0 . 3) (0 . 1)) ^( [ \D es8 \D ges!8 \voiceOne \D bes8 \D ges8 \D es8 ) ] }
  
  % XML measure 51
\break | % 50
  \oneVoice \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 \=2) ] }
  
  % XML measure 52
| % 51
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 _\=2( [ \D as8 \D f'8 \voiceOne \change Staff="1" \D as'8 \oneVoice
    \change Staff="2" \D f'8 \D as8 \=2) ] }
  
  % XML measure 53
| % 52
  \voiceOne \U ges'4 ^> \U f'4 ^> \U es'4 ^> \U des'4 ^>
  % XML measure 54
| % 53
  \oneVoice \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ges,8 ^\=2( [ \D ges8 \D bes8 \D des'8 \D bes8 \D ges8 \=2) ] }
  
  % XML measure 55
\pageBreak | % 54
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bes,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D f8 \D bes8 \D d'8 \D bes8 \D f8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bes,8 ^( [ \D bes8 \D d'8 \D as'8 \D d'8 \D bes8 ) ] }
  
  % XML measure 56
| % 55
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D es8 ^\=2( [ \D ges'8 \D bes8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D f8 ^\=2( [ \D f'8 \D a8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D ges8 ^\=2( [ \D es'8 \D bes8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D as8 ^\=2( [ \D ges'8 \D c'8 \=2) ] }
  
  % XML measure 57
| % 56
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 ) ] }
  
  % XML measure 58
| % 57
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 \=2) ] }
  
  % XML measure 59
\break | % 58
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D g8 \D des'8 \D g8 \D es8 \=2) ] }
  
  % XML measure 60
| % 59

  \barNumberCheck #60
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^\=2( [ \D as8 \D des'8 \D fes'8 \D des'8 \D as8 \=2) ] }
  
  % XML measure 61
| % 60
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D es,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D es,8 ^\=2( [ \D es8 \D g8 \D des'8 \D g8 \D es8 \=2) ] }
  
  % XML measure 62
| % 61
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^( [ \D es8 \D as8 \D c'8 \D as8 \D es8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ges,!8 \shape #'((0 . 0) (0 . 2.4) (0 . 2.4) (0 . 0)) ^( [ \D ges!8 \D bes8 \D des'8 \D bes8 \D ges8 ) ] }
  
  % XML measure 63
\break | % 62
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D as8 \D c'8 \D es'8 \D c'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D es8 ^\=2( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 \=2) ] }
  
  % XML measure 64
| % 63
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 _\=2( [ \D as8 \D f'8 \voiceOne \change Staff="1" \D as'8 \oneVoice
    \change Staff="2" \D f'8 \D as8 \=2) ] }
  
  % XML measure 65
| % 64
  \voiceOne \U ges'4 ^> \U f'4 ^> \U es'4 ^> \U des'4 ^>
  % XML measure 66
| % 65
  \oneVoice \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ges,8 ^\=2( [ \D ges8 \D bes8 \D des'8 \D bes8 \D ges8 \=2) ] }
  
  % XML measure 67
\break | % 66
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bes,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D f8 \D bes8 \D d'8 \D bes8 \D f8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bes,8 ^( [ \D bes8 \D d'8 \D as'8 \D d'8 \D bes8 ) ] }
  
  % XML measure 68
| % 67
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D es8 ^\=2( [ \D ges'8 \D bes8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D f8 ^\=2( [ \D f'8 \D a8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D ges8 ^\=2( [ \D es'8 \D bes8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D as8 ^\=2( [ \D ges'8 \D c'8 \=2) ] }
  
  % XML measure 69
| % 68
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 ) ] }
  
  % XML measure 70
| % 69

  \barNumberCheck #70
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 \=2) ] }
  
  % XML measure 71
\break | % 70
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D g8 \D des'8 \D g8 \D es8 \=2) ] }
  
  % XML measure 72
| % 71
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^\=2( [ \D as8 \D des'8 \D fes'8 \D des'8 \D as8 \=2) ] }
  
  % XML measure 73
| % 72
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D es,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D es,8 ^\=2( [ \D es8 \D g8 \D des'8 \D g8 \D es8 \=2) ] }
  
  % XML measure 74
\break | % 73
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^( [ \D es8 \D as8 \D c'8 \D as8 \D es8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ges,!8 \shape #'((0 . 0) (0 . 1.2) (0 . 1.2) (0 . 0)) ^( [ \D ges!8 \D bes8 \D des'8 \D bes8 \D ges8 ) ] }
  
  % XML measure 75
| % 74
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D as,8 ^\=2( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 \=2) ] }
  
  % XML measure 76
| % 75
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 _\=2( [ \D as8 \D f'8 \voiceOne \change Staff="1" \D as'8 \oneVoice
    \change Staff="2" \D f'8 \D as8 \=2) ] }
  
  % XML measure 77
\break | % 76
  \voiceOne \U ges'4 ^> \U f'4 ^> \U es'4 ^> \U des'4 ^>
  % XML measure 78
| % 77
  \oneVoice \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 6/4 {
    \D as,8 ^\=2( [ \D es8 \D as8 \D c'8 \D as8 \D es8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ges,8 ^\=2( [ \D ges8 \D bes8 \D des'8 \D bes8 \D ges8 \=2) ] }
  
  % XML measure 79
| % 78
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bes,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D f8 \D bes8 \D d'8 \D bes8 \D f8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bes,8 ^( [ \D bes8 \D d'8 \D as'8 \D d'8 \D bes8 ) ] }
  
  % XML measure 80
\break | % 79

  \barNumberCheck #80
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D es8 ^\=2( [ \D ges'8 \D bes8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D f8 ^\=2( [ \D f'8 \D a8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D ges8 ^\=2( [ \D es'8 \D bes8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D as8 ^\=2( [ \D ges'8 \D c'8 \=2) ] }
  
  % XML measure 81
| % 80
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D des'8 \D f'8 \D des'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^\=2( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 \=2) ] }
  
  % XML measure 82
| % 81
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D des8 ^( [ \D as8 \D c'8 \D ges'8 \D c'8 \D as8 ) ] }
  \bar "||" % 82
  
  % XML measure 83
\pageBreak | % 82
  \time 2/2 \key e \major \tweak TupletBracket.stencil ##f \tweak
  TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 84
| % 83
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 85
| % 84
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 ^( [ \D a8 \D cis'8 \D fis'8 \D cis'8 \D a8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D fis8 ^( [ \D cis'8 \D dis'8 \D a'8 \D dis'8 \D cis'8 ) ] }
  
  % XML measure 86
| % 85
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  
  % XML measure 87
\break | % 86
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 88
| % 87
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D ais8 \D e'8 \D ais8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D ais8 \D cis'8 \D ais8 \D gis8 ) ] }
  
  % XML measure 89
| % 88
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 ^( [ \D gis8 \D b8 \D dis'8 \D b8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 \shape #'((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0)) ^( [ \D ais8 \D cis'8 \D fisis'8 \D cis'8 \D ais8 ) ] }
  
  % XML measure 90
\break | % 89

  \barNumberCheck #90
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D gis8 \D b8 \D gis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D gis8 \D b8 \D gis8 \D dis8 ) ] }
  
  % XML measure 91
| % 90
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  
  % XML measure 92
| % 91
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D b,8 ^( [ \D fis8 \D a8 \D b8 \D a8 \D fis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e,8 ^( [ \D b,8 \D e8 \D gis8 \D e8 \D b,8 ) ] }
  
  % XML measure 93
\break | % 92
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  
  % XML measure 94
| % 93
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D b,8 ^( [ \D dis8 \D a8 \D b8 \D a8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e,8 ^( [ \D b,8 \D e8 \D gis8 \D e8 \D b,8 ) ] }
  
  % XML measure 95
| % 94
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  
  % XML measure 96
\break | % 95
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D b,8 ^( [ \D fis8 \D a8 \D b8 \D a8 \D fis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e,8 ^( [ \D b,8 \D e8 \D gis8 \D e8 \D b,8 ) ] }
  
  % XML measure 97
| % 96
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D cis8 \D fis8 \D a8 \D fis8 \D cis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 ^( [ \D dis8 \D fis8 \D a8 \D fis8 \D dis8 ) ] }
  
  % XML measure 98
| % 97
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  
  % XML measure 99
\break | % 98
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D b!8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ais,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D ais!8 \D fis8 \D dis8 ) ] }
  
  % XML measure 100
| % 99

  \barNumberCheck #100
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bis,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D a!8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bis,8 ^( [ \D dis8 \D fis8 \D a8 \D fis8 \D dis8 ) ] }
  
  % XML measure 101
| % 100
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D a,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D b!8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D ais,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D ais!8 \D fis8 \D dis8 ) ] }
  
  % XML measure 102
| % 101
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D b,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( ^> [ \D dis8 \D fis8 \D a!8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D bis,8 ^( ^> [ \D dis8 \D fis8 \D gis8 \D fis8 \D dis8 ) ] }
  
  % XML measure 103
\break | % 102
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 104
| % 103
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 105
| % 104
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 ^( [ \D a8 \D cis'8 \D fis'8 \D cis'8 \D a8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D fis8 ^( [ \D cis'8 \D dis'8 \D a'8 \D dis'8 \D cis'8 ) ] }
  
  % XML measure 106
\break | % 105
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D gis,8 ^( [ \D dis8 \D fis8 \D bis8 \D fis8 \D dis8 ) ] }
  
  % XML measure 107
| % 106
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  
  % XML measure 108
| % 107
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D fis8 ^( [ \D cis'8 \D dis'8 \D a'8 \D dis'8 \D cis'8 ) ] }
  \clef "treble" \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil
  ##f \tuplet 6/4 {
    \U gis8 _( [ \U cis'8 \U eis'8 \U b'8 \U eis'8 \U cis'8 ) ] }
  
  % XML measure 109
\break | % 108
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \U a8 _( [ \U cis'8 \U fis'8 \U a'8 \U fis'8 \U cis'8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \U gis8 _( [ \U cis'8 \U eis'8 \U b'8 \U eis'8 \U cis'8 ) ] }
  
  % XML measure 110
| % 109

  \barNumberCheck #110
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \U a8 _( [ \U cis'8 \U fis'8 \U a'8 \U fis'8 \U cis'8 ) ] }
  \clef "bass" \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f
  \tuplet 6/4 {
    \D bis,8 ^( [ \D fis8 \D gis8 \D dis'8 \D gis8 \D fis8 ) ] }
  
  % XML measure 111
| % 110
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D cis8 ^( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 ) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D dis8 ^( [ \D gis8 \D bis8 \D fis'8 \D bis8 \D gis8 ) ] }
  
  % XML measure 112
\pageBreak | % 111
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D e8 ^\=2( [ \D gis8 \D cis'8 \D e'8 \D cis'8 \D gis8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 6/4 {
    \D fis8 ^\=2( [ \D cis'8 \D dis'8 \D a'8 \D dis'8 \D cis'8 \=2) ] }
  
  % XML measure 113
| % 112
  \D <gis cis' e' gis'>8 r8 r4 \D <fisis cis' e' a'>4 ^> r4
  % XML measure 114
| % 113
  R1 | % 114
  
  % XML measure 115
\break | % 114
  \U <gis,, gis,>8 _! r8 \clef "treble" \U <e' e''>4 \U <cis' cis''>4 \U <gis
    gis'>4
  % XML measure 116
| % 115
  \clef "bass" \D <e e'>4 \D <cis cis'>4 \U <gis, gis>4 \U <e, e>4
  % XML measure 117
| % 116
  \U <cis, cis>4 \U <gis,, gis,>4 \U <gis,, gis,>4 \U <a,, a,>4
  % XML measure 118
\break | % 117
  \U <gis,, gis,>4 \U <fisis,, fisis,!>4 \U <gis,, gis,>2
  % XML measure 119
| % 118
  \U cis,8 _( [ \U e8 \U cis8 \U gis,8 ) ] \U cis,8 _( [ \U fis8 \U bis,8 \U
  gis,8 ) ]
  % XML measure 120
| % 119

  \barNumberCheck #120
  \U cis,8 _( [ \U e8 \U cis8 \U gis,8 ) ] \U cis,8 _( [ \U fis8 \U bis,8 \U
  gis,8 ) ]
  % XML measure 121
\break | % 120
  \U cis,8 _( [ \U e8 \U cis8 \U gis,8 ) ] \U cis,8 _( [ \U fis8 \U bis,8 \U
  gis,8 ) ]
  % XML measure 122
| % 121
  \U cis,8 _( [ \U e8 \U cis8 \U gis,8 ) ] \U cis,8 _( [ \U fis8 \U bis,8 \U
  gis,8 ) ]
  % XML measure 123
| % 122
  \U cis,8 _( [ \U e8 \U cis8 \U gis,8 ) ] \U cis,8 _( [ \U gis8 \U cis8 \U gis,8
  ) ]
  % XML measure 124
| % 123
  \U cis,8 _( [ \U e8 \U cis8 \U gis,8 ) ] \U cis,8 _( [ \U gis8 \U cis8 \U gis,8
  ) ]
  % XML measure 125
\break | % 124
  \U cis,8 _( [ \U e8 \U cis8 \U gis,8 ) ] \U cis,8 _( [ \U e8 \U cis8 \U gis,8
  ) ]
  % XML measure 126
| % 125
  \U cis,8 _( [ \U e8 \U cis8 \U gis,8 ) ] \U cis,8 _( [ \U e8 \U cis8 \U gis,8
  ) ]
  % XML measure 127
| % 126
  \U cis,4 r4 r2
  % XML measure 128
\break | % 127
  R1 | % 128
  
  % XML measure 129
| % 128
  <cis, gis,>1 \shape #'(((0 . 0) (0 . 0) (0 . 0) (0 . 0)) ((0 . -1.15) (0 . -1.15) (0 . -1.15) (0 . -1.15))) _( ^\markup \italic "il canto marcato"
  % XML measure 130
| % 129

  \barNumberCheck #130
  \U ais,4 \U gis,4 \U cis4 \U dis4
  % XML measure 131
\break | % 130
  eis1 )
  % XML measure 132
| % 131
  gis1 _( ^>
  % XML measure 133
| % 132
  \D fis2 \D eis2
  % XML measure 134
\break | % 133
  \D dis2 \D eis4 \U cis4
  % XML measure 135
| % 134
  gis,1 )
  % XML measure 136
| % 135
  <gis,, gis,>1
  % XML measure 137
| % 136
  \arpeggioXX <cis, gis,>1 \arpeggio
  % XML measure 138
| % 137
  \arpeggioXX <cis, gis,>1 \arpeggio \bar "|."
}

PartPOneVoiceSix = {
  
  % XML measure 1
\clef "bass" \time 2/2 \key e \major s1
  % XML measure 2
s1
  % XML measure 3
s1
  % XML measure 4
s1
  % XML measure 5
s1
  % XML measure 6
\break s1
  % XML measure 7
s1
  % XML measure 8
s1
  % XML measure 9
\break s1
  % XML measure 10
s1
  % XML measure 11
s1
  % XML measure 12
\break s1
  % XML measure 13
s1
  % XML measure 14
s1
  % XML measure 15
\break s1
  % XML measure 16
s1
  % XML measure 17
s1
  % XML measure 18
\break s1
  % XML measure 19
s1
  % XML measure 20
s1
  % XML measure 21
\break s1
  % XML measure 22
s1
  % XML measure 23
s1
  % XML measure 24
s1
  % XML measure 25
\break s1
  % XML measure 26
s1
  % XML measure 27
s1
  % XML measure 28
\pageBreak s1
  % XML measure 29
s1
  % XML measure 30
s2 \clef "treble" s2
  % XML measure 31
\break s1
  % XML measure 32
s2 \clef "bass" s2
  % XML measure 33
s1
  % XML measure 34
\break s1
  % XML measure 35
s1
  % XML measure 36
s1
  % XML measure 37
\break s4 \clef "treble" s2.
  % XML measure 38
| % 37
  \clef "bass" s1
  % XML measure 39
s1
  % XML measure 40
\break | % 39

  \barNumberCheck #40
  \hideNote r2 \hideNote r4 \hideNote r4 \bar "||" % 40
  
  % XML measure 41
| % 40
  \key des \major s1
  % XML measure 42
s1 \bar "||" % 42
  
  % XML measure 43
\break | % 42
  \time 4/4 s1
  % XML measure 44
s1
  % XML measure 45
| % 44
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D ges'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=2( [ \D es'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D f'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=3( [ \D des'8 \D as8 \=3) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D es'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=4( [ \D c'8 \D as8 \=4) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D des'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=5( [ \D as8 \D f8 \=5) ] }
  
  % XML measure 46
s1
  % XML measure 47
\break s1
  % XML measure 48
s1
  % XML measure 49
s1
  % XML measure 50
s1
  % XML measure 51
\break s1
  % XML measure 52
s1
  % XML measure 53
| % 52
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D ges'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=2( [ \D es'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D f'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=3( [ \D des'8 \D as8 \=3) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D es'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=4( [ \D c'8 \D as8 \=4) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D des'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=5( [ \D as8 \D f8 \=5) ] }
  
  % XML measure 54
s1
  % XML measure 55
\pageBreak s1
  % XML measure 56
s1
  % XML measure 57
s1
  % XML measure 58
s1
  % XML measure 59
\break s1
  % XML measure 60
s1
  % XML measure 61
s1
  % XML measure 62
s1
  % XML measure 63
\break s1
  % XML measure 64
s1
  % XML measure 65
| % 64
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D ges'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=2( [ \D es'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D f'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=3( [ \D des'8 \D as8 \=3) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D es'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=4( [ \D c'8 \D as8 \=4) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D des'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=5( [ \D as8 \D f8 \=5) ] }
  
  % XML measure 66
s1
  % XML measure 67
\break s1
  % XML measure 68
s1
  % XML measure 69
s1
  % XML measure 70
s1
  % XML measure 71
\break s1
  % XML measure 72
s1
  % XML measure 73
s1
  % XML measure 74
\break s1
  % XML measure 75
s1
  % XML measure 76
s1
  % XML measure 77
\break | % 76
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D ges'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=2( [ \D es'8 \D as8 \=2) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D f'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=3( [ \D des'8 \D as8 \=3) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D es'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=4( [ \D c'8 \D as8 \=4) ] }
  \tweak TupletBracket.stencil ##f \tweak TupletNumber.stencil ##f \tuplet 3/2 {
    \D des'8 \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) ^\=5( [ \D as8 \D f8 \=5) ] }
  
  % XML measure 78
s1
  % XML measure 79
s1
  % XML measure 80
\break s1
  % XML measure 81
s1
  % XML measure 82
s1 \bar "||" % 82
  
  % XML measure 83
\pageBreak | % 82
  \time 2/2 \key e \major s1
  % XML measure 84
s1
  % XML measure 85
s1
  % XML measure 86
s1
  % XML measure 87
\break s1
  % XML measure 88
s1
  % XML measure 89
s1
  % XML measure 90
\break s1
  % XML measure 91
s1
  % XML measure 92
s1
  % XML measure 93
\break s1
  % XML measure 94
s1
  % XML measure 95
s1
  % XML measure 96
\break s1
  % XML measure 97
s1
  % XML measure 98
s1
  % XML measure 99
\break s1
  % XML measure 100
s1
  % XML measure 101
s1
  % XML measure 102
s1
  % XML measure 103
\break s1
  % XML measure 104
s1
  % XML measure 105
s1
  % XML measure 106
\break s1
  % XML measure 107
s1
  % XML measure 108
s2 \clef "treble" s2
  % XML measure 109
\break s1
  % XML measure 110
s2 \clef "bass" s2
  % XML measure 111
s1
  % XML measure 112
\pageBreak s1
  % XML measure 113
s1
  % XML measure 114
s1
  % XML measure 115
\break s4 \clef "treble" s2.
  % XML measure 116
| % 115
  \clef "bass" s1
  % XML measure 117
s1
  % XML measure 118
\break | % 117
  \hideNote r4 \hideNote r4 \hideNote r4 \hideNote r4
  % XML measure 119
s1
  % XML measure 120
s1
  % XML measure 121
\break s1
  % XML measure 122
s1
  % XML measure 123
s1
  % XML measure 124
s1
  % XML measure 125
\break s1
  % XML measure 126
s1
  % XML measure 127
s1
  % XML measure 128
\break s1
  % XML measure 129
s1
  % XML measure 130
s1
  % XML measure 131
\break s1
  % XML measure 132
s1
  % XML measure 133
s1
  % XML measure 134
\break s1
  % XML measure 135
s1
  % XML measure 136
s1
  % XML measure 137
s1
  % XML measure 138
s1 \bar "|."
}

PartPOneVoiceSeven = {
  
  % XML measure 1
\clef "bass" \time 2/2 \key e \major s1
  % XML measure 2
s1
  % XML measure 3
s1
  % XML measure 4
s1
  % XML measure 5
s1
  % XML measure 6
\break s1
  % XML measure 7
s1
  % XML measure 8
s1
  % XML measure 9
\break s1
  % XML measure 10
s1
  % XML measure 11
s1
  % XML measure 12
\break s1
  % XML measure 13
s1
  % XML measure 14
s1
  % XML measure 15
\break s1
  % XML measure 16
s1
  % XML measure 17
s1
  % XML measure 18
\break s1
  % XML measure 19
s1
  % XML measure 20
s1
  % XML measure 21
\break s1
  % XML measure 22
s1
  % XML measure 23
s1
  % XML measure 24
s1
  % XML measure 25
\break s1
  % XML measure 26
s1
  % XML measure 27
s1
  % XML measure 28
\pageBreak s1
  % XML measure 29
s1
  % XML measure 30
s2 \clef "treble" s2
  % XML measure 31
\break s1
  % XML measure 32
s2 \clef "bass" s2
  % XML measure 33
s1
  % XML measure 34
\break s1
  % XML measure 35
s1
  % XML measure 36
s1
  % XML measure 37
\break s4 \clef "treble" s2.
  % XML measure 38
| % 37
  \clef "bass" s1
  % XML measure 39
s1
  % XML measure 40
\break s1 \bar "||" % 40
  
  % XML measure 41
| % 40
  \key des \major s1
  % XML measure 42
s1 \bar "||" % 42
  
  % XML measure 43
\break | % 42
  \time 4/4 s1
  % XML measure 44
s1
  % XML measure 45
s1
  % XML measure 46
s1
  % XML measure 47
\break s1
  % XML measure 48
s1
  % XML measure 49
s1
  % XML measure 50
| % 49

  \barNumberCheck #50
  \hideNote r2. \U bes4 ^> \change Staff="1"
  \change Staff="2"
  % XML measure 51
\break s1
  % XML measure 52
s1
  % XML measure 53
s1
  % XML measure 54
s1
  % XML measure 55
\pageBreak s1
  % XML measure 56
s1
  % XML measure 57
s1
  % XML measure 58
s1
  % XML measure 59
\break s1
  % XML measure 60
s1
  % XML measure 61
s1
  % XML measure 62
s1
  % XML measure 63
\break s1
  % XML measure 64
s1
  % XML measure 65
s1
  % XML measure 66
s1
  % XML measure 67
\break s1
  % XML measure 68
s1
  % XML measure 69
s1
  % XML measure 70
s1
  % XML measure 71
\break s1
  % XML measure 72
s1
  % XML measure 73
s1
  % XML measure 74
\break s1
  % XML measure 75
s1
  % XML measure 76
s1
  % XML measure 77
\break s1
  % XML measure 78
s1
  % XML measure 79
s1
  % XML measure 80
\break s1
  % XML measure 81
s1
  % XML measure 82
s1 \bar "||" % 82
  
  % XML measure 83
\pageBreak | % 82
  \time 2/2 \key e \major s1
  % XML measure 84
s1
  % XML measure 85
s1
  % XML measure 86
s1
  % XML measure 87
\break s1
  % XML measure 88
s1
  % XML measure 89
s1
  % XML measure 90
\break s1
  % XML measure 91
s1
  % XML measure 92
s1
  % XML measure 93
\break s1
  % XML measure 94
s1
  % XML measure 95
s1
  % XML measure 96
\break s1
  % XML measure 97
s1
  % XML measure 98
s1
  % XML measure 99
\break s1
  % XML measure 100
s1
  % XML measure 101
s1
  % XML measure 102
s1
  % XML measure 103
\break s1
  % XML measure 104
s1
  % XML measure 105
s1
  % XML measure 106
\break s1
  % XML measure 107
s1
  % XML measure 108
s2 \clef "treble" s2
  % XML measure 109
\break s1
  % XML measure 110
s2 \clef "bass" s2
  % XML measure 111
s1
  % XML measure 112
\pageBreak s1
  % XML measure 113
s1
  % XML measure 114
s1
  % XML measure 115
\break s4 \clef "treble" s2.
  % XML measure 116
| % 115
  \clef "bass" s1
  % XML measure 117
s1
  % XML measure 118
\break s1
  % XML measure 119
s1
  % XML measure 120
s1
  % XML measure 121
\break s1
  % XML measure 122
s1
  % XML measure 123
s1
  % XML measure 124
s1
  % XML measure 125
\break s1
  % XML measure 126
s1
  % XML measure 127
s1
  % XML measure 128
\break s1
  % XML measure 129
s1
  % XML measure 130
s1
  % XML measure 131
\break s1
  % XML measure 132
s1
  % XML measure 133
s1
  % XML measure 134
\break s1
  % XML measure 135
s1
  % XML measure 136
s1
  % XML measure 137
s1
  % XML measure 138
s1 \bar "|."
}



rightDynamics = {
  % XML measure 1
  <> _\sf
  s1*2
  % XML measure 3
  <> _\f
  s1*2
  % XML measure 5
  <> _\p
  s1*5/2
  % XML measure 7
  <> -\tweak stencil ##f _\f % playback only; absent in source PDF
  s1*1/2
  % XML measure 8
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*4
  % XML measure 12
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1*15/16
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*1/16
  % XML measure 13
  <> _\f
  s1*4
  % XML measure 17
  <> _\p
  s1*5/2
  % XML measure 19
  <> _\f
  s1*7/2
  % XML measure 23
  <> _\pp
  s1*31/16
  % XML measure 24
  <> -\tweak stencil ##f _\pp % playback only; absent in source PDF
  s1*1/16
  % XML measure 25
  <> _\p
  s1*5/2
  % XML measure 27
  <> -\tweak stencil ##f _\f % playback only; absent in source PDF
  s1*1/2
  % XML measure 28
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*7
  % XML measure 35
  <> _\f
  s1*2
  % XML measure 37
  <> _\sf
  s1*1/4
  <> _\ff
  s1*15/4
  % XML measure 41
  <> -\tweak stencil ##f _\f % playback only; absent in source PDF
  s1
  % XML measure 42
  <> -\tweak stencil ##f _\f % playback only; absent in source PDF
  s1
  % XML measure 43
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3/2
  % XML measure 44
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*1/2
  % XML measure 45
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3
  % XML measure 48
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*2
  % XML measure 50
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1
  % XML measure 51
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3/2
  % XML measure 52
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*1/2
  % XML measure 53
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3
  % XML measure 56
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*2
  % XML measure 58
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*2
  % XML measure 60
  <> _\f
  s1
  % XML measure 61
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1*3/2
  % XML measure 62
  <> _\pp
  s1*1/2
  % XML measure 63
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3/2
  % XML measure 64
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*1/2
  % XML measure 65
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3
  % XML measure 68
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*2
  % XML measure 70
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*2
  % XML measure 72
  <> _\f
  s1
  % XML measure 73
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1*3/2
  % XML measure 74
  <> _\pp
  s1*1/2
  % XML measure 75
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3/2
  % XML measure 76
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*1/2
  % XML measure 77
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3
  % XML measure 80
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*2
  % XML measure 82
  <> _\p
  s1
  % XML measure 83
  <> _\p
  s1*5/2
  % XML measure 85
  <> -\tweak stencil ##f _\f % playback only; absent in source PDF
  s1*1/2
  % XML measure 86
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*4
  % XML measure 90
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1*15/16
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*1/16
  % XML measure 91
  <> _\f
  s1*4
  % XML measure 95
  <> _\p
  s1*5/2
  % XML measure 97
  <> _\f
  s1*7/2
  % XML measure 101
  <> _\pp
  s1*31/16
  % XML measure 102
  <> -\tweak stencil ##f _\pp % playback only; absent in source PDF
  s1*1/16
  % XML measure 103
  <> _\p
  s1*5/2
  % XML measure 105
  <> -\tweak stencil ##f _\f % playback only; absent in source PDF
  s1*1/2
  % XML measure 106
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*7
  % XML measure 113
  <> _\f
  s1*2
  % XML measure 115
  <> _\sf
  s1*1/4
  <> _\ff
  s1*63/16
  % XML measure 119
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1*1/16
  <> _\ff
  s1*5/4
  % XML measure 120
  <> _\p
  s1*3/4
  % XML measure 121
  <> _\ff
  s1*5/4
  % XML measure 122
  <> _\p
  s1*3/4
  % XML measure 123
  <> _\ff
  s1*17/4
  % XML measure 127
  <> _\p
  s1*3/2
  % XML measure 129
  <> _\pp
  s1*8
  % XML measure 137
  <> _\ppp
  s1*2
}

leftDynamics = {
  s1*4
  % XML measure 5
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*5/2
  % XML measure 7
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1*1/2
  % XML measure 8
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*4
  % XML measure 12
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*11/12
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*121/12
  % XML measure 23
  <> -\tweak stencil ##f _\pp % playback only; absent in source PDF
  s1*2
  % XML measure 25
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*5/2
  % XML measure 27
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1*1/2
  % XML measure 28
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*7
  % XML measure 35
  <> -\tweak stencil ##f _\f % playback only; absent in source PDF
  s1*13/2
  % XML measure 41
  <> -\tweak stencil ##f _\ff % playback only; absent in source PDF
  s1*3/2
  % XML measure 43
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*3/2
  % XML measure 44
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*1/2
  % XML measure 45
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*3
  % XML measure 48
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*2
  % XML measure 50
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1
  % XML measure 51
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*3/2
  % XML measure 52
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*1/2
  % XML measure 53
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*3
  % XML measure 56
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*2
  % XML measure 58
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*2
  % XML measure 60
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1
  % XML measure 61
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3/2
  % XML measure 62
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*1/2
  % XML measure 63
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*3/2
  % XML measure 64
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*1/2
  % XML measure 65
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*3
  % XML measure 68
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*2
  % XML measure 70
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*2
  % XML measure 72
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1
  % XML measure 73
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*3/2
  % XML measure 74
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*1/2
  % XML measure 75
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*3/2
  % XML measure 76
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*1/2
  % XML measure 77
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*3
  % XML measure 80
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*3
  % XML measure 83
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*5/2
  % XML measure 85
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1*1/2
  % XML measure 86
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*4
  % XML measure 90
  <> -\tweak stencil ##f _\mp % playback only; absent in source PDF
  s1*11/12
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*121/12
  % XML measure 101
  <> -\tweak stencil ##f _\pp % playback only; absent in source PDF
  s1*2
  % XML measure 103
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*5/2
  % XML measure 105
  <> -\tweak stencil ##f _\mf % playback only; absent in source PDF
  s1*1/2
  % XML measure 106
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*7
  % XML measure 113
  <> -\tweak stencil ##f _\f % playback only; absent in source PDF
  s1*16
  % XML measure 129
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*2
  % XML measure 131
  <> -\tweak stencil ##f _\p % playback only; absent in source PDF
  s1*8
}

rightWedgeOne = {
  s1*11/4
  % XML measure 3
  <> _\>
  s1*5/4
  % XML measure 4
  <> \!
  s1*2
  % XML measure 7
  <> _\<
  s1*1/2
  <> \!
  <> _\>
  s1*1/2
  <> \!
  s1*3
  % XML measure 11
  \once \override Hairpin.stencil = ##f <> _\< % playback hairpin; absent in source PDF
  s1
  <> \! % playback hairpin; absent in source PDF
  % XML measure 12
  <> _\>
  s1*1/4
  <> \!
  <> _\>
  s1*1/4
  <> \!
  <> _\>
  s1*1/4
  <> \!
  <> _\>
  s1*3/16
  <> \!
  s1*81/16
  % XML measure 18
  \once \override Hairpin.stencil = ##f <> _\< % playback hairpin; absent in source PDF
  s1*3/2
  % XML measure 19
  <> \! % playback hairpin; absent in source PDF
  s1*7/16
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*49/16
  % XML measure 22
  <> \! % playback hairpin; absent in source PDF
  s1*3/2
  % XML measure 24
  <> _\>
  s1*7/16
  <> \!
  s1*33/16
  % XML measure 27
  <> _\<
  s1*1/2
  <> \!
  <> _\>
  s1*1/2
  <> \!
  s1*3/2
  % XML measure 29
  \once \override Hairpin.stencil = ##f <> _\< % playback hairpin; absent in source PDF
  s1*11/2
  % XML measure 34
  <> \! % playback hairpin; absent in source PDF
  s1
  % XML measure 36
  <> _\<
  s1
  <> \!
  s1*3
  % XML measure 40
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1
  <> \! % playback hairpin; absent in source PDF
  s1
  % XML measure 42
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1
  <> \! % playback hairpin; absent in source PDF
  s1*1/2
  % XML measure 43
  <> _\<
  s1
  % XML measure 44
  <> \!
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*1/2
  <> \! % playback hairpin; absent in source PDF
  s1*5/2
  % XML measure 47
  <> _\<
  s1*1/2
  <> \!
  s1*3/2
  % XML measure 49
  <> _\>
  s1*1/2
  <> \!
  s1*3/2
  % XML measure 51
  <> _\<
  s1
  % XML measure 52
  <> \!
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*1/2
  <> \! % playback hairpin; absent in source PDF
  s1*5/2
  % XML measure 55
  <> _\<
  s1*1/2
  <> \!
  s1*3/2
  % XML measure 57
  <> _\>
  s1*1/2
  <> \!
  s1*3/4
  % XML measure 58
  \once \override Hairpin.stencil = ##f <> _\< % playback hairpin; absent in source PDF
  s1*5/4
  % XML measure 59
  <> \! % playback hairpin; absent in source PDF
  s1*1/2
  % XML measure 60
  <> _\>
  s1*1/2
  <> \!
  s1*1/2
  % XML measure 61
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1
  % XML measure 62
  <> \! % playback hairpin; absent in source PDF
  s1*1/4
  <> _\>
  s1*1/4
  <> \!
  s1*1/2
  % XML measure 63
  <> _\<
  s1
  % XML measure 64
  <> \!
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*1/2
  <> \! % playback hairpin; absent in source PDF
  s1*5/2
  % XML measure 67
  <> _\<
  s1*1/2
  <> \!
  s1*3/2
  % XML measure 69
  <> _\>
  s1*1/2
  <> \!
  s1*3/4
  % XML measure 70
  \once \override Hairpin.stencil = ##f <> _\< % playback hairpin; absent in source PDF
  s1*5/4
  % XML measure 71
  <> \! % playback hairpin; absent in source PDF
  s1*1/2
  % XML measure 72
  <> _\>
  s1*1/2
  <> \!
  s1*1/2
  % XML measure 73
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1
  % XML measure 74
  <> \! % playback hairpin; absent in source PDF
  s1*1/4
  <> _\>
  s1*1/4
  <> \!
  s1*1/2
  % XML measure 75
  <> _\<
  s1
  % XML measure 76
  <> \!
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*1/2
  <> \! % playback hairpin; absent in source PDF
  s1*5/2
  % XML measure 79
  <> _\<
  s1*1/2
  <> \!
  s1
  % XML measure 81
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1
  <> \! % playback hairpin; absent in source PDF
  s1*3
  % XML measure 85
  <> _\<
  s1*1/2
  <> \!
  <> _\>
  s1*1/2
  <> \!
  s1*3
  % XML measure 89
  \once \override Hairpin.stencil = ##f <> _\< % playback hairpin; absent in source PDF
  s1
  <> \! % playback hairpin; absent in source PDF
  % XML measure 90
  <> _\>
  s1*1/4
  <> \!
  <> _\>
  s1*1/4
  <> \!
  <> _\>
  s1*1/4
  <> \!
  <> _\>
  s1*3/16
  <> \!
  s1*81/16
  % XML measure 96
  \once \override Hairpin.stencil = ##f <> _\< % playback hairpin; absent in source PDF
  s1*3/2
  % XML measure 97
  <> \! % playback hairpin; absent in source PDF
  s1*7/16
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*49/16
  % XML measure 100
  <> \! % playback hairpin; absent in source PDF
  s1*3/2
  % XML measure 102
  <> _\>
  s1*7/16
  <> \!
  s1*33/16
  % XML measure 105
  <> _\<
  s1*1/2
  <> \!
  <> _\>
  s1*1/2
  <> \!
  s1*3/2
  % XML measure 107
  \once \override Hairpin.stencil = ##f <> _\< % playback hairpin; absent in source PDF
  s1*11/2
  % XML measure 112
  <> \! % playback hairpin; absent in source PDF
  s1
  % XML measure 114
  <> _\<
  s1
  <> \!
  s1*7/2
  % XML measure 118
  <> _\>
  s1*11/16
  % XML measure 119
  <> \!
  s1*93/16
  % XML measure 125
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*5/2
  % XML measure 127
  <> \! % playback hairpin; absent in source PDF
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*3/2
  % XML measure 128
  <> \! % playback hairpin; absent in source PDF
  s1*6
  % XML measure 135
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*2
  % XML measure 136
  <> \! % playback hairpin; absent in source PDF
  s1*2
}

rightWedgeTwo = {
  s1*11
  % XML measure 12
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*15/16
  <> \! % playback hairpin; absent in source PDF
  s1*113/16
  % XML measure 20
  <> _\>
  s1*1/2
  <> \!
  s1*627/16
  % XML measure 59
  <> _\<
  s1*5/16
  <> \!
  s1*187/16
  % XML measure 71
  <> _\<
  s1*5/16
  <> \!
  s1*19/2
  % XML measure 81
  <> _\>
  s1*1/2
  <> \!
  s1*8
  % XML measure 90
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*15/16
  <> \! % playback hairpin; absent in source PDF
  s1*113/16
  % XML measure 98
  <> _\>
  s1*1/2
  <> \!
  s1*81/2
}

leftWedgeOne = {
  s1*11
  % XML measure 12
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*11/12
  <> \! % playback hairpin; absent in source PDF
  s1*337/12
  % XML measure 41
  <> ^\<
  s1*1/2
  <> \!
  <> ^\>
  s1*1/2
  <> \!
  s1*48
  % XML measure 90
  \once \override Hairpin.stencil = ##f <> _\> % playback hairpin; absent in source PDF
  s1*11/12
  <> \! % playback hairpin; absent in source PDF
  s1*475/12
  % XML measure 130
  <> _\<
  s1*1/2
  <> \!
  s1*8
}

pedalControl = {
  % XML measure 1
  <> \sustainOn
  s1*2
  % XML measure 2
  <> \sustainOff
  % XML measure 3
  <> \sustainOn
  s1*2
  % XML measure 4
  <> \sustainOff
  % XML measure 5
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 6
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 7
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 8
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 9
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 10
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 11
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 12
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 13
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 14
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 15
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 16
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 17
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 18
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 19
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 20
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 21
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 22
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 23
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 24
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 25
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 26
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 27
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 28
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 29
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 30
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 31
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 32
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 33
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 34
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  s1*1/2
  % XML measure 35
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  s1*5/4
  % XML measure 37
  <> \sustainOn
  s1*5/2
  % XML measure 39
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 40
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 41
  <> \sustainOn
  s1*2
  % XML measure 42
  <> \sustainOff
  % XML measure 43
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 44
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 45
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 46
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 47
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 48
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 49
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 50
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 51
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 52
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 53
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 54
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 55
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 56
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 57
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 58
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 59
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 60
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 61
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 62
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 63
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 64
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 65
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 66
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 67
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 68
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 69
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 70
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 71
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 72
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 73
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 74
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 75
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 76
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 77
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 78
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 79
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 80
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 81
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 82
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 83
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 84
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 85
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 86
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 87
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 88
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 89
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 90
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 91
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 92
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 93
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 94
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 95
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 96
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 97
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 98
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 99
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 100
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 101
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 102
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 103
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 104
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 105
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 106
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 107
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 108
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 109
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 110
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 111
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 112
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  s1*1/2
  % XML measure 113
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  s1*5/4
  % XML measure 115
  <> \sustainOn
  s1*5/2
  % XML measure 117
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 118
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 119
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 120
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 121
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 122
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 123
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 124
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 125
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 126
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 127
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 128
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 129
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 130
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 131
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 132
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 133
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 134
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 135
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 136
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 137
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 138
  <> \sustainOn
  s1
  <> \sustainOff
}

pedalLayout = {
  % XML measure 1
  <> \sustainOn
  s1*2
  % XML measure 2
  <> \sustainOff
  % XML measure 3
  <> \sustainOn
  s1*2
  % XML measure 4
  <> \sustainOff
  % XML measure 5
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 6
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 7
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 8
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 9
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 10
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 11
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 12
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 13
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 14
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 15
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 16
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 17
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 18
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 19
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 20
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 21
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 22
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 23
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 24
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 25
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 26
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 27
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 28
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 29
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 30
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 31
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 32
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 33
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 34
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  s1*1/2
  % XML measure 35
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  s1*5/4
  % XML measure 37
  <> \sustainOn
  s1*5/2
  % XML measure 39
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 40
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 41
  <> \sustainOn
  s1*2
  % XML measure 42
  <> \sustainOff
  % XML measure 43
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 44
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 45
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 46
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 47
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 48
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 49
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 50
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 51
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 52
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 53
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 54
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 55
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 56
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 57
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 58
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 59
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 60
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 61
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 62
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 63
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 64
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 65
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 66
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 67
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 68
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 69
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 70
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 71
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 72
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 73
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 74
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 75
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 76
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 77
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 78
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 79
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 80
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 81
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 82
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 83
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 84
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 85
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 86
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 87
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 88
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 89
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 90
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 91
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 92
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 93
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 94
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 95
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 96
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 97
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 98
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 99
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 100
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 101
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 102
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 103
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 104
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 105
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 106
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 107
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 108
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 109
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 110
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 111
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 112
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  s1*1/2
  % XML measure 113
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  s1*5/4
  % XML measure 115
  <> \sustainOn
  s1*5/2
  % XML measure 117
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 118
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  <> \sustainOn
  s1*1/4
  <> \sustainOff
  % XML measure 119
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 120
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 121
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 122
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 123
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 124
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 125
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  <> \sustainOn
  s1*1/2
  <> \sustainOff
  % XML measure 126
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 127
  <> \sustainOn
  s1
  <> \sustainOff
  s1
  % XML measure 129
  <> \sustainOn
  s1
  <> \sustainOff
  s1*2
  % XML measure 132
  <> \sustainOn
  s1
  <> \sustainOff
  s1*2
  % XML measure 135
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 136
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 137
  <> \sustainOn
  s1
  <> \sustainOff
  % XML measure 138
  <> \sustainOn
  s1
  % Keep the original release at 552 quarters visible on the final bar column.
  \once \override Staff.SustainPedal.non-musical = ##t
  \once \override Staff.SustainPedal.break-visibility = #all-visible
  <> \sustainOff
}

exactTempo = {
  s1*47/2
  % XML measure 24
  \tempo 4 = 152
  s1*1/8
  \tempo 4 = 144
  s1*1/8
  \tempo 4 = 132
  s1*1/16
  \tempo 4 = 120
  s1*1/16
  \tempo 4 = 112
  s1*1/16
  \tempo 4 = 80
  s1*1/16
  % XML measure 25
  \tempo 4 = 168
  s1*29/2
  % XML measure 39
  \tempo 4 = 160
  s1*1/8
  \tempo 4 = 152
  s1*1/8
  \tempo 4 = 144
  s1*1/8
  \tempo 4 = 136
  s1*1/8
  % XML measure 40
  \tempo 4 = 128
  s1*1/8
  \tempo 4 = 120
  s1*1/8
  \tempo 4 = 112
  s1*1/8
  \tempo 4 = 104
  s1*1/8
  \tempo 4 = 96
  s1*1/8
  \tempo 4 = 88
  s1*1/8
  \tempo 4 = 80
  s1*1/8
  \tempo 4 = 72
  s1*1/16
  \tempo 4 = 67
  s1*1/16
  % XML measure 41
  \tempo 4 = 62
  s1*2
  % XML measure 43
  \tempo 4 = 80
  s1*15/2
  % XML measure 50
  \tempo 4 = 78
  s1*1/6
  \tempo 4 = 76
  s1*1/12
  \tempo 4 = 72
  s1*1/12
  \tempo 4 = 62
  s1*1/12
  \tempo 4 = 48
  s1*1/12
  % XML measure 51
  \tempo 4 = 80
  s1*31
  % XML measure 82
  \tempo 4 = 76
  s1*1/4
  \tempo 4 = 72
  s1*1/4
  \tempo 4 = 68
  s1*1/6
  \tempo 4 = 64
  s1*1/6
  \tempo 4 = 56
  s1*1/6
  % XML measure 83
  \tempo 4 = 168
  s1*77/4
  % XML measure 102
  \tempo 4 = 152
  s1*1/4
  \tempo 4 = 144
  s1*1/4
  \tempo 4 = 132
  s1*1/16
  \tempo 4 = 120
  s1*1/16
  \tempo 4 = 112
  s1*1/16
  \tempo 4 = 80
  s1*1/16
  % XML measure 103
  \tempo 4 = 168
  s1*29
  % XML measure 132
  \tempo 4 = 166
  s1*1/2
  \tempo 4 = 164
  s1*1/2
  % XML measure 133
  \tempo 4 = 162
  s1*1/4
  \tempo 4 = 160
  s1*1/4
  \tempo 4 = 158
  s1*1/4
  \tempo 4 = 156
  s1*1/4
  % XML measure 134
  \tempo 4 = 154
  s1*1/8
  \tempo 4 = 152
  s1*1/8
  \tempo 4 = 150
  s1*1/8
  \tempo 4 = 148
  s1*3/16
  \tempo 4 = 146
  s1*3/16
  \tempo 4 = 144
  s1*5/16
  % XML measure 135
  \tempo 4 = 142
  s1*5/16
  \tempo 4 = 140
  s1*3/16
  \tempo 4 = 138
  s1*1/4
  \tempo 4 = 136
  s1*3/16
  % XML measure 136
  \tempo 4 = 132
  s1*1/4
  \tempo 4 = 128
  s1*1/4
  \tempo 4 = 122
  s1*1/4
  \tempo 4 = 116
  s1*1/4
  % XML measure 137
  \tempo 4 = 80
  s1
  % XML measure 138
  \tempo 4 = 54
  s1
}

scoreMusic =
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano"
    \new Staff = "1" <<
      \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
      \new Voice = "rightMain" { \voiceOne \PartPOneVoiceOne }
      \new Voice = "rightSecondary" { \voiceTwo \PartPOneVoiceTwo }
      \new Voice = "rightDynamics" { \rightDynamics }
      \new Voice = "rightWedgeOne" { \rightWedgeOne }
      \new Voice = "rightWedgeTwo" { \rightWedgeTwo }
      \new Voice = "exactTempo" { \set Score.tempoHideNote = ##t \exactTempo }
    >>
    \new Staff = "2" <<
      \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
      \new Voice = "leftMain" { \voiceOne \PartPOneVoiceFive }
      \new Voice = "leftSecondary" { \voiceTwo \PartPOneVoiceSix }
      \new Voice = "leftTertiary" { \voiceThree \PartPOneVoiceSeven }
      \new Voice = "leftDynamics" { \leftDynamics }
      \new Voice = "leftWedgeOne" { \leftWedgeOne }
      \tag #'layout \new Voice = "printedPedal" { \pedalLayout }
      \tag #'midi \new Voice = "pedalControl" { \pedalControl }
    >>
  >>
\score {
  \removeWithTag #'midi \scoreMusic
  \layout {}
}
\score {
  \removeWithTag #'layout \scoreMusic
  \midi {
    \context { \Voice
      \remove "Dynamic_performer"
      \remove "Piano_pedal_performer"
    }
    \context { \Staff
      \consists "Dynamic_performer"
      \consists "Piano_pedal_performer"
    }
  }
}
