---
aliases: 
info: 
date: 2025-03-09-星期日 21:42
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 多元统计分析
  - 概率论/概率分布
id: wiki20250309214237
banner: "![[astrowalk.gif]]"
---
---

## def 1 球面均匀分布

```ad-definition

 $R^{n}$ 中原点为中心、半径为1的单位超球面,即 $(n-1)$ -sphere  

$$
S^{n-1}=\{{\bf x}\in R^{n}:\,\|{\bf x}\|=1\}.
$$  

若𝐮落在球面上面积相等的区域的概率相同，则称 $\mathbf{u}$ 服从球面均匀分布，记作 $\mathbf{u}{\sim}U(S^{n-1})$ 。  

注： $U(S^{n-1})$ 关于 $R^{n}$ 勒贝格测度 $\mu^{n}$ 没有密度, 关于 $\mu^{n-1}$ 的密度为  

$$
\begin{array}{r}{p(\mathbf{u})=\frac{1}{|S^{n-1}|},\mathbf{u}\in S^{n-1}\,\mathrm{~w.r.t~}\mu^{n-1}}\end{array}
$$  

```

$E\mathbf{u}=0, Var\mathbf{u}= \frac{1}{n}$

[[Wiki - n维图形体积的计算]]
## Pro1

假设 $\mathbf{u}=(u_{1},\ldots,u_{n})^{\top}=\,(\mathbf{u}_{1}^{\top},\mathbf{u}_{2}^{\top})^{\top}{\sim}U(S^{n-1})$ ，则对任何 $1\leq k\leq n-1$ ， $\mathbf{u}_{1}=(u_{1},\ldots,u_{k})^{\top}$ 的边际概率密度为$f({\mathbf{u}_{1})=\frac{\Gamma(n/2)}{\pi^{k/2}\Gamma((n-k)/2)}\;(1-\|\mathbf{u}_{1}\|^{2})^{(n-k-2)/2},\|\mathbf{u}_{1}\|}$ ≤ 1.  

[[Wiki - 随机向量的边际分布]]

### cal 1

当 k=n-2 时，边际分布为 $B^{n-2}$ 上的均匀分布

当 k=1 时，等价的有 $\frac {{u_{1}+1}} {2}\sim Beta\left( \frac{n-1}{2}, \frac{n-1}{2} \right)$，$\sqrt{ n-1 } \frac{u_{1}}{\sqrt{ 1-u_{1}^{2} }}\sim t_{n-1}$

[[Wiki - beta分布]]

[[Wiki - t分布]]
## Pro 2 

对于球面均匀分布的一元边际， $E(u_{1})=0,v a r(u_{1})=\frac{1}{n}$ 

$1=E(u_{1}^{2}+\cdots+u_{n}^{2})=n E(u_{1}^{2})$ ，所以 $\begin{array}{r}{E(u_{1}^{2})=\frac{1}{n}.}\end{array}$ . 

一元边际 $u_{1}$ 集中于 0 附近, 由切比雪夫不等式 $\begin{array}{r}{P(|u_{1}|<\varepsilon)>1-\frac{1}{n\varepsilon^{2}}\to1,n\to\infty}\end{array}$ 高维球面面积大部分在赤道带附近. 

$\sqrt{n}u_{1}\rightarrow N(0,1),n\rightarrow\infty$

## Pro 3

推论 2. 若𝐮 ${\sim}U(S^{n-1}),$ 𝐳 ⫫𝐮, 则 $\mathbf{z}^{\mathsf{T}}\mathbf{u}\xrightarrow{\mathsf{P}}0$ ， $n\to\infty$  

注：高维空间中 $(\ m=-\infty)$ ）随机/均匀取一个方向𝐮，它与任何独立向量𝒛几乎正交，与任何给定的方向𝐭几乎正交。  

推论 3：假设 $\mathbf{u,v}{\mathrm{~iid}}{\sim}U(S^{n-1})$ , 则 $\mathbf{u}^{T}\mathbf{v} \overset{d}{=} \mathbf{u}_{1} \overset{d}{=} \mathbf{v}_{1}$, $\mathbf{u}^{T}\mathbf{v}\perp \mathbf{u},\mathbf{u}^{T}\mathbf{v}\perp \mathbf{v}$  

注：推论 3 说明“在球面/圆周上随机地选取两个点”等价于“给定一个点，随机地选取另外一个点”（参见贝特朗悖论解法 1）。

### Proof

2、
$$
P(|\mathbf{z}^{\top}\mathbf{u}|>\varepsilon)=P(|u_{1}|>\varepsilon)<1/n\varepsilon^{2}\rightarrow0,n\rightarrow\infty_{\circ}
$$  
## the 1 

球面均匀分布是球面上唯一的球对称分布[[Wiki - 球对称分布]]
### proof

我们只需证明：若随机向量 $\mathbf{v}$ 在球面𝑆 𝑛−1上是球对称的 ，则必定 $\mathbf{v}{\sim}U(S^{n-1})$ 。取 $\mathbf{u}{\sim}U(S^{n-1})$ , $\mathbf{u}$ 与 $\mathbf{v}$ 独立，下面证明 $\mathbf{v}$ 与𝐮同分布。$\mathbf{u,v}\in S^{n-1}$ 都是球对称的，由推论1[[Wiki - 球对称分布#cal]]， $\mathbf{v}^{\top}\mathbf{u}\overset{d}{=}u_{1}$ ，且 $\mathbf{v}^{\top}\mathbf{u}\overset{d}{=}v_{1}$ ，$u_{1} = v_{1}$（进而 $u_{i}{\overset{d}{=}}v_{i},i=1,\ldots,n,$ 但这并不蕴含 ${\bf u},{\bf v}$ 同分布）  

对任何常数向量 $\mathbf{t}\in S^{n-1}$ ，因为𝐮， $\mathbf{v}$ 都是球对称的，  

$$
\mathbf{t}^{\top}\mathbf{u}\overset{d}{=}u_{1},\mathbf{t}^{\top}\mathbf{v}\overset{d}{=}v_{1}\Rightarrow\mathbf{t}^{\top}\mathbf{v}\overset{d}{=}\mathbf{t}^{\top}\mathbf{u}
$$  

由引理2 （Cramer-Wold定理）[[Wiki - Cramer-Wold定理]]， $\mathbf{v}$ 与 $\mathbf{u}$ 同分布，从而 $\mathbf{v}{\sim}U(S^{n-1})$ 。  
