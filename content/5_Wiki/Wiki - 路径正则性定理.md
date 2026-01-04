---
aliases:
  - cadlag函数
info:
date: 2025-09-24-星期三 17:21
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
id: wiki20250924172135
banner: "![[astrowalk.gif]]"
---
---
## Def 1 正则过程 (Regular Process / Càdlàg Process)

```ad-definition
title: Regular Process (Càdlàg Process)

一个函数 $\phi: \mathbb{R}_+ \to \mathbb{R}$ 被称为 **Skorokhod 函数** (在现代文献中更常称为 **càdlàg** 函数)，如果：
1.  它在每个点都是**右连续的 (right-continuous)**：$\lim_{s \downarrow t} \phi(s) = \phi(t)$。
2.  它在每个点都存在**左极限 (left limits exist)**：$\lim_{s \uparrow t} \phi(s)$ 存在且有限。

"Càdlàg" 是法语 "continue à droite, limites à gauche" 的缩写。

一个随机过程 $\{X_t\}$ 如果其样本路径（即对几乎所有的 $\omega$，函数 $t \mapsto X_t(\omega)$）都是 càdlàg 函数，则被称为**正则过程 (regular process)** 或 **càdlàg 过程**。
```

[[Wiki - 随机过程的连续性]]、[[Wiki - Skorokhod表示定理]]

这是我们在将鞅推广到连续时间时打的**第二个技术补丁**，它规范了过程路径的形态。

-   **为什么要限制路径？** 如果路径可以任意震荡，那么像 $\sup_{0 \le s \le t} X_s$ 这样的量就可能无定义或不可测。
-   **为什么是 Càdlàg？** Càdlàg 路径是“良态”路径的黄金标准。它足够一般，可以包含像泊松过程那样的跳跃过程，但又足够规则，排除了病态的震荡。对于一个 càdlàg 路径，$\sup_{0 \le s \le t} X_s$ 的值等于在 $[0, t]$ 区间内所有有理数点上的上确界，这保证了它的**可测性**。这就解决了我们前面提出的第一个难题。

与 [[Wiki - Wiener定理]] 一致
## The 1 连续时间鞅的核心定理

```ad-theorem
title: Key Theorems for Continuous-Time Submartingales

在满足**通常条件**的滤子下，我们可以将离散时间的核心定理推广到连续时间。

-   **路径正则性定理 (Thm 8.5):** 任何一个（满足一定弱连续性条件的）下鞅，都存在一个 **càdlàg 版本**。
    
```

[[Wiki - Filtration的通常条件]]、[[Wiki - sigma代数流|filtration信息流]]、[[Wiki - 上鞅和下鞅]]、[[Wiki - 随机过程的同质性]]


这个定理是基石！它告诉我们，假设下鞅路径是 càdlàg 的并不过分，因为这个好属性是由下鞅性质和“通常条件”共同**蕴含**的。


