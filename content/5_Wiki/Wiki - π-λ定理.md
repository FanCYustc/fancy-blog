---
aliases: pai-lambda定理
info:
date: 2025-09-18-星期四 19:43
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 实分析/测度论
  - 概率论/概率空间
id: wiki20250918194304
banner: "![[astrowalk.gif]]"
---
---

## The 1 π-λ定理

```ad-theorem
title: π-λ定理 (Dynkin定理)
设 $\mathcal{P} \subseteq 2^\Omega$ 是一个π-系统，$\mathcal{D} \subseteq 2^\Omega$ 是一个包含 $\mathcal{P}$ 的λ-系统，则 $\mathcal{D} \supseteq \sigma(\mathcal{P})$，其中 $\sigma(\mathcal{P})$ 是 $\mathcal{P}$ 生成的σ-代数。
```

### 定义

**Def 1 π-系统**  
一个集合族 $\mathcal{C} \subseteq 2^\Omega$ 称为π-系统，如果 $\Omega \in \mathcal{C}$ 且对任意 $A, B \in \mathcal{C}$，$A \cap B \in \mathcal{C}$。  
注释：π-系统闭合有限交集，但不一定闭合补集或可数并。

**Def 2 λ-系统** (Dynkin 系统)  
一个集合族 $\mathcal{D} \subseteq 2^\Omega$ 称为λ-系统，如果：  
1. $\Omega \in \mathcal{D}$；  
2. 若 $A \in \mathcal{D}$，则 $A^c \in \mathcal{D}$；  
3. 若 $\{A_n\}_{n=1}^\infty \subseteq \mathcal{D}$ 两两不相交，则 $\bigcup_{n=1}^\infty A_n \in \mathcal{D}$。  
注释：σ-代数是特殊的λ-系统（也闭合有限交）。

### 证明

首先，证明**引理**：若 $\mathcal{P}$ 是π-系统，则由 $\mathcal{P}$ 生成的单调类 $\mathcal{M}(\mathcal{P})$ 等于 $\sigma(\mathcal{P})$。  

- 单调类 $\mathcal{M}$ ：包含 $\Omega$，闭合递增并与递减交，且包含 $\mathcal{P}$。  
- $\sigma(\mathcal{P}) \subseteq \mathcal{M}(\mathcal{P})$ ：σ-代数是单调类。  
- $\mathcal{M}(\mathcal{P}) \subseteq \sigma(\mathcal{P})$ ：由 $\mathcal{P}$ 生成的最小单调类等于σ-代数（标准结果，见单调类定理）。  

其次，设 $\mathcal{D}$ 是包含 $\mathcal{P}$ 的λ-系统。则 $\mathcal{D}$ 是单调类（λ-系统性质蕴涵单调类性质）。因此 $\mathcal{M}(\mathcal{P}) \subseteq \mathcal{D}$，从而 $\sigma(\mathcal{P}) \subseteq \mathcal{D}$。

### 推论

**Cor 1**：若两个概率测度 $P, Q$ 在π-系统 $\mathcal{P}$ 上相等，则 $P = Q$ 在 $\sigma(\mathcal{P})$ 上。  
证明：$|P - Q|$ 在 $\mathcal{P}$ 上为 0，故在生成的λ-系统中为 0，包含 $\sigma(\mathcal{P})$。

应用：用于 Carathéodory 延拓定理中测度唯一性（见 [[Wiki - 测度延拓定理]]）。

相关链接：[[Wiki - σ-代数]]、[[Wiki - 事件σ域]]、[[Wiki - 抽象测度]]、[[Wiki - 概率空间]]


### π-λ定理

#### 基本概念
##### π-类
**定义 2.4**：设 $\mathcal{A}$ 为一个集类，若对任意 $A, B \in \mathcal{A}$ 满足 $A \cap B \in \mathcal{A}$，则称 $\mathcal{A}$ 为π-类。

- **性质**：σ-代数和代数均为π-类。
- **例子**：
  - $\mathcal{A} = \{(-\infty, x]; x \in \mathbb{R}\}$ 是π-类，且 $B_{\mathbb{R}} = \sigma(\mathcal{A})$，但不是代数（不封闭于补运算）。
  - 开集全体也是π-类，但非σ-代数。

##### λ-类（Dykin 类）
**定义 2.5**：设 $\mathcal{L}$ 为一个集类，若满足：
- (a) $\Omega \in \mathcal{L}$；
- (b) 对任意 $A, B \in \mathcal{L}$ 且 $A \subset B$，则 $B \setminus A \in \mathcal{L}$；
- (c) 对任意 $\{A_n\}_{n \geq 1} \subset \mathcal{L}$ 且 $A_n \uparrow A = \bigcup_{n=1}^\infty A_n$，则 $A \in \mathcal{L}$。

则称 $\mathcal{L}$ 为λ-类。

