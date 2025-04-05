#import "modules/date.typ": *
#import "modules/entries.typ": *
#import "modules/tech-stack.typ": *
#import "modules/template.typ": template

#show: template.with("이력서 - 권기동", "권기동")

#let config = toml("config.toml")

#text(24pt, weight: "bold")[권기동]

사용자에게 와닿는 소프트웨어를 만드는 데 매력을 느끼는 개발자입니다.
게임 프로그래밍을 고등학생 시절부터 꾸준히 해오다, 지금은 웹 프론트엔드로 관심 분야를 옮겨왔습니다.
사용자 경험을 고려한 UI/UX 설계와 성능 최적화에 관심이 많습니다.

#table(
  columns: 2,
  stroke: none,
  [GitHub], link("https://github.com/gidongkwon", `gidongkwon`),
  [Email], `lucidfext@gmail.com`,
  ..if config.show_mobile {
    ([Mobile], raw(config.mobile))
  },
)

= Skills
== Overall
- 필요하다면 새 기술을 익히고 빠르게 적용할 수 있습니다. 공식 문서, Discord 등의 개발자 커뮤니티, GitHub 이슈 등 다양한 경로를 통해 트러블슈팅할 수 있습니다.
- Python, JavaScript를 사용해 개발/운영에서의 반복적인 문제를 해결하는 스크립트를 작성한 경험이 있습니다.
- 개발/운영에서 사용하는 C\#으로 작성된 오픈소스 CLI 프로그램에서 느린 부분을 분석하고 수정하여 실행 속도를 개선한 경험이 있습니다.

== Web
- 카카오톡 인앱브라우저, iOS Safari, OBS Browser Plugin 등에서의 레이아웃 트러블슈팅 경험이 있습니다.

== JavaScript
- TypeScript 뿐만 아니라 JavaScript로 컴파일되는 다른 언어(ReScript, Moonbit) 등을 이용해 JS/TS Interoperability를 가지는 코드를 작성한 경험이 있습니다.

= Work Experience
#company-entry(
  name: "데브시스터즈",
  team: "쿠키런 킹덤",
  role: "클라이언트 엔지니어",
  tech-stacks: (tech-stacks.csharp, tech-stacks.unity, tech-stacks.git),
  date-from: datetime(year: 2018, month: 3, day: 5),
  date-to: datetime(year: 2020, month: 10, day: 21),
  summary: "쿠키런 킹덤의 전투 파트 구성원으로서 캐릭터의 스킬과 맵, 전투 시스템 관련 기능을 구현했습니다.",
)[
  #work-detail(
    title: "전투 시스템 개발",
    description: "캐릭터 스킬과 버프/디버프, 전투 상황에 따른 자연스러운 맵 루핑/이동 등의 전투 시스템 전반의 개발에 참여했습니다. 엑셀 데이터를 기반으로 스킬을 구현할 수 있도록 하는 스킬 시스템의 토대를 구현했습니다.",
  )
  #work-detail(
    title: "맵툴 개발",
    description: "유니티 에디터 확장 API와 Odin Inspector 플러그인을 활용하여 별도의 프로그램 전환 없이 유니티 프로젝트 내에서 맵을 제작하고 편집할 수 있는 툴을 구현했습니다.",
  )
  #work-detail(
    title: "Unity Cache Server 도입으로 초기 프로젝트 로딩 속도 개선",
    description: "프로젝트 규모가 커져감에 따라 초기 프로젝트 로딩 속도가 느려지는 문제가 있었습니다. 이를 해결하기 위해 빌드 서버에 Unity Cache Server(이후 Unity Accelerator)를 구축하고 엔지니어 뿐만 아니라 아트, 기획팀 내에도 이를 사용할 수 있도록 안내하여 10분 이상 걸리던 초기 프로젝트 로딩을 2분 이내로 개선했습니다.",
  )
]

#pagebreak()

= Projects #super([중요도 순])
#project-entry(
  name: "aya.gg",
  type: (project-type.team)(2),
  role: "프론트엔드 개발",
  tech-stacks: (
    tech-stacks.react,
    tech-stacks.typescript,
    tech-stacks.nextjs,
    tech-stacks.radix-ui,
    tech-stacks.stitches,
    tech-stacks.react-query,
    tech-stacks.jotai,
    tech-stacks.git,
  ),
  date-from: datetime(year: 2021, month: 1, day: 11),
  date-to: datetime(year: 2024, month: 1, day: 4),
  summary: "쿼터뷰 배틀로얄 게임 이터널 리턴의 전적 검색, 도감 정보, 루트 시뮬레이터 등을 제공하는 웹사이트입니다.
