#import "modules/date.typ": *
#import "modules/entries.typ": *
#import "modules/chips.typ": *
#import "modules/template.typ": template

#show: template.with("포트폴리오 - 권기동", "권기동")

#text(16pt)[*권기동* 포트폴리오]

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
  summary: [쿼터뷰 배틀로얄 게임 이터널 리턴의 전적 검색, 통계, 도감 정보, 루트 시뮬레이터 등을 제공하는 웹사이트입니다.
    제가 팀에 참여했던 3년의 운영기간 동안 총 활성 세션 수 2,359,539를 기록하였습니다.
    실 사용자들과 메신저, 메일, 댓글 등으로 피드백을 주고받으면서 제품을 유용하게 개선하는 경험을 했습니다.],
)[
  #work-detail(
    title: [화면 크기 변경 퍼포먼스 개선, 모바일 환경에서의 입력 반응 속도 개선],
    description: [루트 시뮬레이터의 지도는 이미지 맵(\<area>)으로 상호작용 영역을 잡은 후 그 위에 SVG를 그리는 식으로 동작합니다. 이때 두 영역의 크기를 동기화하기 위해 ResizeObserver를 사용했는데, 이것이 특정 브라우저나 환경에서 느린 성능을 보이는 것을 발견했습니다. 이를 해결하기 위해 SVG viewBox와 CSS transform을 활용하여 SVG의 크기를 조정하는 방식으로 변경했습니다. 이로 인해 모바일 환경에서의 입력 반응 속도 또한 개선되었습니다.],
  )
  #work-detail(
    title: [FCP 개선],
    description: [Cloudflare CDN을 붙이고 SSR을 구현한 후 FCP가 비정상적으로 높아진 것을 발견했습니다. React Query를 통해 Hydration 되는 데이터의 크기가 비정상적으로 큰 것을 감지했습니다. 또한 BFF와 API서버 간 전송이 의도치 않게 Cloudflare를 통해 이루어지는 것이 RTT를 크게 증가시키는 원인이라는 것을 발견했습니다. 이를 해결하기 위해 브라우저 캐시를 활용할 수 있도록 Hydration 과정을 없애고 SSR과 CSR시 사용하는 데이터 소스를 분리하는 과정을 거치고, BFF와 API서버 간의 통신을 Cloudflare를 거치지 않고 직접 통신하도록 변경했습니다. 이로 인해 첫 접속 기준 FCP가 10초에서 1.5초 이내로 개선되었습니다.],
  )
  #work-detail(
    title: [방송용 위젯 표시를 위한 OBS Browser Plugin에서의 레이아웃 트러블슈팅],
    description: [OBS 크로미움의 버전이 77로 낮아 CSS grid와 flex를 쓸 수 없었습니다. 이미 사이트의 다른 부분은 완성되어 있었기 때문에 공통 사용 컴포넌트를 특정 환경 전용으로 작성하여 두 벌 관리해야 하는 상황에 처해있었습니다. CSS-in-JS 라이브러리 Stitches로 Flex 컴포넌트를 구현하여 레이아웃을 구성하고 있었기 때문에, 최대한 외부의 기존 레이아웃 코드를 건드리지 않고 Flex 컴포넌트 내부에서 분기하여 negative margin으로 gap 동작을 폴리필하는 코드를 추가하는 방식으로, wrap 동작의 정확성을 희생하여 코드베이스의 복잡도를 크게 늘리지 않는 선에서 관리할 수 있었습니다.],
  )
  #work-detail(
    title: [국제화 대응],
    description: [i18next를 사용하여 URL 베이스의 국제화를 구현했습니다. 한국어, 영어, 일본어, 프랑스어 4개 언어를 지원했습니다. 이후 코드젠 기반의 typesafe-i18n으로 마이그레이션하여 DX를 개선했습니다.],
  )
]
