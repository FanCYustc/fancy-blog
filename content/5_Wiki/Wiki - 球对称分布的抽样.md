---
aliases: 
info: 
date: 2025-03-09-星期日 20:40
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 统计算法
  - 多元统计分析
id: wiki20250309204046
banner: "![[astrowalk.gif]]"
---
---

## The 1 球对称抽样

一般球对称随机向量的抽样  

假设球对称随机向量 $\mathbf{x}\sim f(\mathbf{x})=h(\|\mathbf{x}\|)$ ，$x = ur$，

$\mathbf{u}\perp R,\mathbf{u}{\sim}U(S^{n-1}),R{\sim}p(r)=\frac{2{\pi}^{n/2}}{\Gamma(n/2)}h(r)r^{n-1}$  

球对称分布抽样：

1、利用 [[Wiki - Box-Muller抽样]]，产生多元正态分布 $z\sim N_{n}(0,I_{n})$

2、令 $\boldsymbol{u}= \frac{z}{ \|z\|}$，则 $\boldsymbol{u}\sim U(S^{n-1})$

3、产生一元随机变量 $R\sim p(r)=\frac{2{\pi}^{n/2}}{\Gamma(n/2)}h(r)r^{n-1}$ [[Artpatch - 统计算法-随机数生成]]

4、则 $\boldsymbol{x}=\boldsymbol{u}R\sim h(\|x\|)$

