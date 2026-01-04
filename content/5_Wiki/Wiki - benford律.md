---
aliases: 
info: 
date: 2024-10-21-星期一 11:29
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 概率论/概率分布
id: wiki20241021112904
banner: "![[astrowalk.gif]]"
---
---

## The 1 benford 律

在某些假设下，数字的首位数是服从某一严格分布的，称为 benford 律

其中一个可以的假设是，随机变量 X>0，$log (X)\sim N(0,1)$，则 X 的首位数字服从 benford 律：
$$
P(d) = \log_{10}\left( 1+ \frac{1}{d} \right), d=1,2,\dots,9
$$

在 benford 的研究中，如果用线性回归模型根据数据预测，得到的结果是

$$
P (d) = \log_{10}\left( 1+\frac{1}{d} \right) \simeq 0.43\left( \frac{1}{d}- \frac{1}{2d^{2}}+ \frac{1}{3d^{3}}-\dots \right) \simeq 0.31\times d^{-0.86}
$$

