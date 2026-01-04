---
aliases: 
info: n维单形和球
date: 2023-05-22-星期一 22:23
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230522222317
banner: "![[astrowalk.gif]]"
---
---

#数学分析/多变量微积分 

[[Wiki - 欧式空间向量的模]]

[[Wiki - n重积分]]


## Example1 单形


e.g.n 维单形的体积

     $$\begin{array}{*{20}{c}}{{S_n}\left( a \right) = \left\{ {\left| {\left. {\left( {{x_1},{x_2}, \ldots {x_n}} \right)} \right|} \right.{x_i} \ge 0;{x_1} + {x_2} +  \ldots {x_n} \le a} \right\}}\\{求体积{\sigma _n}\left( a \right)}\\{{\sigma_n}\left( a \right) = {a^n}{\sigma_n}\left( 1 \right)}\\{{\sigma _n}\left( 1 \right) = \smallint _0^1d{x_n}\mathop \smallint \limits_{{S_{n - 1}}\left( {1 - {x_n}} \right)} d{x_1}d{x_2} \ldots d{x_{n - 1}}}\\{ = \smallint _0^1{\sigma _{n - 1}}\left( 1 \right) \times {{\left( {1 - {x_n}} \right)}^{n - 1}}d{x_n} = \frac{{{\sigma _{n - 1}}\left( 1 \right)}}{n}}\end{array}$$

## Example 2 球
```ad-theorem


 $n$ 维欧氏空间中半径为 $R$ 的球体的体积和表面积：  

$$
\begin{array}{l} 
&{{V_{n}(R)=|B^{n}(R)|={\frac{\pi^{n/2}}{\Gamma(n/2+1)}}R^{n}}}{{={\frac{R}{n}}\times A_{n-1}(R)}}\\ &{{A_{n-1}(R)=|S^{n-1}(R)|={\frac{n\pi^{n/2}}{\Gamma(n/2+1)}}R^{n-1}}}\end{array}
$$  

$$
\begin{array}{r}{\frac{d V_{n}(R)}{d R}=A_{n-1}(R),}\end{array}
$$  

$$
\begin{array}{r}{\mathbf{\nabla}\cdot\mathbf{\boldsymbol{V}}_{n}(R)=\int_{0}^{R}A_{n-1}(r)d r\,.}\end{array}
$$  

```

### Proof



[[Wiki - n重积分的换元]]

 $$\begin{array}{*{20}{c}}{{B_n}\left( a \right) = \left\{ {x_1^2 + x_2^2 \ldots  + x_n^2 \le {a^2}} \right\}}\\{{B_n}\left( a \right) = {a^n}{B_n}\left( 1 \right)}\\{{B_n}\left( 1 \right) = \mathop \smallint \limits_{x_n^2 + x_{n - 1}^2 \le 1} d{x_{n - 1}}d{x_n}\mathop \smallint \limits_{{B_{n - 2}}\left( {\sqrt[{}]{{1 - x_{n - 1}^2 - x_n^2}}} \right)} d{x_1}d{x_2} \ldots d{x_{n - 2}}}\\{ = {\sigma _{n - 2}}\left( 1 \right)\mathop \smallint \limits_0^{2 \pi } \theta d\theta \smallint _0^1r{{\left( {1 - {r^2}} \right)}^{\frac{{n - 2}}{2}}}dr = \frac{{2 \pi }}{n}{\sigma _{n - 2}}\left( 1 \right)}\end{array}$$

代入初值得

              $${\sigma _{2n}}\left( 1 \right) = \frac{{{\pi ^n}}}{{n!}};{\sigma _{2n - 1}}\left( 1 \right) = \frac{{{2^n} \times {\pi ^{n - 1}}}}{{\left( {2n - 1} \right)! !}}$$

观察后猜想：表面积为体积关于 r 的导数 [[Wiki - 函数的导数]]



## Pro 1

单位球的体积和表面积分别在 $n=5$ 、7 时最大，之后单调下降趋于 0. 半径不为 1 的的球体体积和表面积同样也在某个𝑛处达到极大（未必是 5，7），之后同样趋于 0。  

## Cal 1


```ad-lemma

假设 $g(r)$ 是一元连续函数，则  

$$
\begin{array}{r}{\int_{\|\mathbf{x}\|\leq R}g(\|\mathbf{x}\|)d\mathbf{x}=A_{n-1}\int_{0}^{R}g(r)r^{n-1}d r,}\end{array}
$$  

其中 $\begin{array}{r}{A_{n-1}=\left|S^{n-1}\right|=\frac{n\pi^{n/2}}{\Gamma\left(n/2+1\right)};}\end{array}$ 为单位超球面 $S^{n-1}$ 的面积。 

n 维球的体积
```

### Proof

用球坐标换元 [[Wiki - 球坐标]]

引入球坐标变换 $\mathbf{x}\rightarrow\left(r,\mathbf{0}\right)=\left(r,\theta_{1},\ldots,\theta_{n-1}\right),$ ，  

$$
\begin{array}{l}{\displaystyle{g(\|\mathbf{x}\|)d\mathbf{x}=\int_{D_{n}}g(r)r^{n-1}d r d\sigma\;=\;\int_{0}^{R}g(r)r^{n-1}d r\int_{S^{n-1}}\!\!\!\!\!\!\!}}\\ {\displaystyle{\mathrm{~}_{1}\int_{0}^{R}g(r)r^{n-1}d r\circ}}\end{array}
$$  