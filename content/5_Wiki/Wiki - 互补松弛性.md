---
aliases: 
info: 
date: 2025-04-25-星期五 11:50
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
  - 对偶
id: wiki20250425115018
banner: "![[astrowalk.gif]]"
---
---
## Def 1 互补松弛性

设原问题和对偶问题的最优值都可以达到且相等. 令 ${x}^{ \star  }$ 和 $\left( {{\lambda }^{ \star  },{\nu }^{ \star  }}\right)$ 分别是最优解, 那么
$${f}_{0}\left( {x}^{ \star  }\right)  = g\left( {{\lambda }^{ \star  },{\nu }^{ \star  }}\right)  = \mathop{\inf }\limits_{x}\left( {{f}_{0}\left( x\right)  + \mathop{\sum }\limits_{{i = 1}}^{m}{\lambda }_{i}^{ \star  }{f}_{i}\left( x\right)  + \mathop{\sum }\limits_{{i = 1}}^{p}{\nu }_{i}^{ \star  }{h}_{i}\left( x\right) }\right)$$

$$\leq  {f}_{0}\left( {x}^{ \star  }\right)  + \mathop{\sum }\limits_{{i = 1}}^{m}{\lambda }_{i}^{ \star  }{f}_{i}\left( {x}^{ \star  }\right)  + \mathop{\sum }\limits_{{i = 1}}^{p}{\nu }_{i}^{ \star  }{h}_{i}\left( {x}^{ \star  }\right)  \leq  {f}_{0}\left( {x}^{ \star  }\right) 
$$

- $L\left( {x,{\lambda }^{ \star  },{\nu }^{ \star  }}\right)$ 关于 $x$ 求极小值时在 ${x}^{ \star  }$ 处取得最小值.
- 
- ${\lambda }_{i}^{ \star  }{f}_{i}\left( {x}^{ \star  }\right)  = 0,i = 1,\ldots ,m$ . 此条件即为**互补松弛性**.

[[Wiki - Lagrange对偶问题]]

[[Wiki - 优化算法停止准则]]

