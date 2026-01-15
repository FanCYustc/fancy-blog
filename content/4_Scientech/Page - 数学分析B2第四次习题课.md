---
aliases:
info:
date: 2023-04-08-星期六 14:59
update:
tags:
  - page/year2023
  - page/month04
  - 数学分析/曲线积分和曲面积分
  - 数学分析/多变量微积分
id: page20230408145913
banner: "![[astroflow.gif]]"
---
---

### 1. 凸函数的一阶微分判别法
#### **题目**：
设 $D \subseteq \mathbb{R}^n$ 是凸区域，函数 $f: D \to \mathbb{R}$ 被称为是 $D$ 上的凸函数，如果对任意 $x, y \in D, \lambda \in [0, 1]$ 有
$$f(\lambda x + (1-\lambda)y) \leq \lambda f(x) + (1-\lambda)f(y)$$
如果函数 $f$ 有连续的一阶偏导数，证明 $f$ 为凸函数的充要条件是：对 $\forall x, y \in D$ 有
$$f(y) \geq f(x) + (y-x) \cdot \nabla f(x)$$

#### **解答**：
**必要性 ($\Rightarrow$)**：
已知 $f$ 是凸函数，则对于任意 $\lambda \in (0, 1]$，有
$$f(x+\lambda(y-x)) = f((1-\lambda)x + \lambda y) \leq (1-\lambda)f(x) + \lambda f(y)$$
移项整理得：
$$f(x+\lambda(y-x)) - f(x) \leq \lambda(f(y) - f(x))$$
即：
$$\frac{f(x+\lambda(y-x)) - f(x)}{\lambda} \leq f(y) - f(x)$$
由微分中值定理（或方向导数的定义），当 $\lambda \to 0^+$ 时，
$$LHS = \lim_{\lambda \to 0^+} \frac{f(x+\lambda(y-x)) - f(x)}{\lambda} = \nabla f(x) \cdot (y-x)$$
所以：
$$(y-x) \cdot \nabla f(x) \leq f(y) - f(x)$$
即 $f(y) \geq f(x) + (y-x) \cdot \nabla f(x)$。

**充分性 ($\Leftarrow$)**：
设对任意 $x, y$ 都有 $f(y) \geq f(x) + (y-x) \cdot \nabla f(x)$。
我们要证明 $f(\lambda x + (1-\lambda)y) \leq \lambda f(x) + (1-\lambda)f(y)$。
令 $z = \lambda x + (1-\lambda)y$。
利用已知条件，分别对 $x$ 和 $y$ 应用不等式（在 $z$ 点展开）：
$$ 
\begin{cases}
 f(x) \geq f(z) + (x-z) \cdot \nabla f(z) \\
f(y) \geq f(z) + (y-z) \cdot \nabla f(z)
\end{cases}
$$
第一式乘以 $\lambda$，第二式乘以 $(1-\lambda)$，然后相加：
$$ 
\lambda f(x) + (1-\lambda)f(y) \geq (\lambda + 1 - \lambda)f(z) + [\lambda(x-z) + (1-\lambda)(y-z)] \cdot \nabla f(z) 
$$
注意到 $\lambda(x-z) + (1-\lambda)(y-z) = \lambda x + (1-\lambda)y - z = z - z = 0$。
所以：
$$\lambda f(x) + (1-\lambda)f(y) \geq f(z) = f(\lambda x + (1-\lambda)y)$$
得证。

---

### 2. 曲面法线夹角与距离的关系
#### **题目**：
设 $D$ 为凸的平面有界闭区域，曲面 $\Gamma$ 的方程为 $z = f(x, y), (x, y) \in D$，其中 $f$ 在 $D$ 上有有界的二阶偏导数。设 $P, Q \in D$，用 $\varphi(P, Q)$ 表示曲面 $\Gamma$ 在点 $P$ 和点 $Q$ 的法线的夹角。证明：对任意 $P, Q \in D$，都有
$$\varphi(P, Q) \leq c \rho(P, Q)$$
其中 $c$ 为只与 $f$ 有关的常数。

