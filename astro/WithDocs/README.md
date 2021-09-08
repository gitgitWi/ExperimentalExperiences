# `Astro` with Document

[`Astro` 공식문서](https://docs.astro.build/getting-started) 보면서 따라하기

- 한국어 페이지도 있긴하나, 랜딩 페이지만 번역된 수준..ㅠ
- `.astro` 파일은 아직 Prettier가 지원되지 않는다.. 💢

---

## Getting Started

[👉&nbsp; Installation Docs](https://docs.astro.build/installation)

```bash
yarn create astro
```

- template 선택
- 필요한 UI 라이브러리/프레임워크 선택 등

```bash
yarn workspace astro-with-docs install
```

- 현재 프로젝트는 Monorepo 방식
- 프로젝트 생성 이후 `yarn install`로 필요한 패키지 설치

### astro scripts

[👉&nbsp; CLI References Docs](https://docs.astro.build/reference/cli-reference#astro-dev)

```bash
yarn workspace astro-with-docs run (dev|build|preview)
```

- `dev`: 일반적인 개발 모드, 최초실행시 npm cache 파일 생성 (`snowpack`)
- `build`: 배포 파일로 빌드
- `preview`: 배포 파일을 미리 실행, 일반적으로 사용하는 `start`와 유사
