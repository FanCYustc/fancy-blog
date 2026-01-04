---
aliases: 
info: 
date: 2024-09-09-星期一 11:04
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 回归分析
  - 数理统计/假设检验
  - 概率论/期望方差
id: wiki20240909110441
banner: "![[astrowalk.gif]]"
---
---

记号声明：

![[Scientech - 回归分析-相关分析#回顾]]

## 样本相关系数分布

 $\left(x_1,y_1\right),...,\left(x_n,y_n\right)$ iid 服从二元正态分布 [[Wiki - 多元正态分布]]，则当 $\rho_{xy}=0$ 时，有

$$t=\sqrt{n-2}\frac r{\sqrt{1-r^2}}\sim t_{n-2}$$

其中
$$r=\frac{\sum(x_i-\overline{x})(y_i-\overline{y})}{\sqrt{\sum\left(x_i-\overline{x}\right)^2}\sqrt{\sum\left(y_i-\overline{y}\right)^2}}$$

[[Wiki - Pearson相关系数]]
### Proof

见回归分析可见 week02 [第2讲课件](E:\课程资料\回归分析\课件\week02.pdf)

## The 1 正态相关性检验

Soppuse $(x_{i},y_{i})i.i.d$ 二元正态，$H_{0}:\rho_{xy}=0$，则检验统计量为 $T = \sqrt{n-2}\frac r{\sqrt{1-r^2}}$。当 $T>\mid t_{n-2}\left( \frac{\alpha}{2} \right)\mid$ 时则拒绝原假设

[[Wiki - 常见假设检验]]

