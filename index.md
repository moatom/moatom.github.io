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
  <!-- <img src="./static/me.jpg" alt="icon" class="image"/> -->
  <img src="./static/me294-circle.png" alt="icon" class="image"/>
  <!-- <img src="./static/me.jpg" alt="icon" width="250px"
       style="margin-left: 20pt; margin-right: 20pt;" /> -->
  <div class="text">
  **My name is Tomoaki KOBAYASHI.**

  **Nice to meet you! 🤗**

  - SNS
    - [X](https://twitter.com/moatom)
    - [LinkedIn](https://www.linkedin.com/in/tomoaki-kobayashi)
    - [GitHub](https://github.com/moatom)/[Gist](https://gist.github.com/moatom)
  <!-- - JPN
    - [Blog](https://moatom.blogspot.com/)
    - [Qiita](https://qiita.com/moatom) -->
  - Misc.
    - [ORCID: 0009-0006-7147-9997](https://orcid.org/0009-0006-7147-9997)
  <!-- - **[Quora](https://www.quora.com/profile/Tomoaki-Kobayashi-1)** -->

  I am a software engineer with strong interest in research on software.

  <!-- [monozukuri](https://en.wikipedia.org/wiki/Monozukuri) (creative in Zen style) -->

  My research interests focus on theoretical foundations of software and
  the application of them, especially in the following fields:

  - Programming languages
  - Functional programming, declarative programming
  - Embedded domain-specific languages, code generation, metaprogramming, partial evaluation

  <!-- My main research work is about [strymonas](https://strymonas.github.io/)---a
  lightweight declarative stream processing library which proposes *complete stream fusion*;
  its processing runs in constant memory! -->

  My vision is to provide solutions to real-world problems of software through these techniques.
  Software is often too fragile, and maintaining it consumes a tremendous amount of the world's resources unnecessarily.

  I will lead the way in building robust software to empower humanity’s creativity—without ever sacrificing agility.
</div>
<style>
.container {
  display: flex; /* 横並びにする */
  flex-wrap: wrap; /* 必要に応じて折り返し */
  /* align-items: center; 縦方向を中央揃え */
  gap: 16px; /* 要素間の間隔 */
}

.image-old {
  /* width: 200px; 画像の幅を適宜設定 */
  /* height: auto; */
  height: 400px;
  margin-left: 20pt;
  margin-right: 20pt;
  margin-top: 10pt;
}

.image {
  width: 200px;
  height: 200px;
  background-color:transparent;
  transform:translateY(10%);
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

  .image-old {
    /* width: 100%; 画面幅いっぱいに調整 */
    height: 400px;
  }

  .image {
    width: 200px;
    height: 200px;
    background-color:transparent;
  }
}
</style>
</div>


# Experience

<div class="uooo">
Year| Company / Job
:-|-:
Oct. 2025--Present | [U-NEXT Co., Ltd.](https://www.unext.co.jp/en) / Software Engineer
Apr. 2024--Oct. 2025 | [MicroAd, Inc.](https://jp.linkedin.com/company/microad-inc-) / Software Engineer[^1]
<style>
.uooo > table{
  display: table;
}
.uooo col {
  width: auto !important;
}
</style>
</div>
[^1]: I primarily work on developing an auction-based internet advertising delivery system, commonly known as Real-Time Bidding (RTB). I have ever recieved monthly MVP twice in the Software Development Department.

<!-- https://web.archive.org/web/20250514181059/https://www.wantedly.com/companies/microad_recruit/post_articles/975333 -->


# Academic

## Education

<div class="uooo">
Year| Degree
:-:|-:
2022--2024 | **Master of Information Sciences in CS**, Tohoku University[^2]<br><small>GPA: 3.8/4.0, Supervisor: [Eijiro Sumii](https://www.kb.ecei.tohoku.ac.jp/~sumii/), Thesis Supervisor: [Oleg Kiselyov](https://okmij.org/ftp/)</small>
2018--2022 | **Bachelor of Engineering in CS**, Tohoku University<br><small>Major GPA: 3.73[^3]/4.0, Supervisor: [Eijiro Sumii](https://www.kb.ecei.tohoku.ac.jp/~sumii/), Thesis Supervisor: [Oleg Kiselyov](https://okmij.org/ftp/)</small>
2014--2015 | **Dropout**[^4], *An evening high school*
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

[^2]: Tohoku University is one of the most competitive research universities in Japan, and it was the first institution selected by the Japanese government for the ¥10 trillion university endowment fund. (Source: [tohoku.ac.jp](https://www.tohoku.ac.jp/en/news/university_news/meets_the_standards_required_to_be_accredited_as_a_university.html), [timeshighereducation.com](https://web.archive.org/web/20230903075002/https://www.timeshighereducation.com/news/tohoku-alone-advance-japans-y10-trillion-excellence-scheme), [nature.com](https://web.archive.org/web/20230930215445/https://www.nature.com/articles/d41586-023-02867-0))
[^3]: Please note that GPAs tend to be graded strictly in Japan. As a side note, I was exempted from the exam when I entered the graduate school.
[^4]: Instead, I earned a high school equivalency diploma issued by the Japanese government. *It was pretty scary at the time, but looking back, it was one of the best decisions I ever made.*

<!-- Detail: **[CV (pdf)](https://moatom.github.io/profile/static/cv-pub.pdf)** -->

## Major Publications

::: {#refs-moatom}
:::

<!-- [JPN]メタプログラミング研究集会, Tsukuba University, 2022, https://kaken.nii.ac.jp/grant/KAKENHI-PROJECT-18H03218#product_51 -->

## Awards

<div class="uooo">
Year| Award
:-:|-:
2024 | ACM SIGPLAN PEPM 2024 Distinguished Paper Award ([image](./static/award-pepm24.jpeg))
2020 | [JPN] JSSST 2020 Best Presentation Award ([image](./static/award-jssst20.jpeg))
<style>
.uooo > table{
  display: table;
}
.uooo col {
  width: auto !important;
}
</style>
</div>



## Grants

- [ACM SIGPLAN Professional Activities Committee (PAC) Funding](https://pac.sigplan.org/) 2024: $1500

<!-- ## Teaching

- 1 Oct. 2022-Feb. 2022 プロ演習B
- 2 Apr. 2022-Aug.2022 コンパイラ
- 3　 -->

# OSS
- Major PRs
  - 2025:
    - <https://github.com/microsoft/onnxscript/pull/2645>
    - <https://github.com/rust-lang/rust/pull/140916>
    - <https://github.com/rust-lang/rust/pull/141608>
    - <https://github.com/fluent/fluentd/pull/4865>
  - 2019
    - <https://github.com/swiftlang/swift/pull/25070>
- All PRs
  - [View all closed PRs by `@moatom`](https://github.com/pulls?q=is%3Apr+author%3Amoatom+archived%3Afalse+is%3Aclosed)

# Skills and Tools

## Professional Experience

- Java, Kotlin, Scala, Python (with some hands-on experience in JavaScript/Vue)
- Niginx, MySQL, Redis, Akka, Apache Spark
- Makefile, Ansible, Jenkins, GitHub Actions
- gRPC, REST
- k8s, GCP, SSH Docker depoloy for On-prem servers
- GitHub/GitHub Enterprise, Gitlab

## Personal/Academic Projects

- Rust, Python, OCaml, C/C++, Lua
- LaTeX, Valgrind, Pandoc