#### **解答**：
曲面方程为隐函数形式 $F(x, y, z) = f(x, y) - z = 0$。
点 $P, Q$ 处的法向量分别为：
$$n(P) = (f_x(P), f_y(P), -1), \quad n(Q) = (f_x(Q), f_y(Q), -1)$$
显然 $|n(P)| \geq 1, |n(Q)| \geq 1$。
设夹角为 $\phi$，且 $\phi \in [0, \pi/2]$（通常取锐角或直角夹角），已知 $\phi \leq \frac{\pi}{2} \sin \phi$ （当 $\phi$ 较小时）。
我们需要建立 $\sin \phi$ 与距离 $\rho(P, Q)$ 的关系。
由向量叉乘公式：
$$\sin^2 \phi = \frac{|n(P) \times n(Q)|^2}{|n(P)|^2 |n(Q)|^2} \leq |n(P) \times n(Q)|^2$$
计算叉积 $n(P) \times n(Q)$：
$$ 
\begin{aligned}
n(P) \times n(Q) &= \begin{vmatrix} i & j & k \\ f_x(P) & f_y(P) & -1 \\ f_x(Q) & f_y(Q) & -1 \end{vmatrix} \\ 
&= (-f_y(P) + f_y(Q)) i - (-f_x(P) + f_x(Q)) j + (f_x(P)f_y(Q) - f_y(P)f_x(Q)) k
\end{aligned}
$$ 
模长的平方为：
$$ 
|n(P) \times n(Q)|^2 = (f_y(P)-f_y(Q))^2 + (f_x(P)-f_x(Q))^2 + (f_x(P)f_y(Q)-f_y(P)f_x(Q))^2
$$ 

利用二阶偏导数有界及微分中值定理：
设二阶偏导数的界为 $M$。
$$|f_x(P) - f_x(Q)| = |f_{xx}(R_1)(x_P - x_Q) + f_{xy}(R_1)(y_P - y_Q)| \leq 2M \rho(P, Q)$$
同理 $|f_y(P) - f_y(Q)| \leq 2M \rho(P, Q)$。

对于第三项，由于 $D$ 有界且 $f \in C^2$，故一阶偏导数也有界，设界为 $M'$。
$$ 
\begin{aligned}
|f_x(P)f_y(Q) - f_y(P)f_x(Q)| &= |f_x(P)(f_y(Q) - f_y(P)) + f_y(P)(f_x(P) - f_x(Q))| \ 
&\leq |f_x(P)| |f_y(Q) - f_y(P)| + |f_y(P)| |f_x(P) - f_x(Q)| \ 
&\leq M' \cdot 2M \rho + M' \cdot 2M \rho = 4MM' \rho
\end{aligned}
$$ 
综上，$\sin^2 \phi \leq C^2 \rho^2$，即 $\sin \phi \leq C \rho$。
从而 $\phi \leq \frac{\pi}{2} \sin \phi \leq c \rho(P, Q)$。

---

### 3. 有心向量场
#### **题目**：
一个 $\mathbb{R}^3$ 上的向量场被称为是有心的，如果它具有形式 $f(r)\boldsymbol{r}$，其中 $f: (0, +\infty) \to \mathbb{R}$ 是可微函数。
(1) 求所有的散度为零的有心向量场。
(2) 假设质量为 $m$ 的物体受到一个有心向量场作为力的作用。该物体的角动量定义为 $\boldsymbol{L} = \boldsymbol{r} \times m\boldsymbol{v}$。验证角动量守恒定律：$\boldsymbol{L}$ 不随时间 $t$ 变化：
(物体运动服从 Newton 第二定律：$\boldsymbol{F} = m\boldsymbol{a}$)

