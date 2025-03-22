#import "lib.typ": *

#show: doc => risi-pro(
  title: "My Document",
  authors: ("John Doe"),
  date: datetime.today(),
  doc
)

#title[
  Sample Document
  ]

#heading1[
  = Fist Level Heading
]

#normal[
  This is a normal Paragraph
]

#quote[
  This is a quote.
]

#lightblueCode[
  #raw("
  #lightblueCode is used to display Code.
  And it support multiline like this.
  Just remember to enclose a #raw
  ", lang: "typst")
]
