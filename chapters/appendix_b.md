## 付録 B — コモンクリーチャーカーブ (MtG)

**コモンのクリーチャーカーブ（色別スロット詳細）**

Nuts & Bolts #13（以下 N&B #13）(2021、[原文](https://magic.wizards.com/en/news/making-magic/nuts-bolts-13-design-skeleton-revisited-2021-03-22)) で公開された、コモンの各色クリーチャースロットのマナ値（MV）割り当ての考え方。「特にコモンでは、クリーチャーに滑らかなカーブが組み込まれていることが非常に重要」（Rosewater）。

原典は 5 色・計 52 スロットの割り当てを 1 枚ずつ定めているが、ここでは設計の考え方が最もよく見える両極の 2 色だけを抜粋する（スロット番号は C=Common + 色。青は MtG の慣習で U）。

**白（12 体）— スロット最多・低マナ最厚:**
CW01: 1 MV / CW02: 1-2 MV / CW03: 2 MV / CW04: 2 MV / CW05: 2 MV / CW06: 2-3 MV / CW07: 3 MV / CW08: 3 MV / CW09: 4 MV / CW10: 4 MV / CW11: 5 MV / CW12: 5-6 MV

**青（9 体）— スロット最少・重心が上:**
CU01: 1 MV / CU02: 2 MV / CU03: 2 MV / CU04: 3 MV / CU05: 3 MV / CU06: 4 MV / CU07: 4 MV / CU08: 5 MV / CU09: 6+ MV

2 色を並べると、カーブの形がそのまま色の性格になっていることが分かる。白は 1〜2 MV 帯に半数の 6 スロットを割き、「軽い戦力を横に並べる」色の遊び方が枚数配分の時点で保証されている。青は総数が最も少なく 1 MV は 1 スロットのみ——非クリーチャー呪文に枠を譲り、カーブの重心が上にある。残る黒・赤（各 10 体）・緑（11 体）は、この両極の間を第 6 章で述べた「白→青へ各色 3% ずつクリーチャー比率が下がる」勾配に沿って埋めていく。完全な 52 スロットの一覧は原典を参照してほしい。

自作ゲームでこの骨格を再現するとき、写すべきは数値ではなく次の 3 原則である。(1) 各色 1 MV から 6+ MV まで途切れなくスロットを置く——リミテッドで「出せるものがないターン」を作らないための保険。(2) スロット総数と低マナ帯の厚みで、色の性格（横並べ / 大型主体）をカーブの形として表現する。(3) 「1-2 MV」「2-3 MV」のように隣接マナ域をまたぐスロットを数個置き、セットごとの調整の遊びを残す。

なお非クリーチャー呪文にはマナ値の厳密な指定はなく、「多様なマナコストを持つべきだが、クリーチャーほど厳格に規定する必要はない」とされる。


---

## 付録 — 参考文献

> **URL の永続性について:** 本書で引用している Web 記事の URL は、2025 年時点で有効なものである。特に magic.wizards.com の旧記事は過去に URL 構造の変更が複数回行われており、将来リンク切れになる可能性がある。リンク切れの場合は、記事タイトル・著者名・公開年で検索するか、[Wayback Machine](https://web.archive.org/) でアーカイブを探すことを推奨する。各出典には可能な限り記事タイトルと著者名を併記しているのはこのためである。

## 書籍

| タイトル | 著者 | 出版 | 概要 |
|---------|------|------|------|
| *Characteristics of Games* | George Skaff Elias, Richard Garfield, K. Robert Gutschera | MIT Press, 2012 | ゲームの特性を体系的に分析。運・実力・情報・複雑性 |
| *Uncertainty in Games* | Greg Costikyan | MIT Press, 2013 | ゲームにおける不確実性の 7 源泉を理論化 |
| *Playing to Win* | David Sirlin | Sirlin Games, 2006 | 競技ゲームの思想。Slippery Slope、Yomi |
| *A Theory of Fun for Game Design* | Raph Koster | O'Reilly, 2004 | 楽しさの認知科学的分析 |
| *Rules of Play* | Katie Salen & Eric Zimmerman | MIT Press, 2003 | ゲームデザインの総合教科書 |

## GDC 講演

| タイトル | 講演者 | 年 | リンク |
|---------|--------|-----|--------|
| Twenty Years, Twenty Lessons | Mark Rosewater | 2016 | [GDC Vault](https://gdcvault.com/play/1023186/Twenty-Years-Twenty) |
| Hearthstone: 10 Bits of Design Wisdom | Eric Dodds | 2014 | [GDC Vault](https://www.gdcvault.com/play/1020775/Hearthstone-How-to-Create-an) |
| Metagame Balance | Alexander Jaffe | 2015 | [GDC Vault](https://gdcvault.com/play/1022155/Metagame) |
| Quest for the Healthy Metagame | Stefan Engblom | 2017 | [GDC Vault](https://www.gdcvault.com/play/1024272/Quest-for-the-Healthy-Metagame) |
| Slay the Spire: Metrics Driven Design | Anthony Giovannetti | 2019 | [GDC Vault](https://www.gdcvault.com/play/1025731/-Slay-the-Spire-Metrics) |
| Designing MARVEL SNAP | Ben Brode, et al. | 2023 | [GDC Vault](https://gdcvault.com/play/1029024/Designing-MARVEL-SNAP) |

## MtG 公式記事 (magic.wizards.com)

| 記事 | 著者 | リンク |
|------|------|--------|
| Twenty Years, Twenty Lessons Part 1 | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/twenty-years-twenty-lessons-part-1-2016-05-30) |
| FIRE It Up | Abro (WotC Play Design) | [リンク](https://magic.wizards.com/en/news/card-preview/fire-it-2019-06-21) |
| Timmy, Johnny, and Spike | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/timmy-johnny-and-spike-2013-12-03) |
| Mechanical Color Pie 2021 | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/mechanical-color-pie-2021) |
| Bleeding Cool | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/bleeding-cool-2015-04-06) |
| The Value of Pie | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/value-pie-2003-08-18-0) |
| New World Order | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/new-world-order-2011-12-02) |
| Lenticular Design | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/lenticular-design-2014-03-31) |
| Quadrant Theory | Marshall Sutcliffe | [リンク](https://magic.wizards.com/en/news/feature/quadrant-theory-2014-08-20) |
| CABS Theory | Sam Black | [リンク](https://magic.wizards.com/en/news/feature/cabs-theory-2015-08-19) |
| Ten Things Every Game Needs | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/ten-things-every-game-needs-2011-03-28) |
| Ten Principles for Good Design | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/ten-principles-good-design-2010-05-10) |
| Communication Theory | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/communication-theory-2013-12-17) |
| Vorthos and Mel | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/vorthos-and-mel-2015-08-31) |
| Nuts & Bolts シリーズ #1–18 | Mark Rosewater | [リンク](https://magic.wizards.com/en/news/making-magic/nuts-bolts-card-codes-2009-01-12) |
| State of Design シリーズ 2005–2025 | Mark Rosewater | magic.wizards.com |

