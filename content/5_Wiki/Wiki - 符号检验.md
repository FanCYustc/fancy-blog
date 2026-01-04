---
aliases: 
info: 
date: 2024-05-28-星期二 14:52
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240528145223
banner: "![[astrowalk.gif]]"
---
---

## The 1 符号检验

有 n 个个体对两个物品 AB 评分，评分为 $X_{i},Y_{i},i=1,\dots,n$，想通过评分判断 A 和 B 谁更好，只保留每个人认为 A 和 B 哪个相对更好的信息，记录

$$
Z_{i}=X_{i}-Y_{i},\, S_{i} = \begin{cases}
+,Z_{i}>0 \\
-,Z_{i}<0 \\
0,Z_{i}=0
\end{cases}
$$

记 $n_{+}$ 为+出现的个数，则 $n_{+}\sim b(n,\theta)$ [[Wiki - 二项分布]]，则假设检验为

$$
H_{0}: \theta=\frac{1}{2}\leftrightarrow H_{1}: \theta\neq \frac{1}{2}
$$

对不同的显著性，取相应的否定域进行假设检验

对于大样本，利用 
$$
\frac{{X- \frac{n}{2}}}{\sqrt{ \frac{n}{4} }}=\frac{{2X-n}}{\sqrt{ n }}\xrightarrow{L}N(0,1)
$$
进行正态假设检验 [[Wiki - 常见假设检验]]，对显著性 $\alpha$，否定域为 $\left\{| \frac{{2X-n}}{\sqrt{ n }}| >u_{\frac{\alpha}{2}} \right\}$