3년의 운영기간 동안 총 활성 세션 수 2,359,539를 기록하였습니다. 실 사용자들과의 피드백 루프를 경험할 수 있게 해준 프로젝트입니다. 디자인과 프론트엔드 구현을 담당했습니다.",
)[
  #work-detail(
    title: "화면 크기 변경 퍼포먼스 개선, 모바일 환경에서의 입력 반응 속도 개선",
    description: "루트 시뮬레이터의 지도는 이미지 맵으로 상호영역을 잡은 후 그 위에 SVG를 그리는 식으로 동작합니다. 이때 두 영역의 크기를 동기화하기 위해 ResizeObserver를 사용했는데, 이것이 특정 브라우저나 환경에서 느린 성능을 보이는 것을 발견했습니다. 이를 해결하기 위해 viewBox와 CSS transform을 활용하여 SVG의 크기를 조정하는 방식으로 변경했습니다. 이로 인해 모바일 환경에서의 입력 반응 속도 또한 개선되었습니다.",
  )
  #work-detail(
    title: "FCP 개선",
    description: "Cloudflare CDN을 붙이고 SSR을 구현한 후 FCP가 비정상적으로 높아진 것을 발견했습니다. react-query를 통해 Hydration 되는 데이터의 크기가 비정상적으로 큰 것을 감지했습니다. 또한 BFF와 API서버 간 전송이 의도치 않게 Cloudflare를 통해 이루어지는 것이 RTT를 크게 증가시키는 원인이라는 것을 발견했습니다. 이를 해결하기 위해 브라우저 캐시를 활용할 수 있도록 Hydration 과정을 없애고 SSR과 CSR시 사용하는 데이터 소스를 분리하는 과정을 거치고, BFF와 API서버 간의 통신을 Cloudflare를 거치지 않고 직접 통신하도록 변경했습니다. 이로 인해 첫 접속 기준 FCP가 10초에서 1.5초 이내로 개선되었습니다.",
  )
  #work-detail(
    title: "국제화",
    description: "i18next를 사용하여 국제화를 구현했습니다. 한국어, 영어, 일본어, 프랑스어 4개 언어를 지원했습니다. 이후 typesafe-i18n으로 마이그레이션하여 DX를 개선했습니다.",
  )
]
#project-entry(
  name: "Scatter",
  type: project-type.personal,
  tech-stacks: (
    tech-stacks.react,
    tech-stacks.typescript,
    tech-stacks.remix,
    tech-stacks.shadcn,
    tech-stacks.tailwind,
    tech-stacks.jj,
  ),
  date-from: datetime(year: 2024, month: 1, day: 1),
  date-to: datetime(year: 2024, month: 11, day: 30),
  summary: "이미지 생성 모델을 활용한 웹 2D 게임 프로토타이핑 툴입니다. Entity-Component-System 기반의 코어를 바탕으로 JavaScript로 스크립트를 작성할 수 있는 기능을 지원합니다.",
)[
  // #work-detail(
  //   title: "ECS",
  //   description: "",
  // )
]

= Experiences
#table(
  columns: 2,
  stroke: none,
  display-year([2022 - 2024]), [선린인터넷고등학교 해커톤 심사위원],
  display-year([2022 - 2023]), [컴퓨터공학과 게임개발 동아리 PLUM 유니티 스터디 리더],
  display-year([2015 - 2016]), [Vivaldi 브라우저 한국어 번역, Mini Metro 한국어 번역],
)

= Education
#table(
  columns: 2,
  stroke: none,
  display-range(datetime(year: 2016, month: 3, day: 1), datetime(year: 2025, month: 2, day: 21)),
  [서울과학기술대학교 컴퓨터공학과 졸업],

  display-range(datetime(year: 2013, month: 3, day: 1), datetime(year: 2016, month: 2, day: 28)),
  [선린인터넷고등학교 웹운영과 졸업],
)

= Awards
#table(
  columns: 2,
  stroke: none,
  display-year(2024), [컴퓨터공학과 우수 졸업작품 선정, 서울과학기술대학교],
  display-year(2015), [정보올림피아드 공모부문 동상, 한국정보화진흥원],
  display-year(2014), [Smarteen App Challenge 2014 엔터테인먼트 부문 가작, SK플래닛],
  display-year(2014), [서울특별시 기능경기대회 게임개발 직종 우수상, 서울특별시기능경기위원회],
  display-year(2014), [특성화고 창의아이디어 경진대회 동상, 서울특별시장],
)
