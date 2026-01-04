---
aliases: 
info: 
date: 2025-06-18-星期三 16:22
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 几何学/度量空间
  - 多元统计分析
id: wiki20250618162210
banner: "![[astrowalk.gif]]"
---
---

相似系数矩阵 $\begin{array} { r } { S = \left( s _ { i j } \right) . } \end{array}$ , $s _ { i j }$ 是对象 $i , j$ 的相似系数 (可正可负)，对角元最大, 假设𝑆对称。距离矩阵 $D = ( d _ { i j } ) , d _ { i j } { \ge } 0 , d _ { i i } { = } 0$ ，假设 $D$ 对称。[[Wiki - 度量空间|距离空间]]

## The 1 欧式相似系数矩阵


一个相似度矩阵 ${ \cal { S } } = ( s _ { i j } )$ 称为是**欧氏的**（Euclidean）, 如果存在某个 $k$ 以及 $n$ 个向量 $\mathbf { x } _ { 1 } , \ldots , \mathbf { x } _ { n } \in R ^ { k }$ , 使得 $s _ { i j } = \mathbf { x } _ { i } ^ { \top } \mathbf { x } _ { j } .$ , 即 $S = X X ^ { \top }$ , $X = ( \mathbf { x } _ { 1 } , \ldots , \mathbf { x } _ { n } ) ^ { \top }$ .

对称的相似系数矩阵 S 为欧氏的 $\Leftrightarrow S \geq 0 ($ (半正定)。$\Leftrightarrow$ 代数定理： $B \geq 0$ 当且仅当存在 $X$ 使得 $B = X X ^ { \intercal }$ .

### 证明：

若 S 为欧氏的，存在 $p , \mathbf { x } _ { 1 } , \mathbf { x } _ { 2 } , . . . , \mathbf { x } _ { n } \in R ^ { p }$ ，使得 ${ \boldsymbol { s } } _ { i j } = \mathbf { x } _ { i } ^ { \top } \mathbf { x } _ { j }$ , 记 $X = \left( \mathbf { x } _ { 1 } , \mathbf { x } _ { 2 } , . . . , \mathbf { x } _ { n } \right) ^ { \mathsf { T } }$ , 则 $\boldsymbol { S } = \boldsymbol { X } \boldsymbol { X } ^ { \intercal } \Rightarrow \boldsymbol { S } \geq \boldsymbol { 0 } .$ .

反之，若相似度矩阵 S 为半正定 [[Wiki - 正定矩阵]]的，则 S 有谱分解 [[Wiki - 矩阵可相似对角化的条件]]

$$
S = U \Lambda U ^ { \top } = \ \left( U \Lambda ^ { 1 / 2 } \right) \left( U \Lambda ^ { 1 / 2 } \right) ^ { \top } , U ^ { \top } U = U U ^ { \top } = I _ { n }
$$

这说明 $S$ 可由 $X = U \Lambda ^ { 1 / 2 }$ 的各行之间的内积构成。

## The 2欧式距离矩阵

假设 $D = ( d _ { i j } )$ 是 $n \times n$ 距离矩阵, 即 $d _ { i j } = d _ { j i } \geq 0 _ { \ast }$ , $d _ { i i } = 0$ 。如果存在某个 $k$ 以及 $n$ 个向量 $\mathbf { x } _ { 1 } , \ldots , \mathbf { x } _ { n } \in R ^ { k }$ , 使得 $d _ { i j } = | | { \bf x } _ { i } - { \bf x } _ { j } | |$ , 则称 $D$ 是欧氏距离矩阵或 $D$ 是**可欧氏化的**。

假设 $D = ( d _ { i j } )$ 是 $n \times n$ 距离矩阵 ( $d _ { i j } = d _ { j i } \ge 0$ , $d _ { i i } = 0 )$ ,  记 $\begin{array} { r } { A = \big ( { - d _ { i j } ^ { 2 } } / { 2 } \big ) , J _ { n } = I _ { n } - \frac { \mathbb { 1 } \mathbb { 1 } ^ { \top } } { n } , } \end{array}$ ，则 $D$ 是欧氏距离矩阵当且仅当 $S = J _ { n } A J _ { n } \geq 0$ （即 $s$ 是欧氏内积矩阵)。

### Proof

**必要性**：假设 $D$ 是欧氏的，则存在某个 $k$ 和向量 $\mathbf { x } _ { 1 } , \ldots , \mathbf { x } _ { n } \in R ^ { k }$ ，使得