## 競技・理論記事

| 記事 | 著者 | リンク |
|------|------|--------|
| Who's the Beatdown? | Mike Flores | [Star City Games](https://articles.starcitygames.com/articles/whos-the-beatdown/) |
| Lauer の 4 つのルール | Melissa DeTora（原案 Erik Lauer） | [mtg-jp.com](https://mtg-jp.com/reading/pd/0019778/) |
| 多様なメタゲームの設計 | Melissa DeTora | [mtg-jp.com](https://mtg-jp.com/reading/pd/0030090/) |

## 個別タイトルの参考資料

| タイトル | 記事 | リンク |
|---------|------|--------|
| Legends of Runeterra | 10 Exceptional Design Choices | [nerdlab-games.com](https://nerdlab-games.com/048-legends-of-runeterra-10-exceptional-design-choices/) |
| Gwent | Design 01: Provision | [playgwent.com](https://www.playgwent.com/en/news/41252/gwents-design-01-provision/) |
| Marvel Snap | Onboarding and Card Design | [mobilegamer.biz](https://mobilegamer.biz/second-dinner-reveals-the-secrets-of-marvel-snaps-onboarding-and-card-design/) |
| Flesh and Blood | The Genius of the Pitch System | [fabrec.gg](https://fabrec.gg/articles/the-genius-of-flesh-and-bloods-pitch-system/) |
| Artifact | Why Artifact Failed | [Game Developer](https://www.gamedeveloper.com/design/why-artifact-failed) |
| Slay the Spire | Metrics Driven Design (GDC) | [GDC Vault](https://www.gdcvault.com/play/1025731/-Slay-the-Spire-Metrics) |
| デュエル・マスターズ | 公式サイト | [dm.takaratomy.co.jp](https://dm.takaratomy.co.jp/cls/) |
| デュエル・マスターズ | Creator's Letter 18 号外 | [dm.takaratomy.co.jp](https://dm.takaratomy.co.jp/cls/creatorsletter18_ex/) |
| デュエル・マスターズ | S-Trigger の本質 (Qumasu) | [note.com](https://note.com/qumasu/n/n8e1dd02b55d2) |
| Shadowverse | 宮下尚之インタビュー | [creativevillage.ne.jp](https://www.creativevillage.ne.jp/94577) |
| Shadowverse | Worlds Beyond 開発秘話 | [denfaminicogamer.jp](https://news.denfaminicogamer.jp/kikakuthetower/2507252e) |
| Shadowverse | CEDEC 2025: エクストラPP | [tech.cygames.co.jp](https://tech.cygames.co.jp/archives/2853/) |

## リソースシステム参考

| 記事 | リンク |
|------|--------|
| A Re-Source of Pride | [remptongames.com](https://remptongames.com/2017/07/20/a-re-source-of-pride-designing-resource-systems-in-collectible-games/) |
| Resources and Game Design | [topdeck.gg](https://topdeck.gg/articles/resources-and-game-design) |

## 学術論文

| 論文 | 著者 | 年 | 会議/出版 |
|------|------|-----|----------|
| Automated playtesting with evolutionary algorithms | García-Sánchez et al. | 2018 | Knowledge-Based Systems |
| Ludus: An Optimization Framework to Balance Auto Battler Cards | Budijono et al. | 2022 | AAAI |
| Automated Game Balancing of Asymmetric Video Games (MCTS) | Beau & Bakkes | 2016 | IEEE CIG |
| RL-based meta prediction | Saravanan & Guzdial | 2024 | arXiv |

---

> 本書は特定のゲームタイトルに依存しない、TCG/DCG 設計の一般的なリファレンスとして編纂されている。
> 各ゲームの具体例は原則の例証として引用しているに過ぎない。
