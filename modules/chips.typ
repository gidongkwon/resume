#let tech-stacks = (
  // VCS
  git: "Git",
  jj: "JJ(VCS)",
  // Web
  react: "React",
  typescript: "TypeScript",
  svelte: "Svelte",
  lit: "Lit",
  nextjs: "Next.js",
  reactrouter7: "React Router 7",
  stitches: "Stitches",
  radix-ui: "Radix UI",
  shadcn: "shadcn/ui",
  tailwind: "Tailwind",
  react-query: "React Query",
  i18next: "i18next",
  jotai: "Jotai",
  zustand: "Zustand",
  framer-motion: "Framer Motion",
  // Game
  directx9: "DirectX 9",
  cpp: "C++",
  csharp: "C#",
  unity: "Unity",
  spine: "Spine",
  // Others
  google-analytics: "Google Analytics",
  ms-clarity: "Microsoft Clarity",
  python: "Python",
  etc: "etc",
)

#let chips(tech-stacks) = for stack in tech-stacks {
  box(
    fill: luma(95%),
    inset: 0.4em,
    radius: 4pt,
    baseline: 25%,
    [
      #set text(0.8em, luma(25%), font: "DejaVu Sans Mono")
      #stack
    ],
  )
  " "
}

#let chips-in-one(tech-stacks) = [
  #set text(0.8em, luma(35%), font: "DejaVu Sans Mono", baseline: -0.1em)
  #for stack in tech-stacks.slice(0, tech-stacks.len() - 1) {
    stack
    [, ]
  }
  #tech-stacks.last()
]

#let badge(content) = {
  box(
    fill: rgb("#fff6e2"),
    inset: 0.2em,
    radius: 4pt,
    [
      #set text(0.7em, rgb("#7a612a"), font: "DejaVu Sans Mono")
      #content
    ],
  )
}
