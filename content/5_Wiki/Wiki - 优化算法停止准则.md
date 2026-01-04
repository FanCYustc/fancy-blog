---
aliases: 
info: 
date: 2025-04-25-星期五 11:46
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 算法
  - 优化
id: wiki20250425114640
banner: "![[astrowalk.gif]]"
---
---
## The 1

[[Wiki - Lagrange对偶问题]]

如果 $x$ 是原问题可行解且 $\left( {\lambda ,\nu }\right)$ 对偶可行, 那么

$$\max \left\{  {{f}_{0}\left( x\right)  - {p}^{ \star  },{d}^{ \star  } - g\left( {\lambda ,\nu }\right) }\right\}   \leq  {f}_{0}\left( x\right)  - g\left( {\lambda ,\nu }\right) 
$$
- $x$ 是 $\varepsilon$ -次优, 其中 $\varepsilon  = {f}_{0}\left( x\right)  - g\left( {\lambda ,\nu }\right)$ .
- 这同样说明对对偶问题, $\left( {\lambda ,\nu }\right)$ 是 $\varepsilon$ -次优.

称原问题和对偶问题目标函数的差值 ${f}_{0}\left( x\right)  - g\left( {\lambda ,\nu }\right)$ 为原问题可行解 $x$ 和对偶可行解 $\left( {\lambda ,\nu }\right)$ 之间的**对偶间隙**.


此现象可以用在优化算法中给出停止准则. 给定一系列可行解 ${x}^{\left( k\right) }$ 和 $\left( {{\lambda }^{\left( k\right) },{\nu }^{\left( k\right) }}\right)$ 以及要求的绝对精度 ${\epsilon }_{\mathrm{{abs}}}$ , 停止准则为

$$
{f}_{0}\left( {x}^{\left( k\right) }\right)  - g\left( {{\lambda }^{\left( k\right) },{\nu }^{\left( k\right) }}\right)  \leq  {\epsilon }_{\text{abs }}.
$$

给定相对精度 ${\varepsilon }_{\text{rel }} > 0$ , 可以推导类似的条件保证 $\varepsilon$ -次优. 如果

$$g\left( {{\lambda }^{\left( k\right) },{\nu }^{\left( k\right) }}\right)  > 0,\;\frac{{f}_{0}\left( {x}^{\left( k\right) }\right)  - g\left( {{\lambda }^{\left( k\right) },{\nu }^{\left( k\right) }}\right) }{g\left( {{\lambda }^{\left( k\right) },{\nu }^{\left( k\right) }}\right) } \leq  {\varepsilon }_{\text{rel }}$$

成立, 或者
$${f}_{0}\left( {x}^{\left( k\right) }\right)  < 0,\;\frac{{f}_{0}\left( {x}^{\left( k\right) }\right)  - g\left( {{\lambda }^{\left( k\right) },{\nu }^{\left( k\right) }}\right) }{-{f}_{0}\left( {x}^{\left( k\right) }\right) } \leq  {\varepsilon }_{\text{rel }}$$

成立, 那么 ${p}^{ \star  } \neq  0$ , 且可以保证相对误差$\frac{{f}_{0}\left( {x}^{\left( k\right) }\right)  - {p}^{ \star  }}{\left| {p}^{ \star  }\right| } \leq  {\varepsilon }_{\text{rel }}.$

[[Wiki - 算法的收敛性]]

