---
aliases: 
info: 
date: 2024-05-29-星期三 19:53
update: 
tags:
  - wiki/year2023
  - wiki/month01
  - 几何学
  - 数学分析
id: wiki20240529195334
banner: "![[astrowalk.gif]]"
---
---

## 空间直线

### 一般式
空间直线由两平面相交来定义，将两空间平面方程联立
$$ \left\{
\begin{aligned}
A_1x+B_1y+C_1z+D_1=0 \\
A_2x+B_2y+C_2z+D_2=0
\end{aligned}
\right.
$$
### 对称式/点向式
根据一点$M_0(x_0,y_0,z_0)$与方向向量$s=(m,n,p)$定义
$$
\frac{x-x_0}{m}=\frac{y-y_0}{n}=\frac{z-z_0}{p}
$$
### 参数式
根据对称式方程， 设: 
$$
t=\frac{x-x_0}{m}=\frac{y-y_0}{n}=\frac{z-z_0}{p}
$$
则可以得到
$$
\left\{
\begin{aligned}
x&=x_0+mt\\
y&=y_0+nt\\
z&=z_0+pt
\end{aligned}
\right.
$$
### 两直线夹角
**定义**：两直线的方向向量的夹角（锐角）
设直线$L_1$和$L_2$的方向向量为$s_1$, $s_2$
则 $L_1$和$L_2$夹角$\phi$由以下公式来确定:
$$
\cos\phi=\frac{|m_1m_2+n_1n_2+p_1p_2|}{\sqrt{m_1^2+n_1^2+p_1^2}\sqrt{m_2^2+n_2^2+p}}
$$


## 空间平面

### 一般形式
$$F(x,y,z)=Ax+By+Cz+D=0$$

- 平面上任一点都满足上述方程
- 平面外任一点都不满足上述方程
- $\vec{n}=(A,B,C)$是平面的一个法向量

### 点法式
如果已知法向量$\vec{n}=(A,B,C)$，则可用法向量完全描述平面$\Pi$
$$A(x-x_0)+B(y-y_0)+C(z-z_0)=0$$

- 设平面内任意直线$MN$，则$\vec{MN}\cdot \vec n=0$
- 点$M(x_0,y_0,z_0)$在平面$\Pi$内

### 截距式
$$\frac x a+\frac y b+\frac z c=1 $$
a b c分别为平面在坐标轴上的截距

### 两平面的夹角
平面$\Pi_1$ $\vec n_1 =(A_1,B_1,C_1)$
平面$\Pi_2$ $\vec n_2 =(A_2,B_2,C_2)$
两平面夹角$\theta$可由下列公式确定
$$\cos \theta = \frac{|A_1A_2+B_1B_2+C_1C_2|}{\sqrt{A_1^2+C_1^2+C_1^2}\sqrt{A_2^2+C_2^2+C_2^2}}$$

- 两平面垂直，则$A_1A_2+B_1B_2+C_1C_2=0$ 
- 两平面平行，则$\frac{A_1}{A_2}=\frac{B_1}{B_2}=\frac{C_1}{C_2}$  