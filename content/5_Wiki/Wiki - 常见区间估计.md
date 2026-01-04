---
aliases: 
info: 正态分布的区间估计
date: 2024-06-23-星期日 11:11
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 数理统计/区间估计
id: wiki20240623111138
banner: "![[astrowalk.gif]]"
---
---

## The 1 

[[Wiki - 枢轴变量]]

置信区间里的记号代表的都是各分布的上分位数

![[正态区间估计表.jpg]]

[[Wiki - 卡方分布]]

[[Wiki - 正态分布]]

[[Wiki - F分布]]

[[Wiki - t分布]]

## The 2 其他分布

对指数分布[[Wiki - 指数分布]] $Exp(\lambda)$，有 $2\lambda n\overline{X}\sim \chi^{2}_{2n}$ [[Wiki - 卡方分布]]

所以 $\lambda$ 的 $1-\alpha$ 置信区间为 $\left[ \frac{{\chi_{2n}^{2}\left( 1-\frac{\alpha}{2} \right)}}{2n\overline{X}} , \frac{{\chi_{2n}^{2}\left( \frac{\alpha}{2} \right)}}{2n\overline{X}}\right]$

单侧置信上下限为 $\frac{{\chi_{2n}^{2}\left( \alpha \right)}}{2n\overline{X}}$ 和 $\frac{{\chi_{2n}^{2}\left( 1-\alpha \right)}}{2n\overline{X}}$ 

对于均匀分布 [[Wiki - 均匀分布]] $U(0,\theta)$，统计量 $T=X_{(n)}$ [[Wiki - 随机向量的次序统计量]]

$\theta$ 的 $1-\alpha$ 置信区间为 $\left[ X_{(n)}, \frac{X_{(n)}}{^{n}\sqrt{\alpha  }}  \right]$

