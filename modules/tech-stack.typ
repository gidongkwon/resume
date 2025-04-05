#let tech-stacks = (
  csharp: "C#",
  unity: "Unity",
  react: "React",
  typescript: "TypeScript",
  python: "Python",
  git: "Git",
  jj: "JJ(VCS)",
  svelte: "Svelte",
  nextjs: "Next.js",
  remix: "Remix",
  stitches: "Stitches",
  radix-ui: "Radix UI",
  shadcn: "shadcn/ui",
  tailwind: "Tailwind",
  react-query: "React Query",
  i18next: "i18next",
  jotai: "Jotai",
)

#let chips(tech-stacks) = for stack in tech-stacks {
  box(
    fill: luma(95%),
    inset: 0.4em,
    radius: 4pt,
    baseline: 25%,
    [
      #set text(0.8em, luma(40%), font: "DejaVu Sans Mono")
      #stack
    ],
  )
  " "
}
