---
aliases: 单调类
info:
date: 2025-09-19-星期五 10:32
update:
tags:
  - wiki/year2025
  - wiki/month09
id: wiki20250919103201
banner: "![[astrowalk.gif]]"
---
---

# 5_Wiki/Wiki - 单调类定理. md

## 单调类定义与性质
### 定义 2.6（单调类）
设 $\mathcal{M}$ 为一个集类。如果其满足如下条件：
- (a) 对任意 $A_n \in \mathcal{M}$，$n \geq 1$，且 $A_n \uparrow A = \bigcup_{n=1}^\infty A_n$，则 $A \in \mathcal{M}$；
- (b) 对任意 $A_n \in \mathcal{M}$，$n \geq 1$，且 $A_n \downarrow A = \bigcap_{n=1}^\infty A_n$，则 $A \in \mathcal{M}$。

则称 $\mathcal{M}$ 为一个单调类（monotone class）。

- **性质**：
  - λ-类（Dynkin 类）[[Wiki - π-λ定理]] 和σ-代数 [[Wiki - σ-代数]] 均为单调类（由可列并/交封闭和概率测度连续性）。
  - 单调类对递增/递减序列封闭，但不一定对有限并/补封闭（区别于代数）。
  - 零事件集 $\mathcal{N}$（$\mathbb{P}(A)=0$）是单调类（由概率连续性和可列可加性）。

- **例子**：
  - 任意 $\sigma$ -代数是单调类。
  - 由代数 [[Wiki - 代数]]生成的单调类 $m(\mathcal{A})$ 用于桥接代数与σ-代数。

## 定理 2.5（σ = a + m）
设 $\mathcal{F}$ 为一个集类，则 $\mathcal{F}$ 为σ-代数当且仅当 $\mathcal{F}$ 既为代数 [[Wiki - 代数]]又为单调类（简记为 $\sigma = a + m$）。

### 证明要点
- **正向**：σ-代数显然是代数（有限并封闭）和单调类（可列并封闭 $\implies$ 递增序列封闭）。
- **反向**：假设 $\mathcal{F}$ 为代数和单调类。对任意 $\{A_n\} \subset \mathcal{F}$，定义 $B_n = \bigcup_{i=1}^n A_i \in \mathcal{F}$（代数封闭），$B_n \uparrow \bigcup_{i=1}^\infty A_i$，由单调类得 $\bigcup_{i=1}^\infty A_i \in \mathcal{F}$（可列并封闭）。对补封闭由代数得，故 $\mathcal{F}$ 为σ-代数。

- **意义**：单调类定理提供从代数到σ-代数的另一种生成机制，与π-λ定理互补（π-λ强调交封闭，单调类强调单调序列）。

## 定理 2.6（Halmos 单调类定理）
设 $\mathcal{A}$ 和 $\mathcal{M}$ 为两个集类。若 $\mathcal{A}$ 为代数，$\mathcal{M}$ 为单调类，且 $\mathcal{A} \subset \mathcal{M}$，则 $\sigma(\mathcal{A}) \subset \mathcal{M}$。

### 证明要点
- 令 $m(\mathcal{A})$ 为包含 $\mathcal{A}$ 的最小单调类，则 $m(\mathcal{A}) \subset \mathcal{M}$。
- 证明 $m(\mathcal{A})$ 为代数 $\implies$ 由定理 2.5，$m(\mathcal{A})$ 为σ-代数，故 $\sigma(\mathcal{A}) \subset m(\mathcal{A}) \subset \mathcal{M}$。
- 构造序列：
  - $\mathcal{D}_1 = \{B \in m(\mathcal{A}); B \cap C \in m(\mathcal{A}), \forall C \in \mathcal{A}\}$ ：$\mathcal{D}_1$ 为单调类（证明：对 $A_n \uparrow A$，$B \cap A_n \uparrow B \cap A$；类似递减），$\mathcal{A} \subset \mathcal{D}_1$（$\mathcal{A}$ 为代数），故 $m(\mathcal{A}) = \mathcal{D}_1$（π-类）。
  - $\mathcal{D}_2 = \{B \in m(\mathcal{A}); B \cap C \in m(\mathcal{A}), \forall C \in m(\mathcal{A})\}$ ：类似，$m(\mathcal{A}) = \mathcal{D}_2$（对 $m(\mathcal{A})$ 内交封闭）。
  - $\mathcal{D}_3 = \{B \in m(\mathcal{A}); B^c \in m(\mathcal{A})\}$ ：$\mathcal{D}_3$ 为单调类（$A_n \uparrow A \implies A_n^c \downarrow A^c$），$\mathcal{A} \subset \mathcal{D}_3$（代数对补封闭），故 $m(\mathcal{A}) = \mathcal{D}_3$（对补封闭）。
- 综上，$m(\mathcal{A})$ 为代数。

- **意义**：若性质在代数 $\mathcal{A}$ 上成立，想延拓到 $\sigma(\mathcal{A})$，只需证明性质集类 $\mathcal{M}$ 为单调类（类似于π-λ定理的λ-类版本）。

## 推论 2.2
设 $\mathcal{A}$ 为一个代数，则 $m(\mathcal{A}) = \sigma(\mathcal{A})$。

### 证明要点
- $\mathcal{A} \subset m(\mathcal{A})$（单调类），由定理 2.6 得 $\sigma(\mathcal{A}) \subset m(\mathcal{A})$。
- $\mathcal{A} \subset \sigma(\mathcal{A})$（σ-代数），$\sigma(\mathcal{A})$ 为单调类，故 $m(\mathcal{A}) \subset \sigma(\mathcal{A})$（最小性）。

## 应用与相关练习
- **应用**：
  - 证明σ-代数生成：从代数 $\mathcal{A}$ 延拓性质到 $\sigma(\mathcal{A})$，无需完整π-类，只需单调类。
  - 与π-λ互补：Halmos 定理用于代数起始，π-λ用于π-类起始（如开区间生成 Borel σ-代数）。
  - 概率测度延拓：结合 Carathéodory 定理，从代数上的有限可加集函数延拓到σ-代数。
- **例子**：在 Borel-Cantelli 引理 [[Wiki - Borel-Cantelli引理]] 中，单调类用于事件上下极限的概率连续性。[[Wiki - 上下极限]]
