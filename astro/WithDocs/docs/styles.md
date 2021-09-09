# Styles in `Astro`

**[👉 Docs: Styling & CSS](https://docs.astro.build/guides/styling)**

- 모든 컴포넌트 내 `<style ... />`은 **`scoped` 스타일**
- scoped 스타일에서 선언했지만 전역에서 사용하고 싶은 경우는 선택자를 `:global`로 감싸준다 (CSS Module과 동일)

  ```css
  /* Global style */
  :global(h1) {
    font-size: 32px;
  }
  ```

- 특정 선택자가 아닌 전체 스타일을 전역 스타일로 지정하고 싶다면 global로 지정

  ```html
  <style global>
    /* Global style */
    h1 {
      font-size: 32px;
    }
  </style>
  ```

<br />

## **SASS/SCSS**

[👉 Docs: Astro Components > CSS Styles](https://docs.astro.build/core-concepts/astro-components#css-styles)

[👉 Ref: accessible-astro-starter](https://github.com/markteekman/accessible-astro-starter)

- 공식문서에는 SCSS에 대한 내용이 없...는 줄 알았는데, 컴포넌트 쪽 설명에 잠깐 언급이 되어있다
- 위 깃헙 예시처럼, **컴포넌트 scope에서는** `Vue`와 유사하게 `style`에 `lang="scss"`를 적용해서 사용하면 되는 걸 알 수 있었다
- **전역에서 사용할 SCSS 는** `link` 태그 내에서 entry 파일을 `Astro.resolve` 함수로 가져오면 된다

  ```html
  <!-- 전역에서 사용할 스타일 -->
  <link rel="stylesheet" href={Astro.resolve('../styles/globals.css')} />

  <!-- 컴포넌트 scope에서 사용할 스타일 -->
  <style lang="scss">
    header {
      background-color: grey;
      color: white;
    }
  </style>
  ```

<br />

> _어느 정도 수준이 되는(?) 회사 중 SCSS를 안 쓰는 회사가 있을까 싶은데,_
>
> _이 부분에 대한 설명이 너무 대충되어 있는게 아닌가..하는 생각이.._
