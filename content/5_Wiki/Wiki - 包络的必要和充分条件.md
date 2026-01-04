---
aliases:
  - C-判别式
info: 包络的必要条件和充分条件
date: 2023-10-24-星期二 15:19
update: 2025-12-30-星期二 15:52
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231024151923
banner: "![[astrowalk.gif]]"
---
---

## The 1 必要条件

```ad-theorem
title: Theorem 1

设 $\Gamma$ 是曲线族 $K(C):V(x,y,C)=0$ 的一支包络 . 则它一定满足如下的 C-判别式：对 $(x, y)\in \Gamma$ 有

$$
V(x,y,C)=V(x,\varphi(x),C)=0\:,\quad V'_{C}(x,y,C)=V'_{C}(x,\varphi(x),C)=0;
$$

或 (消去 $c$, 得到与其等价的关系式)  
     
  
$$
\Omega(x,y)\:=\:0.
$$
  


```

### Proof 1

设包络 $\Gamma$ 的参数方程为 $x=f(C), y=g(C)$。
由包络定义，对任意 $C$，点 $(f(C), g(C))$ 在曲线 $V(x,y,C)=0$ 上，故：
$$V(f(C), g(C), C) \equiv 0$$
对 $C$ 求全导数：
$$
V'_x f'(C) + V'_y g'(C) + V'_C = 0 \quad (*.1)
$$
又因为 $\Gamma$ 是包络，其在点 $(f(C), g(C))$ 处的切向量 $(f'(C), g'(C))$ 与曲线族成员在该点的切向量 $(-V'_y, V'_x)$ 共线（相切条件），即：
$$
f'(C) V'_x + g'(C) V'_y = 0 \quad (*.2)
$$
对比即可推出：
$$
V'_C(f(C), g(C), C) = 0
$$
包络满足 C-判别式 $V=0, V'_C=0$。[[Wiki - 包络]]
  
## The 2 包络的充分条件

```ad-theorem
title: Theorem 2

设由曲线族 $K(C):V(x,y,C)=0$ 的 $C$ - 判别式

$$
V(x,y,C)=0,\:V^{\prime}_{C}(x,y,C)=0
$$

 确定一支连续可微的曲线 

$$
\Gamma: x=\varphi(C)\:,\quad y=\psi(C)\:,\quad(C\in J)\:,
$$

而且它满足非退化性条件：
$(\varphi^{\prime}(C),\psi^{\prime}(C))\neq(0,0)$ 和 $(V^{\prime}_x,V^{\prime}_y)\neq(0,0),$ 其中 $V^{\prime}_x=V^{\prime}_x(\varphi(C),\phi(C),C)$ 与 $V^{\prime}_y=V^{\prime}_y(\varphi(C),\psi(C),C)$. 则 $\Gamma$
是曲线族 K (C)的一支包络. 

```

### Proof 

在 $\Gamma$ 上任取一点 $q(C)=(\varphi(C), \psi(C))$，满足 $V=0$ 和 $V'_C=0$。
对 $V(\varphi(C), \psi(C), C) = 0$ 关于 $C$ 求微分：
$$
\varphi'(C) V'_x + \psi'(C) V'_y + V'_C = 0
$$
利用条件 $V'_C=0$，得：
$$
\varphi'(C) V'_x + \psi'(C) V'_y = 0
$$
这表明 $\Gamma$ 在 $q(C)$ 点的切向量 $v=(\varphi'(C), \psi'(C))$ 与曲线族成员在该点的法向量 $(V'_x, V'_y)$ 垂直。
即 $\Gamma$ 与通过该点的曲线族成员 $\Gamma_C$ 共切线。
结合非退化条件，可知确实存在切线且曲线不退化成点。

类比 [[Wiki - 奇解的必要条件]] [[Wiki - 奇解的判别]]

