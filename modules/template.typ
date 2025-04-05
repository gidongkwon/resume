#let template(title, author, body) = {
  set page(
    paper: "a4",
    margin: 1.5cm,
  )
  set document(title: title, author: author)

  set text(font: "Pretendard")

  // show heading:
  show heading.where(level: 1): it => {
    set text(16pt)
    set block(above: 2em)
    it
  }
  // show heading.where(level: 2): it => text(13pt)[#it]

  // DEBUG
  // show block: set block(fill: red)

  body
}
