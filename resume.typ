#import "modules/date.typ": *
#import "modules/entries.typ": *
#import "modules/chips.typ": *
#import "modules/template.typ": template

#show: template.with("이력서 - 권기동", "권기동")

#grid(
  columns: (1fr, auto),
  [
    #text(24pt, weight: "bold")[권기동] Gidong Kwon
  ],
  table(
    inset: 3pt,
    rows: 2,
    columns: 2,
    column-gutter: 2em,
    stroke: none,
    [GitHub], [Email],
    link("https://github.com/gidongkwon", `gidongkwon`), `lucidfext@gmail.com`,
  ),
)

서비스를 사용할 때 사용자 입장에서는 어떤 생각을 하게 되는지, 사용자가 다른 요구사항을 기대하고 들어왔을 때 어떤 불편함이 생기는지 생각하고 개선하는 걸 즐깁니다. 이를 위한 효율적 UI 설계와 성능 최적화에 관심이 많습니다.

= Work Experience
#company-entry(
  name: [Pensive],
  team: [],
  role: [Frontend Contractor (계약직)],
  tech-stacks: (tech-stacks.react, tech-stacks.typescript, tech-stacks.tanstack-start, tech-stacks.firebase-rtdb),
  date-from: datetime(year: 2025, month: 8, day: 19),
  date-to: datetime(year: 2026, month: 4, day: 16),
  summary: [실리콘밸리의 AI 교육 소프트웨어 스타트업 Pensive의 파트타임 프로그래머로서 React 기반 교육 SaaS 프런트엔드에서 평가·피드백·과제 관리 기능을 개발하며 복잡한 사용자 요구사항을 제품화했습니다.],
)[
  #work-detail(
    title: [AI-native 개발 플로우 경험],
    description: [작은 팀으로 많은 일을 하기 위하여 AI Agent를 적극적으로 활용했습니다. Codex와 Claude Code를 병행 사용하며, 기획, 개발, 리뷰에 모두 AI를 적극적으로 활용하였으며, Human-in-the-Loop가 매우 중요하다고 생각합니다. 최신 AI 사용 기법들을 빠르게 접하고 사용해보는 것을 반복하며, AI 개발 트렌드를 실시간으로 파악하고자 노력했습니다.],
  )
  #work-detail(
    title: [튜토리얼 시스템 구축],
    description: [재사용 가능한 온보딩 튜토리얼 시스템을 구축했습니다. state machine, anchor registry/provider, gating, analytics tracking, debug tooling, E2E 테스트를 포함한 재사용 가능한 온보딩 인프라를 설계했습니다.],
  )
  #work-detail(
    title: [Annotation 고도화],
    description: [annotation 기반 평가 경험을 고도화해 anchored feedback, annotation-rubric matching, emoji annotation, 접근성 및 포커스 관리 개선까지 구현하며 평가자 인터랙션의 정확도와 완성도를 높였습니다.],
  )
  #work-detail(
    title: [DX 개선],
    description: [React Compiler 도입과 대규모 UI/라우팅 코드 정비를 수행하고, TanStack Start·Partial SSR 전환 과정의 인증 상태 처리 및 사용자 플로우 안정화에 기여했습니다.],
  )
]

#line(length: 100%, stroke: luma(90%))

#company-entry(
  name: [데브시스터즈],
  team: [쿠키런 킹덤],
  role: [클라이언트 엔지니어],
  tech-stacks: (tech-stacks.unity, tech-stacks.csharp, tech-stacks.git, tech-stacks.spine),
  date-from: datetime(year: 2018, month: 3, day: 5),
  date-to: datetime(year: 2020, month: 10, day: 31),
  summary: [쿠키런 킹덤의 전투 파트 구성원으로서 캐릭터의 스킬과 맵, 전투 시스템 관련 기능을 구현했습니다.],
)[
  #work-detail(
    title: [캐릭터 스킬, 버프/디버프 시스템 개발],
    description: [초기에는 기획안을 바탕으로 전투 시스템과 캐릭터의 스킬을 구현했으며, 이후 프로그래머를 통하지 않고 유연하게 실험을 진행할 수 있도록 엑셀 데이터를 기반으로 코딩하지 않고도 스킬을 구현할 수 있도록 하는 시스템의 토대를 구현했습니다.],
  )
  #work-detail(
    title: [맵 이동 시스템 개발],
    description: [여러 캐릭터가 실시간으로 대형을 바꾸어 줄지어 뛰어가고 점프하며, 전투가 끝나기 전에는 특정 영역의 맵이 반복되도록 하는 시스템을 구현했습니다.],
  )
  #work-detail(
    title: [맵툴 개발],
    description: [유니티 에디터 확장 API와 Odin Inspector 플러그인을 활용하여 외부 툴 대신 유니티 프로젝트 내에서 맵을 제작하고 편집할 수 있는 툴을 구현했습니다.],
  )
]

#line(length: 100%, stroke: luma(90%))

= Community Engagement
- 선린인터넷고등학교 해커톤, 경진대회 게임부문 심사위원 #h(0.5em) #display-year([2022 - 2024])
- 컴공인의 밤 발표 - 게임업계 경험 #h(0.5em) #display-year([2023])
- 컴퓨터공학과 게임개발 동아리 PLUM 유니티 스터디 리더 #h(0.5em) #display-year([2022, 2023])
- #link("https://vivaldi.com/", [Vivaldi 브라우저]), #link("https://store.steampowered.com/app/287980/Mini_Metro/", [Mini Metro]) 한국어 번역 #h(0.5em) #display-year([2015, 2016])

= Education
#table(
  columns: 2,
  stroke: none,
  display-range(datetime(year: 2016, month: 3, day: 1), datetime(year: 2025, month: 2, day: 21)),
  [서울과학기술대학교 컴퓨터공학과 졸업],

  display-range(datetime(year: 2013, month: 3, day: 1), datetime(year: 2016, month: 2, day: 28)),
  [선린인터넷고등학교 웹운영과 졸업],
)
