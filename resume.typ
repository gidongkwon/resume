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
  column-gutter: 2em,
  stroke: none,
  [GitHub], [Email], if config.show_mobile [Mobile],
  link("https://github.com/gidongkwon", `gidongkwon`),
  `lucidfext@gmail.com`,
  if config.show_mobile [#raw(config.mobile)],
)

*사용자 경험을 먼저 생각합니다.* \
서비스를 사용할 때 사용자 입장에서는 어떤 생각을 하게 되는지, 다른 요구사항을 생각하고 들어왔을 때 어떤 불편함이 생기는지 생각하고 개선하는 걸 즐깁니다. 이를 위한 효율적 UI 설계와 성능 최적화에 관심이 많습니다.

*모든 개발자는 서로의 사용자입니다.* \
코드베이스의 지속 가능성은 팀원들이 서로의 코드와 어떻게 상호작용하는지에 달려있다고 생각합니다. 컴포넌트 아키텍쳐나 타입 시스템을 활용한 적절한 추상화와 툴링, 코드젠 등 여러 수단을 통한 개발 경험 개선에 관심을 갖고 있으며, 새로운 도구를 시도해 보고 기존 도구와의 장단점을 비교하는 것을 즐깁니다.

산업기능요원으로서 *게임 클라이언트 엔지니어로 일한 2년 7개월의 경험이 있지만 웹 프론트엔드로 커리어를 전환*하려고 합니다. \
고등학생 시절부터 게임 프로그래밍을 꾸준히 해오다, 사람들에게 도움이 되는 서비스를 더욱 쉽게 배포하고 공유할 수 있는 웹 프론트엔드에 매력을 느끼고 관심 분야를 옮겨왔습니다. \
프로젝트에 대한 자세한 설명은 포트폴리오를 참고해주세요.

= Featured Project
#project-entry(
  name: [aya.gg v1],
  type: (project-type.team)(2),
  role: [디자인(100%), 프론트엔드 개발(95%)],
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
  summary: [(v1 서비스 종료) 쿼터뷰 배틀로얄 게임 이터널 리턴의 전적 검색, 통계, 도감 정보, 루트 시뮬레이터 등을 제공하는 웹사이트입니다.
    제가 팀에 참가했던 3년의 운영 기간 총 활성 세션 수 2,359,539를 기록하였습니다.
    실사용자들과 메신저, 메일, 댓글 등으로 피드백을 주고받으면서 제품을 유용하게 개선하는 경험을 했습니다.],
)[
  #work-detail(
    title: [루트 시뮬레이터 구현],
    description: [루트 시뮬레이터는 최적의 아이템 파밍 경로를 찾아주는 도구로, 당시 원하는 기능을 가진 비슷한 도구가 없어 개발하게 되었습니다. 이미지 맵(\<area>)과 SVG viewBox, CSS transform의 조합으로 구현했습니다. 이후 *이터널 리턴 본 게임에 UX 측면에서 거의 그대로 이식*되었습니다.],
  )
  #work-detail(
    title: [방송용 위젯 구현],
    description: [인터넷 방송인이 사용할 수 있는, 실시간으로 랭크 게임 점수와 전적이 갱신되는 방송용 위젯을 구현했습니다. CSS gap이 지원되지 않는 OBS 브라우저 플러그인의 *크로미움 77이라는 레거시 환경에서도 \<Flex> 컴포넌트를 사용하는 데 문제가 없도록 엔지니어링*했습니다.],
  )
  #work-detail(
    title: [SSR 구현],
    description: [Next.js 12를 사용하여 SSR을 구현했습니다. Cloudflare CDN과 프로젝트 코드 문제가 얽혀 느려지는 문제를 해결하여 *FCP를 10초에서 1.5초로 560% 개선*한 경험이 있습니다.],
  )
  #work-detail(
    title: [국제화 대응],
    description: [i18next를 사용하여 URL 기반의 국제화를 구현했습니다. 한국어, 영어, 일본어, 프랑스어 4개 언어를 지원했습니다. 이후 코드젠 기반의 typesafe-i18n으로 마이그레이션하여 DX를 개선했습니다.],
  )
  #work-detail(
    title: [Google Analytics, Microsoft Clarity를 사용한 이용자 분석],
    description: [사용자의 페이지 이동 패턴을 분석하여 많이 찾는 기능의 접근성을 강화하고, rage click이 일어나는 부분 등을 분석하여 개선했습니다.],
  )
  #work-detail(
    title: [통계 페이지 구현],
    description: [플레이어/특정 캐릭터의 그래프, 표를 포함한 종합적인 통계를 볼 수 있는 페이지를 구현했습니다.],
  )
]