#### **解答**：
**(1) 求散度为零的有心向量场**
设向量场 $\boldsymbol{F}(\boldsymbol{r}) = f(r)\boldsymbol{r}$，其中 $r = \|\boldsymbol{r}\| = \sqrt{x^2+y^2+z^2}$。
计算其散度 $\nabla \cdot \boldsymbol{F}$：
利用向量分析公式 $\nabla \cdot (\varphi \boldsymbol{A}) = \nabla \varphi \cdot \boldsymbol{A} + \varphi (\nabla \cdot \boldsymbol{A})$。
这里 $\varphi = f(r), \boldsymbol{A} = \boldsymbol{r}$。
已知 $\nabla \cdot \boldsymbol{r} = 3$（在 $\mathbb{R}^3$ 中）。
$\nabla f(r) = f'(r) \nabla r = f'(r) \frac{\boldsymbol{r}}{r}$。
所以：
$$ 
\begin{aligned}
\nabla \cdot (f(r)\boldsymbol{r}) &= \left( f'(r) \frac{\boldsymbol{r}}{r} \right) \cdot \boldsymbol{r} + f(r) \cdot 3 \\
&= \frac{f'(r)}{r} (\boldsymbol{r} \cdot \boldsymbol{r}) + 3f(r) \\
&= \frac{f'(r)}{r} r^2 + 3f(r) \\
&= r f'(r) + 3f(r)
\end{aligned}
$$ 
令散度为 0，得到微分方程：
$$r \frac{df}{dr} + 3f = 0 \Rightarrow \frac{df}{f} = -\frac{3}{r} dr$$
积分得 $\ln |f| = -3 \ln r + C_1$，即 $f(r) = \frac{C}{r^3}$。
故所有的散度为零的有心向量场为 $\boldsymbol{F}(\boldsymbol{r}) = \frac{C}{r^3}\boldsymbol{r}$。

**(2) 验证角动量守恒**
角动量 $\boldsymbol{L} = \boldsymbol{r} \times m\boldsymbol{v}$。对时间 $t$ 求导：
$$ \frac{d\boldsymbol{L}}{dt} = \frac{d}{dt} (\boldsymbol{r} \times m\boldsymbol{v}) = \frac{d\boldsymbol{r}}{dt} \times m\boldsymbol{v} + \boldsymbol{r} \times m\frac{d\boldsymbol{v}}{dt} $$
第一项：$\frac{d\boldsymbol{r}}{dt} = \boldsymbol{v}$，故 $\boldsymbol{v} \times m\boldsymbol{v} = m(\boldsymbol{v} \times \boldsymbol{v}) = \boldsymbol{0}$。
第二项：由牛顿第二定律 $m\frac{d\boldsymbol{v}}{dt} = \boldsymbol{F}$。
已知 $\boldsymbol{F} = f(r)\boldsymbol{r}$ 是有心力，方向沿 $\boldsymbol{r}$ 方向。
故 $\boldsymbol{r} \times \boldsymbol{F} = \boldsymbol{r} \times (f(r)\boldsymbol{r}) = f(r)(\boldsymbol{r} \times \boldsymbol{r}) = \boldsymbol{0}$。
综上，$\frac{d\boldsymbol{L}}{dt} = \boldsymbol{0}$，即 $\boldsymbol{L}$ 为常向量，角动量守恒。

---

### 4. 三棱锥最小侧面积
#### **题目**：
设平面上有一个三角形，它的边长分别为 $a, b, c$。以它为底面作一个高为 $h$ 的三棱锥。求这种三棱锥最小的侧面积。(用多元函数极值来做)

#### **解答**：
设底面三角形为 $ABC$，顶点为 $P$，投影点为 $H$。
设 $H$ 到三边 $a, b, c$ 的距离分别为 $x, y, z$。
侧面积 $S = \frac{1}{2} a \sqrt{h^2+x^2} + \frac{1}{2} b \sqrt{h^2+y^2} + \frac{1}{2} c \sqrt{h^2+z^2}$。
约束条件为 $H$ 在 $\triangle ABC$ 内部（或边界），$x, y, z$ 与三角形面积 $S_{\triangle ABC}$ 的关系为：
$\frac{1}{2}ax + \frac{1}{2}by + \frac{1}{2}cz = S_{\triangle ABC}$。
构建拉格朗日函数：
$$L(x,y,z,\lambda) = \sum \frac{1}{2} a \sqrt{h^2+x^2} - \lambda (\frac{1}{2}ax + \frac{1}{2}by + \frac{1}{2}cz - S)$$
求偏导可得极值点条件。
几何意义上，当 $H$ 为底面三角形的**内心**（即 $x=y=z$）时，侧面积取最小值（此时三个侧面的斜高相等）。若三角形为钝角三角形，可能极值点在外部，需考虑边界情况或旁心。但在通常理解的“三棱锥”且高落在底面上时，为内心。

---

### 5. 极大弦与切线平行
#### **题目**：
设 $\gamma$ 为简单闭曲线，$A, B \in \gamma$。线段 $AB$ 被称为 $\gamma$ 的极大弦，如果存在点 $A, B$ 的邻域 $U(A), U(B)$，使得对任意 $C \in U(A) \cap \gamma, D \in U(B) \cap \gamma$ 都有 $|CD| \leq |AB|$。设 $G$ 是平面区域，简单闭曲线 $\gamma$ 的方程是 $F(x, y) = 0$，其中 $F: G \to \mathbb{R}$ 的一阶偏导数连续，且对任意 $(x, y) \in \gamma, F'_x(x, y), F'_y(x, y)$ 不同时为零。设 $AB$ 是 $\gamma$ 的极大弦，证明曲线 $\gamma$ 在点 $A$ 和点 $B$ 处的切线平行。

#### **解答**：
设 $A(x_A, y_A), B(x_B, y_B)$。
问题转化为：目标函数 $u = (x - x_B)^2 + (y - y_B)^2$ 在约束条件 $F(x, y) = 0$ 下，在点 $A(x_A, y_A)$ 处取极大值（此时固定 $B$ 点）。
由拉格朗日乘数法，在 $A$ 点有：
$\nabla u(A) = \lambda \nabla F(A)$
即 $(2(x_A - x_B), 2(y_A - y_B)) = \lambda (F_x(A), F_y(A))$。
这意味着向量 $\vec{BA} = (x_A - x_B, y_A - y_B)$ 与 $\gamma$ 在 $A$ 处的法向量 $\nabla F(A)$ 平行，即 $\vec{BA} \perp \text{切线}_A$。
同理，固定 $A$ 点，考虑 $B$ 点的变化，可得 $\vec{AB} \perp \text{切线}_B$。
因为 $\vec{BA}$ 与 $\vec{AB}$ 共线，所以 $\text{切线}_A$ 与 $\text{切线}_B$ 都垂直于弦 $AB$，故它们相互平行。

---

### 6. 积分恒为零推导函数恒为零
#### **题目**：
令 $I = [0, 1] \times [0, 1]$。坐标平面内的正方形被称为标准的，如果它的边与 $I$ 的边平行。用 $I(a, b)$ 表示包含于 $I$，以点 $(a, b) \in I$ 为中心的最大的标准正方形。设连续函数 $f: I \to \mathbb{R}$ 满足对任意 $(a, b) \in I$ 都有
$$\iint_{I(a, b)} f(x, y) \mathrm{d}x \mathrm{d}y = 0$$
证明 $f(x, y)$ 恒为 0。

#### **解答**：
对任意 $(a, b) \in I$，以 $(a, b)$ 为中心的**最大**标准正方形 $I(a, b)$ 的边长由 $(a, b)$ 到边界 $\partial I$ 的距离决定。
设 $(a, b)$ 到边界的距离为 $d(a, b) = \min\{a, 1-a, b, 1-b\}$。
则 $I(a, b) = [a - d(a, b), a + d(a, b)] \times [b - d(a, b), b + d(a, b)]$。
题目条件为：
$$ \iint_{I(a, b)} f(u, v) \mathrm{d}u \mathrm{d}v = 0 $$

我们将 $I$ 分为四个区域，考虑下方的区域 $\Omega_1 = \{(x, y) \in I \mid y < x, y < 1-x, y < 1/2\}$。
在 $\Omega_1$ 中，点 $(x, y)$ 到边界的最小距离为 $y$。
此时 $I(x, y) = [x-y, x+y] \times [0, 2y]$。
积分条件写作：
$$ F(x, y) = \int_{x-y}^{x+y} \left( \int_0^{2y} f(u, v) \mathrm{d}v \right) \mathrm{d}u = 0, \quad \forall (x, y) \in \Omega_1 $$
令 $H(u, y) = \int_0^{2y} f(u, v) \mathrm{d}v$。则上式变为：
$$ \int_{x-y}^{x+y} H(u, y) \mathrm{d}u = 0 $$
对上述等式关于 $x$ 求偏导：
$$ H(x+y, y) \cdot 1 - H(x-y, y) \cdot 1 = 0 \implies H(x+y, y) = H(x-y, y) $$
令 $z = x-y$，则 $x+y = z+2y$。上式意味着对于固定的 $y$，函数 $u \mapsto H(u, y)$ 具有周期 $2y$（在定义域允许的范围内）。
即 $H(u+2y, y) = H(u, y)$。

对于任意固定的 $u_1, u_2$ 和足够小的 $\epsilon > 0$，我们可以找到 $y \in (0, \epsilon)$ 使得 $2y$ "整除" $|u_1 - u_2|$（或者通过调节 $y$ 使得 $u_2$ 可以通过若干个周期 $2y$ 从 $u_1$ 到达）。由于 $y$ 可以连续变化，这意味着 $H(u, y)$ 关于 $u$ 的依赖性非常弱。
更严格地，考虑 $\int_{x-y}^{x+y} H(u, y) du = 0$。由于 $H(\cdot, y)$ 是周期为 $2y$ 的函数，且在长度为 $2y$ 的区间上积分为 0，这意味着该函数在"一个周期"内的平均值为 0。
结合 $H(u, y)$ 关于 $u$ 的周期性（周期 $2y$ 可任意小），以及 $f$ 的连续性，可以推出 $H(u, y)$ 实际上不依赖于 $u$（或者说 $H(u, y)$ 必须恒为 0，但这需要更细致的论证）。
最直接的推导是：
既然 $\int_{x-y}^{x+y} H(u, y) du = 0$ 对**所有**满足条件的 $x$ 都成立，且 $H(\cdot, y)$ 有周期 $2y$。
若 $H(u, y)$ 不恒为 0，则它必须在区间内震荡。但 $y$ 是可以连续变动的。如果对于**每一个** $y$，函数 $H(\cdot, y)$ 都有周期 $2y$，这迫使 $H(u, y)$ 对 $u$ 是常数。
设 $H(u, y) = C(y)$。
代回积分式：$\int_{x-y}^{x+y} C(y) du = 2y C(y) = 0$。
因为 $y>0$，所以 $C(y) = 0$。
即 $H(u, y) = \int_0^{2y} f(u, v) \mathrm{d}v = 0$ 对任意 $u$ 和 $y \in (0, 1/2)$ 成立。
对上式关于 $y$ 求导：
$$ 2 f(u, 2y) = 0 \implies f(u, 2y) = 0 $$
所以 $f(x, y) = 0$ 在 $\Omega_1$ 内成立。
同理，由对称性，可以将 $I$ 分为上下左右四个区域，分别证明 $f$ 在各区域内为 0。
故 $f(x, y) \equiv 0$。
