#import "modules/date.typ": *
#import "modules/entries.typ": *
#import "modules/chips.typ": *
#import "modules/template.typ": template

#show: template.with("이력서 - 권기동", "권기동")

#let config = toml("config.toml")

#text(24pt, weight: "bold")[권기동] Gidong Kwon

#table(
  rows: 2,
  columns: 3,
  stroke: none,
  [GitHub], [Email], if config.show_mobile [Mobile],
  link("https://github.com/gidongkwon", `gidongkwon`),
  `lucidfext@gmail.com`,
  if config.show_mobile [#raw(config.mobile)],
)

쓸모 있는 소프트웨어를 만드는 데 매력을 느끼는 개발자입니다. \
고등학생 시절부터 게임 프로그래밍을 꾸준히 해오다, 지금은 웹 프론트엔드로 관심 분야를 옮겨왔습니다. \
사용자 경험을 고려한 UI/UX 설계와 성능 최적화에 관심이 많습니다.

= Featured Project
#project-entry(
  name: "aya.gg v1",
  type: (project-type.team)(2),
  role: "디자인(100%), 프론트엔드 개발(90%)",
  tech-stacks: (
    tech-stacks.react,
    tech-stacks.typescript,
    tech-stacks.nextjs,
    tech-stacks.radix-ui,
    tech-stacks.stitches,
    tech-stacks.react-query,
    tech-stacks.jotai,
    tech-stacks.i18next,
    tech-stacks.git,
    tech-stacks.google-analytics,
    tech-stacks.ms-clarity,
  ),
  date-from: datetime(year: 2021, month: 1, day: 11),
  date-to: datetime(year: 2024, month: 1, day: 4),
  summary: "쿼터뷰 배틀로얄 게임 이터널 리턴의 전적 검색, 통계, 도감 정보, 루트 시뮬레이터 등을 제공하는 웹사이트입니다.
제가 팀에 참여했던 3년의 운영기간 동안 총 활성 세션 수 2,359,539를 기록하였습니다.
실 사용자들과 메신저, 메일, 댓글 등으로 피드백을 주고받으면서 제품을 유용하게 개선하는 경험을 했습니다.",
)[
  #work-detail(
    title: "화면 크기 변경 퍼포먼스 개선, 모바일 환경에서의 입력 반응 속도 개선",
    description: "루트 시뮬레이터의 지도는 이미지 맵(<area>)으로 상호작용 영역을 잡은 후 그 위에 SVG를 그리는 식으로 동작합니다. 이때 두 영역의 크기를 동기화하기 위해 ResizeObserver를 사용했는데, 이것이 특정 브라우저나 환경에서 느린 성능을 보이는 것을 발견했습니다. 이를 해결하기 위해 SVG viewBox와 CSS transform을 활용하여 SVG의 크기를 조정하는 방식으로 변경했습니다. 이로 인해 모바일 환경에서의 입력 반응 속도 또한 개선되었습니다.",
  )
  #work-detail(
    title: "FCP 개선",
    description: "Cloudflare CDN을 붙이고 SSR을 구현한 후 FCP가 비정상적으로 높아진 것을 발견했습니다. React Query를 통해 Hydration 되는 데이터의 크기가 비정상적으로 큰 것을 감지했습니다. 또한 BFF와 API서버 간 전송이 의도치 않게 Cloudflare를 통해 이루어지는 것이 RTT를 크게 증가시키는 원인이라는 것을 발견했습니다. 이를 해결하기 위해 브라우저 캐시를 활용할 수 있도록 Hydration 과정을 없애고 SSR과 CSR시 사용하는 데이터 소스를 분리하는 과정을 거치고, BFF와 API서버 간의 통신을 Cloudflare를 거치지 않고 직접 통신하도록 변경했습니다. 이로 인해 첫 접속 기준 FCP가 10초에서 1.5초 이내로 개선되었습니다.",
  )
  #work-detail(
    title: "방송용 위젯 표시를 위한 OBS Browser Plugin에서의 레이아웃 트러블슈팅",
    description: "OBS 크로미움의 버전이 77로 낮아 CSS grid와 flex를 쓸 수 없었습니다. 이미 사이트의 다른 부분은 완성되어 있었기 때문에 공통 사용 컴포넌트를 특정 환경 전용으로 작성하여 두 벌 관리해야 하는 상황에 처해있었습니다. CSS-in-JS 라이브러리 Stitches로 Flex 컴포넌트를 구현하여 레이아웃을 구성하고 있었기 때문에, 최대한 외부의 기존 레이아웃 코드를 건드리지 않고 Flex 컴포넌트 내부에서 분기하여 negative margin으로 gap 동작을 폴리필하는 코드를 추가하는 방식으로, wrap 동작의 정확성을 희생하여 코드베이스의 복잡도를 크게 늘리지 않는 선에서 관리할 수 있었습니다.",
  )
  #work-detail(
    title: "국제화 대응",
    description: "i18next를 사용하여 URL 베이스의 국제화를 구현했습니다. 한국어, 영어, 일본어, 프랑스어 4개 언어를 지원했습니다. 이후 코드젠 기반의 typesafe-i18n으로 마이그레이션하여 DX를 개선했습니다.",
  )
]

