#let style(body) = {

  set page(
    width: 29.7cm,
    height: 21cm,
    margin: (top: 1.7cm),
  )

  set text(font: "JetBrains Mono", lang: "it", size: 24pt)

  set heading(numbering: "1.a")
  show heading: it => {
    context {
      pagebreak()
      box(fill: color.orange, it.body)
    }
  }
  body
}