- **性质**：
  - σ-代数是λ-类，且对补运算封闭（$A \in \mathcal{L} \implies A^c \in \mathcal{L}$）。
  - 等价形式（练习 2.2）：(a') $\Omega \in \mathcal{L}$；(b') 对补封闭；(c') 对互不相交的可列并封闭。
  - 对递减序列 $A_n \downarrow A$，$A \in \mathcal{L}$。

#### 核心定理
##### 定理 2.1（σ = π + λ）
设 $\mathcal{F}$ 为一个集类，则 $\mathcal{F}$ 为σ-代数当且仅当 $\mathcal{F}$ 既为π-类又为λ-类。

- **证明要点**：σ-代数显然满足π-类和λ-类性质。反之，若 $\mathcal{F}$ 为π-类和λ-类，则 $\Omega \in \mathcal{F}$ 且对补封闭；对可列并 $B_n = \bigcup_{i=1}^n A_i \in \mathcal{F}$（由π-类交封闭和补封闭），再由λ-类 (c) 得 $\bigcup_{i=1}^\infty A_i \in \mathcal{F}$。

##### 定理 2.2（π-λ定理）
设 $\mathcal{A}$ 为π-类，$\mathcal{L}$ 为λ-类，且 $\mathcal{A} \subset \mathcal{L}$，则 $\sigma(\mathcal{A}) \subset \mathcal{L}$。

- **证明要点**（分解步骤，见原笔记图示）：
  - 令 $\lambda(\mathcal{A})$ 为包含 $\mathcal{A}$ 的最小λ-类，则 $\lambda(\mathcal{A}) \subset \mathcal{L}$。
  - 若证明 $\lambda(\mathcal{A})$ 为π-类，则由定理 2.1，$\lambda(\mathcal{A})$ 为σ-代数，故 $\sigma(\mathcal{A}) \subset \lambda(\mathcal{A}) \subset \mathcal{L}$。
  - 构造 $\mathcal{D}_1 = \{B \in \lambda(\mathcal{A}); B \cap C \in \lambda(\mathcal{A}), \forall C \in \mathcal{A}\}$ ：$\mathcal{D}_1$ 为单调类，$\mathcal{A} \subset \mathcal{D}_1 \subset \lambda(\mathcal{A})$，故 $\lambda(\mathcal{A}) = \mathcal{D}_1$（为π-类）。

- **通俗表述**：若性质在π-类 $\mathcal{A}$ 上成立，想延拓到 $\sigma(\mathcal{A})$，只需证明性质集类 $\mathcal{L}$ 为λ-类（见原笔记图 2.1）。

- **推论 2.1**：设 $\mathcal{A}$ 为π-类，则 $\sigma(\mathcal{A}) = \lambda(\mathcal{A})$。
  - 证明：$\mathcal{A} \subset \lambda(\mathcal{A})$（λ-类），由定理 2.2 得 $\sigma(\mathcal{A}) \subset \lambda(\mathcal{A})$；$\sigma(\mathcal{A})$ 为λ-类且包含 $\mathcal{A}$，故 $\lambda(\mathcal{A}) \subset \sigma(\mathcal{A})$。

##### 函数形式的π-λ定理（定理 2.3）
设 $\mathcal{A}$ 为π-类且 $\Omega \in \mathcal{A}$；$\mathcal{H}$ 为定义在 $\Omega$ 上的实值函数类，满足：
- (a) $A \in \mathcal{A} \implies \mathbb{1}_A \in \mathcal{H}$；
- (b) $\mathcal{H}$ 为向量空间[[Wiki - 一般线性空间|向量空间]]；
- (c) 非负 $f_n \in \mathcal{H}$，$f_n \uparrow f$（有界）$\implies f \in \mathcal{H}$。

则 $\mathcal{H}$ 包含所有 $\sigma(\mathcal{A})$ -可测 [[Wiki - 可测函数]]的有界函数。

- **证明要点**：定义 $\mathcal{L} = \{A \subset \Omega; \mathbb{1}_A \in \mathcal{H}\}$，$\mathcal{A} \subset \mathcal{L}$ 且 $\mathcal{L}$ 为λ-类（由 (a)-(c) 验证）。由定理 2.2，$\sigma(\mathcal{A}) \subset \mathcal{L}$，故 $\mathbb{1}_A \in \mathcal{H}$ 对 $A \in \sigma(\mathcal{A})$；由 (b)，包含简单函数；由 (c)，包含可测函数（正负部分逼近）。

- **例子**：$\mathcal{A} =$ 开集全体（π-类），则 $\mathcal{H}$ 包含所有有界 Borel-可测 函数。

##### Dykin-乘法类定理（定理 2.4）
设 $\mathcal{H}$ 满足定理 2.3 的 (a)-(c)；$\mathcal{M} \subset \mathcal{H}$ 为包含常数的乘法类（$f, g \in \mathcal{M} \implies fg \in \mathcal{M}$）。则 $\mathcal{H}$ 包含所有有界 $\sigma(\mathcal{M})$ -可测函数，其中 $\sigma(\mathcal{M}) = \sigma(\{f^{-1}(B); B \in \mathcal{B}_{\mathbb{R}}, f \in \mathcal{M}\})$。

- **证明要点**：构造π-类 $\mathcal{A} = \{\bigcap_{i=1}^k \{f_i > a_i\}; k \in \mathbb{N}, f_i \in \mathcal{M}, a_i \in \mathbb{R}\}$，$\sigma(\mathcal{A}) = \sigma(\mathcal{M})$，$\Omega \in \mathcal{A}$，$\mathbb{1}_A \in \mathcal{H}$（用 $\phi_n(x) \uparrow \mathbb{1}_{x>0}$ 逼近，Weierstrass 逼近多项式）[[Wiki - Weierstrass一致逼近定理]]。由定理 2.3，$\mathcal{H}$ 包含 $\sigma(\mathcal{A})$ -可测函数。
