---
title-prefix: Tomoaki Kobayashi
title: About
bibliography:
  moatom: biblio.bib
nocite: '@*'
active-about: active
---

# Overview

<div class="container">
  <!-- <img src="https://moatom.github.io/profile/static/icon.png" alt="icon" width="100px"
       style="margin-left: 20pt; margin-right: 20pt;" /> -->
  <img src="./static/me.jpg" alt="icon" class="image"/>
  <!-- <img src="./static/me.jpg" alt="icon" width="250px"
       style="margin-left: 20pt; margin-right: 20pt;" /> -->
  <div class="text">
  **My name is Tomoaki KOBAYASHI.**

  **Nice to meet you! 🤗**

  - SNS
    - [X](https://twitter.com/moatom)
    - [GitHub](https://github.com/moatom)
    - [Gist](https://gist.github.com/moatom)
  - JPN
    - [Blog](https://moatom.blogspot.com/)
    - [Qiita](https://qiita.com/moatom)
  - Misc.
    - [ORCID: 0009-0006-7147-9997](https://orcid.org/0009-0006-7147-9997)
  <!-- - **[Quora](https://www.quora.com/profile/Tomoaki-Kobayashi-1)** -->

  I am a software engineer (mainly writing Scala for my job)
  with strong interest in research on software.

  My research interests focus on theoretical foundations of software and
  the application of them, especially in the following fields:

  - Programming languages
  - (Moderately) Functional programming
  - Embedded domain-specific languages, Code generation, metaprograming

  My main research work is about [strymonas](https://strymonas.github.io/)---a
  lightweight declarative stream processing library which proposes *complete stream fusion*;
  its processing runs in constant memory!

  My vision is to provide solutoins for real-world problems by high-quality softwares based on these technics.
  </div>
<style>
.container {
  display: flex; /* 横並びにする */
  flex-wrap: wrap; /* 必要に応じて折り返し */
  /* align-items: center; 縦方向を中央揃え */
  gap: 16px; /* 要素間の間隔 */
}

.image {
  /* width: 200px; 画像の幅を適宜設定 */
  /* height: auto; */
  height: 400px;
  margin-left: 20pt;
  margin-right: 20pt;
  margin-top: 10pt;
}

.text {
  flex: 1; /* テキスト部分を画像に対して伸縮可能にする */
}

/* スマホ向けのスタイル（画面幅が768px以下の場合） */
@media (max-width: 768px) {
  .container {
    flex-direction: column; /* 縦並びにする */
    align-items: flex-start; /* 左寄せにする */
  }

  .image {
    /* width: 100%; 画面幅いっぱいに調整 */
    height: 400px;
  }
}
</style>
</div>


# Experience

<div class="uooo">
Year| Company / Job
:-:|-:
2024--Present | *Anonymized* / Software Engineer in ad tech
<style>
.uooo > table{
  display: table;
}
.uooo col {
  width: auto !important;
}
</style>
</div>


# Academic

## Education

<div class="uooo">
Year| Degree
:-:|-:
2022--2024 | **Master of Information Sciences in CS**, Tohoku University<br><small>GPA: 3.8[^1]/4.0, Advisor: [Eijiro Sumii](https://www.kb.ecei.tohoku.ac.jp/~sumii/), Thesis Advisor: [Oleg Kiselyov](https://okmij.org/ftp/)</small>
2018--2022 | **Bachelor of Engineering in CS**, Tohoku University<br><small>Major GPA: 3.73[^2]/4.0, Advisor: [Eijiro Sumii](https://www.kb.ecei.tohoku.ac.jp/~sumii/), Thesis Advisor: [Oleg Kiselyov](https://okmij.org/ftp/)</small>
2014--2015 | **Dropout**, *An evening high school*
<!-- 2015        | Pass the Upper Secondary School Equivalency Examination -->
<!-- https://github.com/jgm/pandoc/issues/8139 -->
<style>
.uooo > table{
  display: table;
}
.uooo col {
  width: auto !important;
}
</style>
</div>

<!-- Detail: **[CV (pdf)](https://moatom.github.io/profile/static/cv-pub.pdf)** -->

## Publications

::: {#refs-moatom}
:::

## Awards

- ACM SIGPLAN PEPM 2024 Distinguished Paper Award ([image](./static/award-pepm24.jpeg))
- [JPN] JSSST 2020 Best Presentation Award ([image](./static/award-jssst20.jpeg))

## Grants

- [ACM SIGPLAN Professional Activities Committee (PAC) Funding](https://pac.sigplan.org/) 2024: $1500


# Personal

## Skills and Tools

- Main Languages: Scala 3, OCaml, C, Python 3, JavaScript/Vue
- Sub Languages: Kotlin, C++, JavaScript/React, Lua, Java, Rust
- Git, Docker, Makefile, Jenkins, GitHub Actions

[^1]: Please note that GPAs tend to be graded strictly in Japan. As a side note, I was exempted from the written exam when I entered the graduate school.
[^2]: The same as 1.
