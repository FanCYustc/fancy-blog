---
aliases:
  - Projective Space
  - Homogeneous Coordinates
info: 射影几何的基础空间定义
date: 2026-01-13-星期二 10:00
update:
tags:
  - wiki/month01
  - 几何学/射影几何
  - wiki/year2023
id: wiki20260113100001
banner: "![[astrowalk.gif]]"
---

# 定义

**射影空间 (Projective Space)** $\mathbb{RP}^n$ 定义为 $\mathbb{R}^{n+1} \setminus \{\mathbf{0}\}$ 在等价关系 $\sim$ 下的商空间 [[Wiki - 空间的商]] ：
$$
\mathbb{RP}^n := (\mathbb{R}^{n+1} \setminus \{\mathbf{0}\}) / \sim
$$
其中等价关系 [[Wiki - 等价关系]]定义为：对于 $\mathbf{x}, \mathbf{y} \in \mathbb{R}^{n+1} \setminus \{\mathbf{0}\}$，
$$ 
\mathbf{x} \sim \mathbf{y} \iff \exists \lambda \in \mathbb{R} \setminus \{0\}, \text{ 使得 } \mathbf{x} = \lambda \mathbf{y} 
$$ 
几何上，$\mathbb{RP}^n$ 可以被视为 $\mathbb{R}^{n+1}$ 中所有经过原点的直线的集合。

# 齐次坐标

对于 $\mathbb{RP}^n$ 中的一点 $P = [(x_0, x_1, \dots, x_n)]$，我们称 $(x_0 : x_1 : \dots : x_n)$ 为点 $P$ 的 **齐次坐标 (Homogeneous Coordinates)**。
*   **非零性**: 坐标分量不能全为 0。
*   **比例等价性**: $(x_0 : \dots : x_n) = (\lambda x_0 : \dots : \lambda x_n)$ 对任意 $\lambda \neq 0$ 成立。

# 空间分解与模型

## 仿射分解
射影空间可以分解为欧氏空间与“无穷远”元素的并集：
$$ 
\mathbb{RP}^n = \mathbb{R}^n \cup \mathbb{RP}^{n-1} 
$$ 
*   **普通点 (Finite Points)**: $x_n \neq 0$ 的点，可对应到仿射空间 $\mathbb{R}^n$ 中的点 $(x_0/x_n, \dots, x_{n-1}/x_n)$。
*   **无穷远点 (Points at Infinity)**: $x_n = 0$ 的点，构成了“无穷远超平面” $\mathbb{RP}^{n-1}$。

## 球面商模型
射影空间也可以看作是单位球面 $S^n$ 将对径点粘合后的空间：
$$ 
\mathbb{RP}^n \cong S^n / \{\mathbf{x} \sim -\mathbf{x}\} 
$$ 

# 低维情形

*   **射影直线 $\mathbb{RP}^1$**: $\mathbb{R} \cup \{\infty\}$。拓扑上同胚于圆 $S^1$。
*   **射影平面 $\mathbb{RP}^2$**: $\mathbb{R}^2 \cup l_{\infty}$（无穷远直线）。拓扑上是一个不可定向的紧致曲面（不能嵌入 $\mathbb{R}^3$）。
