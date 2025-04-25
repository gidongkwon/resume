#import "date.typ"
#import "chips.typ" as tech-stack

#let project-type = (
  team: member-count => "팀 프로젝트 - " + str(member-count) + "인",
  personal: "개인 프로젝트",
)

#let _entry(header, sub-header, summary, date-from, date-to, tech-stacks, children) = block(above: 2em)[
  #grid(rows: 4, row-gutter: 1em)[
    #set text(14pt)
    #header
    #set text(10pt)
    #sub-header
    #h(1fr)
    #date.display-range(date-from, date-to, show-duration: true)\
  ][
    #summary
  ][
    #tech-stack.chips(tech-stacks)
  ][
    #children
  ]
]

#let company-entry(
  name: str,
  team: str,
  role: str,
  tech-stacks: (),
  date-from: datetime,
  date-to: datetime,
  summary: str,
  children,
) = _entry(
  [#name],
  [#team #role],
  [#summary],
  date-from,
  date-to,
  tech-stacks,
  children,
)

#let project-entry(
  name: str,
  type: project-type,
  role: "",
  tech-stacks: (),
  date-from: datetime,
  date-to: datetime,
  summary: str,
  children,
) = _entry(
  [#name],
  [#type / #role],
  [#summary],
  date-from,
  date-to,
  tech-stacks,
  children,
)

#let work-detail(
  title: str,
  description: str,
) = block(
  above: 1em,
  [
    - #title \
      #description
  ],
)
