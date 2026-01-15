---
aliases:
  - Einstein Summation Convention
  - Kronecker Delta
  - Levi-Civita Symbol
  - Dyad
  - 并矢
info: 包含爱因斯坦求和约定、Kronecker Delta、Levi-Civita符号及并矢的定义与运算规则。
date: 2023-05-03-星期三 22:19
update: 2026-01-09-星期五 10:10
tags:
  - wiki/year2023
  - wiki/month05
id: wiki20230503221923
banner: "![[astrowalk.gif]]"
---
---
#线性代数 
#数学分析/多变量微积分 

# 定义

## 爱因斯坦求和约定 (Einstein Summation Convention)

在矢量和张量运算中，当某一项中一个指标（Index）重复出现两次时，默认对该指标的所有可能取值进行求和。
*   **哑指标 (Dummy Index)**：重复出现的指标，表示求和，可以任意更换字母（如 $i$ 换为 $j$）而不改变表达式含义。
*   **自由指标 (Free Index)**：在每一项中只出现一次的指标，代表方程在每一个分量上都成立。
*   **规则**：同一项中同一指标最多出现两次。

例如，对于矢量 $\vec{x} = (x_1, x_2, x_3)$ 和基底 $\vec{e}_i$：
$$ \vec{x} = \sum_{i=1}^3 x_i \vec{e}_i \implies \vec{x} = x_i \vec{e}_i $$

## Kronecker Delta ($\delta_{ij}$)
反映指标的正交性。定义如下：
$$ \delta_{ij} = \begin{cases} 1 & i = j \ 0 & i \neq j \end{cases} $$
**性质**：
1.  **代换性质**：$x_i \delta_{ij} = x_j$。
2.  **正交关系**：在标准正交基下，$\vec{e}_i \cdot \vec{e}_j = \delta_{ij}$。
3.  **转动矩阵关系**：$\delta_{ij} R_{ii'} R_{jj'} = \delta_{i'j'} \iff R^T R = I$。

## Levi-Civita 符号 ($\varepsilon_{ijk}$)
反映全反对称性，定义为：
$$ \varepsilon_{ijk} = \begin{cases} 1 & (i, j, k) \text{ 为偶排列 (123, 231, 312)} \ -1 & (i, j, k) \text{ 为奇排列 (132, 213, 321)} \ 0 & \text{ 其他情况 (有重复指标)} \end{cases} $$
**性质**：
1.  **与叉乘的关系**：$\vec{a} \times \vec{b} = \varepsilon_{ijk} a_i b_j \vec{e}_k$。
2.  **混合积**：$(\vec{a} \times \vec{b}) \cdot \vec{c} = \varepsilon_{ijk} a_i b_j c_k = \det(\vec{a}, \vec{b}, \vec{c})$。
3.  **$\varepsilon-\delta$ 恒等式**：$\varepsilon_{ijk} \varepsilon_{ilm} = \delta_{jl} \delta_{km} - \delta_{jm} \delta_{kl}$。

## 并矢 (Dyad)
并矢是由两个矢量 $\vec{u}, \vec{v}$ 形成的张量积对象，记作 $\vec{u}\vec{v}$ 或 $\vec{u} \otimes \vec{v}$。
*   在坐标分量下，并矢 $\mathbf{\sigma} = \vec{x} \cdot \vec{e}_i \vec{e}_i$。
*   并矢 $\vec{e}_i \vec{e}_j$ 可以看作矩阵 $E_{ij}$ 的基底。
*   **作用**：并矢作为一个算符，可以作用在矢量上。例如 $(\vec{u}\vec{v}) \cdot \vec{w} = \vec{u} (\vec{v} \cdot \vec{w})$。

# 相关定理

## 雅可比恒等式 (Jacobi Identity)
向量叉乘满足：
$$ \vec{a} \times (\vec{b} \times \vec{c}) + \vec{b} \times (\vec{c} \times \vec{a}) + \vec{c} \times (\vec{a} \times \vec{b}) = 0 $$
该恒等式可通过 $\varepsilon-\delta$ 恒等式证明。

# 应用实例

## 例子 1：证明矢量恒等式
可以用爱因斯坦求和表示证明该式。在本文中，$\mathbf(A)$ 是一个向量场，f 是一个标量场。下面是证明过程。

1.  已知矢量恒等式

由矢量恒等式：$\nabla \times (f \mathbf(A)) = (\nabla f) \times \mathbf(A) + f(\nabla \times \mathbf(A))$，其中 $\times$ 表示向量积，$\nabla$ 表示梯度算子。在本文中，下标 $i$ 表示第 $i$ 个分量。

2.  写出向量积和梯度算子的定义

根据向量积的定义，该式可以写成：
$$ \nabla \times (f \mathbf(A))_i = \sum_{j,k}\varepsilon_{ijk}\frac{\partial}{\partial x_j}(fA_k) $$