$$
d _ { i j } = \left\| \mathbf { x } _ { i } - \mathbf { x } _ { j } \right\| \Rightarrow d _ { i j } ^ { 2 } = \| \mathbf { x } _ { i } \| ^ { 2 } + \left\| \mathbf { x } _ { j } \right\| ^ { 2 } - 2 \mathbf { x } _ { i } ^ { \top } \mathbf { x } _ { j }
$$

记 $\boldsymbol{ \xi }  = ( \| \mathbf { \boldsymbol { x } } _ { 1 } \| ^ { 2 } , \dots , \| \mathbf { \boldsymbol { x } } _ { n } \| ^ { 2 } ) ^ { \top } / 2$ ，则

$$
\begin{array} { c }   
A&=\left( -\frac{d_{ij}^{2}}{2} \right)_{ij}
\\ & { \displaystyle = - \mathbb { 1 } \pmb { \xi } ^ { \top } - \pmb { \xi } \mathbb { 1 } ^ { \top } + X X ^ { \top } }  \end{array}
$$

其中 $X = ( \mathbf { x } _ { 1 } , \ldots , \mathbf { x } _ { n } ) ^ { \top }$ 。

注意 $X X ^ { \top } \geq 0$，两边同时左、右乘 $\begin{array} { r } { J _ { n } = I _ { n } - P _ { \mathbb { 1 } } = I _ { n } - \frac { \mathbb { 1 } \mathbb { 1 } ^ { \mathsf { T } } } { n } } \end{array}$ , 消去秩 1 项，即双向中心化：

$$
S \triangleq J _ { n } A J _ { n } = J _ { n } X X ^ { \top } J _ { n } = X _ { c } X _ { c } ^ { \top } \geq 0
$$

其中 $X _ { c } = J _ { n } X$ 是 X 的中心化。

下面证明它也是 $D$ 可欧氏化的**充分条件**：假设 $S = \left( {s}_{ij}\right)  = {J}_{n}A{J}_{n} \geq  0$ , 则存在某个 $k$ 和 ${\mathbf{x}}_{1},\ldots ,{\mathbf{x}}_{n} \in  {R}^{k}$ , 使得
${s}_{ij} = {\mathbf{x}}_{i}^{\top }{\mathbf{x}}_{j}$ , 即 $S = X{X}^{\top },X = {\left( {\mathbf{x}}_{1},\ldots ,{\mathbf{x}}_{n}\right) }^{\top }$ 。需要证明 $\begin{Vmatrix}{{\mathbf{x}}_{i} - {\mathbf{x}}_{j}}\end{Vmatrix} = {d}_{ij}$

记 $A = \left( {-{d}_{ij}^{2}/2}\right)  \triangleq  \left( {a}_{ij}\right) ,{a}_{ij} =  - \frac{{d}_{ij}^{2}}{2}$ , 容易验证 $S = {J}_{n}A{J}_{n}$ 的 (i, j) 元

$$
{\mathbf{x}}_{i}^{\top }{\mathbf{x}}_{j} = {s}_{ij} = {a}_{ij} - {\bar{a}}_{i \cdot  } - {\bar{a}}_{\cdot j} + {\bar{a}}_{\cdot  \cdot  }
$$
其中 ${\bar{a}}_{i \bullet  },{\bar{a}}_{\bullet j}$ 是 $A$ 的第 $i$ 行的平均.

由于 $A$ 对称且对角元为 $0,{a}_{ii} =  - \frac{{d}_{ii}^{2}}{2} = 0,{\bar{a}}_{\bullet i} = {\bar{a}}_{i \bullet  }$ ,

$$
\begin{align}
{\begin{Vmatrix}{\mathbf{x}}_{i} - {\mathbf{x}}_{j}\end{Vmatrix}}^{2} &= {\mathbf{x}}_{i}^{\top }{\mathbf{x}}_{i} + {\mathbf{x}}_{j}^{\top }{\mathbf{x}}_{j} - 2{\mathbf{x}}_{i}^{\top }{\mathbf{x}}_{j} = {s}_{ii} + {s}_{jj} - 2{s}_{ij} \\
&= \left( {{a}_{ii} - {\bar{a}}_{i \bullet  } - {\bar{a}}_{\bullet i} + {\bar{a}}_{\bullet  \bullet  }}\right)  + \left( {{a}_{jj} - {\bar{a}}_{i \bullet  } - {\bar{a}}_{\bullet i} + {\bar{a}}_{\bullet  \bullet  }}\right)  - 2\left( {{a}_{ij} - {\bar{a}}_{i \bullet  } - {\bar{a}}_{\bullet j} + {\bar{a}}_{\bullet  \bullet  }}\right) \\
& =  - 2{a}_{ij} = {d}_{ij}^{2}
\end{align}
$$

