---
aliases: integration of function with period
info: 周期函数的积分性质
date: 2023-01-11-星期三 21:31
update:
tags:
  - wiki/year2023
  - wiki/month01
  - 数学分析/积分
  - 数学分析/函数
id: wiki20230111213120
banner: "![[astrowalk.gif]]"
---
---
## Lemma1:
对周期函数 f (x), 在可积范围内，有
$$
\begin{equation}
\int_a^{a+T}f(x)dx=\int_0^Tf(x)dx
\end{equation}
$$
### Proof:


$$
\begin{aligned}
\int_{a}^{a+T} f (x) \mathrm{d} x & =\int_{a}^{0} f (x) \mathrm{d} x+\int_{0}^{T} f (x) \mathrm{d} x+\int_{T}^{a+T} f (x) \mathrm{d} x= \\
& =\int_{0}^{T} f (x) \mathrm{d} x+\int_{a}^{0} f (x) \mathrm{d} x+\int_{0}^{a} f (t+T) \cdot 1 \mathrm{~d} t= \\
& =\int_{0}^{T} f (x) \mathrm{d} x+\int_{a}^{0} f (x) \mathrm{d} x+\int_{0}^{a} f (t) \mathrm{d} t=\int_{0}^{T} f (x) \mathrm{d} x
\end{aligned}
$$

[[Wiki - 分部积分]]