其中，$\varepsilon_{ijk}$ 表示 Levi-Civita 符号，即当 $i,j,k$ 是偶置换时 $\varepsilon_{ijk}=1$，当 $i,j,k$ 是奇置换时 $\varepsilon_{ijk}=-1$，否则 $\varepsilon_{ijk}=0$。

根据梯度算子的定义，可将该式表示为：

$$ (\nabla f \times \mathbf(A))_i + f(\nabla \times \mathbf(A))_i = \sum_{j,k}\varepsilon_{ijk}\frac{\partial f}{\partial x_j} A_k + f \sum_{j,k}\varepsilon_{ijk} \frac{\partial A_k}{\partial x_j} $$

3.  证明各项等价

考虑各项分别展开

1）$(\nabla f \times \mathbf(A))_i$

展开左边的 $\nabla f \times \mathbf(A)$ 得：

$$ (\nabla f \times \mathbf(A))_i = \sum_{j,k}\varepsilon_{ijk}\\\frac{\partial f}{\partial x_j}A_k $$

2）$f(\nabla \times \mathbf(A))_i$

根据标量乘以向量的定义，展开右边的 $f(\nabla \times \mathbf(A))$ 得：

$$ f(\nabla \times \mathbf(A))_i = f \sum_{j,k}\varepsilon_{ijk}\\\frac{\partial A_k}{\partial x_j} $$

因此，左右两项相等

3）$\sum_{j,k}\varepsilon_{ijk}\\\frac{\partial f}{\partial x_j} A_k$

注意到此项实际上就是标量、标量场、向量场的点积形式，可以利用爱因斯坦求和表示：

$$ \sum_{j,k}\varepsilon_{ijk}\\\frac{\partial f}{\partial x_j} A_k = \varepsilon_{ijk}\\\frac{\partial f}{\partial x_j} A_k = (\nabla f)_jA_k\varepsilon_{ijk} $$

4）$f \sum_{j,k}\varepsilon_{ijk} \\frac{\partial A_k}{\partial x_j}$

同样，由爱因斯坦求和规则得：

$$ f \sum_{j,k}\varepsilon_{ijk} \\frac{\partial A_k}{\partial x_j} = f(\nabla \times \mathbf(A))_i $$

因此，将展开式代入原恒等式中，证明恒等式成立。

## 例子 2：证明向量三线性积展开

首先，我们知道叉乘的结果是一个向量，可以用向量的分量表示。因此，我们可以将叉乘展开为分量的形式：

$$ \begin{align} (\mathbf(A) \times \mathbf(B))_i &= \epsilon_{ijk} A_j B_k \ (\mathbf(A) \times \mathbf(B))_j &= \epsilon_{jki} A_i B_k \ (\mathbf(A) \times \mathbf(B))_k &= \epsilon_{kij} A_i B_j \end{align} $$

其中，$\epsilon_{ijk}$ 是 Levi-Civita 符号，对于 $i,j,k$ 的排列是 $1,-1$ 或 $0$。

然后，我们将 $\nabla \times (\mathbf(A) \times \mathbf(B))$ 展开为分量的形式：

$$ \begin{align*}    \\ \\ (\nabla \times (\mathbf(A) \times \mathbf(B)))_i &= \epsilon_{ijk} \frac{\partial}{\partial x_j} (\mathbf(A) \times \mathbf(B))_k \ & \\ = \epsilon_{ijk} \frac{\partial}{\partial x_j} (\epsilon_{klm} A_l B_m) \ & \\ = \epsilon_{ijk} \epsilon_{klm} \frac{\partial}{\partial x_j} (A_l B_m) \ & \\ = (\delta_{il}\delta_{jm} - \delta_{im}\delta_{jl}) \frac{\partial A_l}{\partial x_j} B_m + (\delta_{il}\delta_{jm} - \delta_{im}\delta_{jl}) A_l \frac{\partial B_m}{\partial x_j} \ & \\ = \frac{\partial A_l}{\partial x_j} B_j - \frac{\partial A_j}{\partial x_l} B_j + A_l \frac{\partial B_j}{\partial x_j} - A_j \frac{\partial B_l}{\partial x_j} \end{align*} $$

其中，$\delta_{ij}$ 是 Kronecker 符号，当 $i=j$ 时为 $1$，其他情况为 $0$。

最终，我们可以将 $\nabla \times (\mathbf(A) \times \mathbf(B))$ 用爱因斯坦求和表示为：

$$(\nabla \times (\mathbf(A) \times \mathbf(B)))_i = \epsilon_{ijk} (\partial_j A_l)B_k - (\partial_j A_k)B_j - A_l(\partial_j B_l) + A_k (\partial_j B_i) $$ 

其中，$l$ 和 $k$ 对 $j$ 进行了求和。

所以

$$ \nabla \times(A\times B)=(B\cdot \nabla)A + A(\nabla \cdot B)- (A\cdot \nabla)B - B(\nabla \cdot A)
$$