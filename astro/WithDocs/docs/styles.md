# Styles in `Astro`

**[π Docs: Styling & CSS](https://docs.astro.build/guides/styling)**

- λͺ¨λ  μ»΄ν¬λνΈ λ΄ `<style ... />`μ **`scoped` μ€νμΌ**
- scoped μ€νμΌμμ μ μΈνμ§λ§ μ μ­μμ μ¬μ©νκ³  μΆμ κ²½μ°λ μ νμλ₯Ό `:global`λ‘ κ°μΈμ€λ€ (CSS Moduleκ³Ό λμΌ)

  ```css
  /* Global style */
  :global(h1) {
    font-size: 32px;
  }
  ```

- νΉμ  μ νμκ° μλ μ μ²΄ μ€νμΌμ μ μ­ μ€νμΌλ‘ μ§μ νκ³  μΆλ€λ©΄ globalλ‘ μ§μ 

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

[π Docs: Astro Components > CSS Styles](https://docs.astro.build/core-concepts/astro-components#css-styles)

[π Ref: accessible-astro-starter](https://github.com/markteekman/accessible-astro-starter)

- κ³΅μλ¬Έμμλ SCSSμ λν λ΄μ©μ΄ μ...λ μ€ μμλλ°, μ»΄ν¬λνΈ μͺ½ μ€λͺμ μ κΉ μΈκΈμ΄ λμ΄μλ€
- μ κΉν μμμ²λΌ, **μ»΄ν¬λνΈ scopeμμλ** `Vue`μ μ μ¬νκ² `style`μ `lang="scss"`λ₯Ό μ μ©ν΄μ μ¬μ©νλ©΄ λλ κ±Έ μ μ μμλ€
- **μ μ­μμ μ¬μ©ν  SCSS λ** `link` νκ·Έ λ΄μμ entry νμΌμ `Astro.resolve` ν¨μλ‘ κ°μ Έμ€λ©΄ λλ€

  ```html
  <!-- μ μ­μμ μ¬μ©ν  μ€νμΌ -->
  <link rel="stylesheet" href={Astro.resolve('../styles/globals.css')} />

  <!-- μ»΄ν¬λνΈ scopeμμ μ¬μ©ν  μ€νμΌ -->
  <style lang="scss">
    header {
      background-color: grey;
      color: white;
    }
  </style>
  ```

<br />

> _μ΄λ μ λ μμ€μ΄ λλ(?) νμ¬ μ€ SCSSλ₯Ό μ μ°λ νμ¬κ° μμκΉ μΆμλ°,_
>
> _μ΄ λΆλΆμ λν μ€λͺμ΄ λλ¬΄ λμΆ©λμ΄ μλκ² μλκ°..νλ μκ°μ΄.._