#pagebreak()

= Experiences
== Web #h(0.5em) #display-year([_2021-_]) #h(1fr) #chips-in-one((tech-stacks.react, tech-stacks.svelte, tech-stacks.typescript, tech-stacks.nextjs, tech-stacks.tailwind, tech-stacks.shadcn, tech-stacks.etc))
- 오픈소스 영상 편집 소프트웨어 #link("https://github.com/cartesiancs/nugget-app", [Nugget]) 기여
  - 캔버스 기반 렌더러를 리팩토링하여 약 2,000줄의 중복 코드 제거 #link("https://github.com/cartesiancs/nugget-app/pull/38", [\#38]) #link("https://github.com/cartesiancs/nugget-app/pull/33", [\#33])
  - WebGL 필터 로직 재설계를 통한 UI 스터터링 제거 (워스트 케이스 평균 48ms -> 0.262ms, 18,434% 개선) #link("https://github.com/cartesiancs/nugget-app/pull/36", [\#36])
- aya.gg v1 전체 / v2 초기 개발 참여 #badge([Private])
- #link("https://github.com/gidongkwon/ecs-collision-webworker", [ecs-collision-webworker]), Web Worker를 사용한 ECS 기반의 게임 엔진 충돌 계산 속도 개선 실험
- #link("https://github.com/gidongkwon/logseq-plugin-tags", [logseq-plugin-tags]), Logseq에서 Obsidian의 태그 기능을 모사한 플러그인
- kana-hangul, 일본어 가나를 한국어 발음으로 옮겨주는 ReScript 라이브러리 #badge([Private])
- noraebang, 위 라이브러리를 활용한 재생 싱크 동기화 방식 노래방 서비스 #badge([Private])

== Game Development #h(0.5em) #display-year([2014-]) #h(1fr) #chips-in-one((tech-stacks.unity, tech-stacks.csharp, tech-stacks.directx9, tech-stacks.cpp, tech-stacks.python, tech-stacks.etc))
- Unity 에디터 API를 활용한 엔진 내에서 사용할 수 있는 레벨 에디터 개발
- #link("https://github.com/Seeyou2000/SE_UNO_Project", [멀티플레이어 우노 프로젝트])에서 pygame 사용에 익숙하지 않은 팀원들을 위한 2D 게임 프레임워크 개발
- 선린인터넷고등학교 웹개발심화(웹게임) 소수전공 강사, #link("https://github.com/gidongkwon/light2d-es6", [강의용 프레임워크]) #h(0.5em) #display-year([2017])
- The Mechanics, 블록코딩 게임, 정보올림피아드 공모부문 동상 #h(0.5em) #display-year([2015])
- 선린인터넷고등학교 게임개발기능반용 DirectX 9 2D 프레임워크 개발 #h(0.5em) #display-year([2014])

== Community Engagement
- 선린인터넷고등학교 해커톤, 경진대회 게임부문 심사위원 #h(0.5em) #display-year([2022 - 2024])
- 컴공인의 밤 발표 - 게임업계 경험 #h(0.5em) #display-year([2023])
- 컴퓨터공학과 게임개발 동아리 PLUM 유니티 스터디 리더 #h(0.5em) #display-year([2022, 2023])
- #link("https://vivaldi.com/", [Vivaldi 브라우저]), #link("https://store.steampowered.com/app/287980/Mini_Metro/", [Mini Metro]) 한국어 번역 #h(0.5em) #display-year([2015, 2016])

= Work Experience
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

= Education
#table(
  columns: 2,
  stroke: none,
  display-range(datetime(year: 2016, month: 3, day: 1), datetime(year: 2025, month: 2, day: 21)),
  [서울과학기술대학교 컴퓨터공학과 졸업],

  display-range(datetime(year: 2013, month: 3, day: 1), datetime(year: 2016, month: 2, day: 28)),
  [선린인터넷고등학교 웹운영과 졸업],
)
