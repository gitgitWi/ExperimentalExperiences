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

---

## Deploy to Web

### Firebase

**[Deployed Firebase App 🚀🚀🚀](https://astro-with-docs-wiii.web.app)**

[👉&nbsp; Firebase CLI 참조](https://firebase.google.com/docs/cli?authuser=0#linux)
[👉&nbsp; Firebase 호스팅](https://firebase.google.com/docs/hosting/?authuser=0)

```bash
# firebase CLI
npm install -g firebase-tools
```

- `yarn berry` 이후 `yarn`에서 `global add` 사라짐
  - `dlx`로 대체된다고 하는데, CRA처럼 바로 실행할 수 있는 것 아니면 작동 안되는..
  - global 설치는 npm으로..

```bash
firebase login --no-localhost
cd ./astro/WithDocs
firebase init
# firebase init hosting:github
```

- 설치 이후 firebase 로그인
- 프로젝트 디렉토리 이동 및 firebase 자동 설정

```bash
yarn workspace astro-with-docs run build

# 로컬에서 배포 될 앱 미리 확인
firebase emulators:start

firebase deploy
```
