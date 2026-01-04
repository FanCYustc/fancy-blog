---
aliases: 
info: 幂级数解椭圆积分
date: 2023-07-01-星期六 12:24
update: 2023-07-01-Saturday 12:27:50
tags: [wiki/year2023,wiki/month07]
id: wiki20230701122437
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

#数学分析/积分 

## Def1 椭圆积分：

$$
\int _{0}^{1}\dfrac{du}{\sqrt{\left ( 1-u^{2}\right)  \left ( 1-k^{2}u^{2}\right) }}=\int ^{\dfrac{\pi }{2}}_{0}\dfrac{dx}{\sqrt{1-k^{2}\sin ^{2}x}}
$$

$$
\begin{aligned}\dfrac{1}{\sqrt{1-x}}=\left ( 1-x\right) ^{-\frac{1}{2}}=1+\sum ^{\infty }_{n=1}\dfrac{\left ( 2n-1\right) !!}{\left ( 2n\right) !!}x^{n}\\

\dfrac{1}{\sqrt{1-k^{2}\sin ^{2}x}}=1+\sum ^{\infty }_{n=1}\dfrac{\left ( 2n-1\right) !!}{\left ( 2n\right) !!}k^{2n}\sin ^{2n}x\end{aligned}
$$

$$
\int ^{\dfrac{\pi }{2}}_{0}\dfrac{dx}{\sqrt{1-k^{2}\sin ^{2}x}}=\dfrac{\pi }{2}+\sum ^{\infty }_{n=1}\dfrac{\left ( 2n-1\right) ! !}{\left ( 2n\right) ! !}k^{2n}\int ^{\dfrac{\pi }{2}}_{0}\sin ^{2n}xdx=\dfrac{\pi }{2} \left ( 1+\sum ^{\infty }_{n=1}\left ( \dfrac{\left ( 2n-1\right) ! !}{\left ( 2n\right) ! !}\right) ^{2}k^{2n}\right)
$$

最后一步用到 m 为偶数时，

$$
\int _{0}^{\pi/2} \sin^{m}x\, dx= \frac{(m-1)!!}{m!!}\cdot \frac{\pi}{2}
$$


用幂级数的形式定义积分的值 [[Wiki - 幂级数]]

[[Wiki - Taylor级数的应用]]

