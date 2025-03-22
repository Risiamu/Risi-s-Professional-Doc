#import "lib.typ"

#show: doc => risi-pro.with(
  title: "My Document",
  author: "John Doe",
  date: datetime.today()
)(doc)

#import "lib.typ": *

#show: doc => risi-pro(
  title: "My Document",
  authors: ("John Doe"),
  date: datetime.today(),
  body: doc
)
