#import "lib.typ": *

#show: doc => risi-pro(
  title: "My Document",
  authors: ("John Doe"),
  date: datetime.today(),
  doc
)

#title[Here is a Title]

#heading[
  = Fist Level Heading
]

#normal[
  This is a normal Paragraph
]

#quote[
  This is a quote.
]

#lightblueCode[
  ```typst
  #lightblueCode is used to display Code.
  ```
]