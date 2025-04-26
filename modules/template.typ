#let template(title, author, body) = {
  set page(
    paper: "a4",
    margin: 1.5cm,
  )
  set document(title: title, author: author)
  set text(font: "Pretendard", 10pt)
  set par(leading: 0.9em, spacing: 2em)

  show heading.where(level: 1): it => {
    set text(16pt)
    set block(above: 2em, below: 1em)
    it
  }

  show link: it => {
    set text(blue)
    it
  }

  // DEBUG
  // show block: set block(fill: red)

  body
}