#pagebreak()

= Work Experience
#company-entry(
  name: "데브시스터즈",
  team: "쿠키런 킹덤",
  role: "클라이언트 엔지니어",
  tech-stacks: (tech-stacks.unity, tech-stacks.csharp, tech-stacks.git, tech-stacks.spine),
  date-from: datetime(year: 2018, month: 3, day: 5),
  date-to: datetime(year: 2020, month: 10, day: 31),
  summary: "쿠키런 킹덤의 전투 파트 구성원으로서 캐릭터의 스킬과 맵, 전투 시스템 관련 기능을 구현했습니다.",
)[
  #work-detail(
    title: "전투 시스템 개발",
    description: "캐릭터 스킬과 버프/디버프, 전투 상황에 따른 자연스러운 맵 루핑, 이동 등의 전투 시스템 전반의 개발에 참여했습니다. 엑셀 데이터를 기반으로 코딩을 하지 않고도 기획자의 작업을 통해서 스킬을 구현할 수 있도록 하는 시스템의 토대를 구현했습니다.",
  )
  #work-detail(
    title: "맵툴 개발",
    description: "유니티 에디터 확장 API와 Odin Inspector 플러그인을 활용하여 별도의 프로그램 전환 없이 유니티 프로젝트 내에서 맵을 제작하고 편집할 수 있는 툴을 구현했습니다.",
  )
  #work-detail(
    title: "Unity Cache Server 도입으로 초기 프로젝트 로딩 속도 개선",
    description: "프로젝트 규모가 커져감에 따라 초기 프로젝트 로딩 속도가 느려지는 문제가 있었습니다. 이를 해결하기 위해 빌드 서버에 Unity Cache Server(이후 Unity Accelerator)를 구축하여 10분 이상 걸리던 초기 프로젝트 로딩을 2분 이내로 400% 개선했습니다. 엔지니어 뿐만 아니라 아트, 기획팀 동료들에게도 좋은 반응을 얻었습니다.",
  )
]

= Experiences
- Web #h(0.5em) #display-year([_2021-_]) #h(1fr) #chips-in-one((tech-stacks.react, tech-stacks.svelte, tech-stacks.typescript, tech-stacks.tailwind, tech-stacks.shadcn, tech-stacks.etc))
  - 오픈소스 영상 편집 소프트웨어 #link("https://github.com/cartesiancs/nugget-app", [Nugget]) 기여
    - 캔버스 기반 렌더러를 리팩토링하여 약 2000줄의 중복 코드 제거 #link("https://github.com/cartesiancs/nugget-app/pull/38", [\#38]) #link("https://github.com/cartesiancs/nugget-app/pull/33", [\#33])
    - WebGL 필터 로직 재설계를 통한 UI 스터터링 제거 (평균 48ms -> 0.262ms, 18434% 개선) #link("https://github.com/cartesiancs/nugget-app/pull/36", [\#36])
  - #link("https://github.com/gidongkwon/ecs-collision-webworker", [ecs-collision-webworker]), Web Worker를 사용한 ECS 기반의 게임 충돌 계산 속도 개선 실험
  - #link("https://github.com/gidongkwon/logseq-plugin-tags", [logseq-plugin-tags]), Logseq에서 Obsidian의 태그 기능을 모사한 플러그인
  - kana-hangul, 일본어 가나를 한국어 발음으로 옮겨주는 ReScript 라이브러리 #badge([Private])
  - noraebang, 위 라이브러리를 활용한 재생 싱크 동기화 방식 노래방 서비스 #badge([Private])
- Game Development #h(0.5em) #display-year([2014-]) #h(1fr) #chips-in-one((tech-stacks.unity, tech-stacks.csharp, tech-stacks.directx9, tech-stacks.cpp))
  - Unity 에디터 API를 활용한 엔진 내에서 사용할 수 있는 레벨 에디터 개발
  - #link("https://github.com/Seeyou2000/SE_UNO_Project", [멀티플레이어 우노 프로젝트])에서 pygame 사용에 익숙하지 않은 팀원들을 위한 2D 게임 프레임워크 개발
  - 선린인터넷고등학교 웹개발심화(웹게임) 소수전공 강사, #link("https://github.com/gidongkwon/light2d-es6", [강의용 프레임워크]) #h(0.5em) #display-year([2017])
  - The Mechanics, 블록코딩 게임, 정보올림피아드 공모부문 동상 #h(0.5em) #display-year([2022 - 2024])
  - 선린인터넷고등학교 게임개발기능반용 DirectX 9 2D 프레임워크 개발 #h(0.5em) #display-year([2014])
- Community Engagement
  - 선린인터넷고등학교 해커톤, 경진대회 게임부문 심사위원 #h(0.5em) #display-year([2022 - 2024])
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
