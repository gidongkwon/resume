#let template(title, author, body) = {
  set page(
    paper: "a4",
    margin: 1.5cm,
  )
  set document(title: title, author: author)
  set text(font: "Pretendard", 10pt, lang: "ko")
  set par(leading: 0.9em, spacing: 2em)

  show heading.where(level: 1): it => {
    set text(16pt)
    set block(above: 2em, below: 1em)
    it
  }
  show heading.where(level: 2): it => {
    set block(below: 1em)
    it
  }

  show link: it => {
    set text(blue)
    it
  }

  // https://forum.typst.app/t/how-to-change-spacing-between-list-items/999
  set list(spacing: 1.1em)
  // https://forum.typst.app/t/how-to-change-spacing-between-list-item-paragraphs/1060/2
  show list: e => {
    show par: p => {
      p
      v(1.1em, weak: true)
    }
    e
  }

  // DEBUG
  // show block: set block(fill: red)

  body
}
