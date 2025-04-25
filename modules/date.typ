#let format-date(date) = {
  if date == datetime.today() {
    // [NOW]
  } else {
    date.display("[year]. [month]")
  }
}

#let display-range(from, to, show-duration: false) = {
  [
    #set text(luma(30%), number-width: "tabular")
    #let year = to.year() - from.year()
    #let month = to.month() - from.month()
    #if month < 0 {
      year = year - 1
      month = month + 12
    }
    #format-date(from) - #format-date(to) #if show-duration [
      (#if year != 0 [#year;년]#if year != 0 and month != 0 [ ]#if month != 0 [#month;개월])]
  ]
}

#let display-year(year) = {
  [
    #set text(luma(53%), number-width: "tabular", 0.8em, baseline: -0.1em)
    #year
  ]
}
