#import "date.typ"
#import "chips.typ" as tech-stack

#let project-type = (
  team: member-count => "팀 프로젝트 - " + str(member-count) + "인",
  personal: "개인 프로젝트",
)

#let _entry(header, sub-header, summary, date-from, date-to, tech-stacks, children) = block(above: 2em)[
  #grid(columns: (0.5fr, 1fr), gutter: 2em)[
    #grid(rows: 5, gutter: 1.6em)[
      #date.display-range(date-from, date-to, show-duration: true)\
    ][
      #set text(14pt, weight: "medium")
      #header
    ][
      #set text(10pt)
      #sub-header
    ][
      #set text(luma(35%))
      #summary
    ][
      #text(weight: "medium")[기술 스택] \
      #tech-stack.chips-in-one(tech-stacks)
    ]
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
  [#type \ #text(luma(35%))[#role]],
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
  below: 1.5em,
  [
    - #text(weight: "medium")[#title] \
      #text(luma(35%))[#description]
  ],
)

#let portfolio-entry-counter = counter("portfolio-entry");
#let portfolio-entry-title(
  title,
  tech-stacks,
) = [
  #portfolio-entry-counter.step()
  #context if portfolio-entry-counter.get() != (1,) {
    v(1.5em)
    line(length: 100%, stroke: (paint: luma(80%), dash: "dashed"))
  }
  = #title
  #tech-stack.chips-in-one(tech-stacks)
]

#let portfolio-work-detail(
  title,
  tech-stacks,
  content,
) = block([
  == #title #h(0.3em) #text(weight: "regular", luma(80%))[|] #h(0.3em) #text(
    weight: "regular",
    0.8em,
  )[#tech-stack.chips-in-one(tech-stacks)]
  // #v(-1em)
  #block(inset: (left: 0.3cm))[
    #content
  ]
])
