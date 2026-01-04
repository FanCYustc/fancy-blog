---
aliases: 
info: 广义fourier级数
date: 2023-07-03-星期一 11:46
update: 
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
  - 泛函分析
  - 几何学/内积空间
id: wiki20230703114648
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

      
## Def1 完备 fourier 级数正交基
				 $$\left\{ {{\varphi _1},{\varphi _{{2_1}}} \ldots ,{\varphi _n}, \ldots } \right\} \subset {L^2}\left[ { - \pi ,\pi } \right]$$

若满足

$$
<\varphi_{m}(x),\varphi_{n}(x)> = \int _{a}^{b}\varphi_{m}(x)\varphi_{n}(x) \, dx=\delta_{mn} 
$$

在内积[[Wiki - 内积]]定义下[[Wiki - 平方可积]]

则这也为一组标准正交基[[Wiki - 三角函数系]][[Wiki - 三角函数系的性质]]

则此时有广义 Fourier 级数[[Wiki - Fourier级数]]

         $$\begin{array}{*{20}{c}}{f\left( x \right) \sim \mathop \sum \limits_{n = 1}^\infty  {a_n}{\varphi _n}\left( x \right)}\\{{a_n} = \mathop \smallint \limits_a^b f\left( x \right){\varphi _n}\left( x \right)dx}\end{array}$$

同上面的步骤计算，同样可以推出 Bessel 不等式[[Wiki - Bessel不等式]]

       $$\mathop \sum \limits_{n = 1}^\infty  a_n^2 \le {f^2}$$

当该组**正交基是完备的时（任再加入一个函数就不正交了）**

Parseval 等式[[Wiki - Parseval等式]]成立



