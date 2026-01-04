---
aliases: 
info: 
date: 2024-11-25-星期一 15:13
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 泛函分析/线性算子
  - 收敛
id: wiki20241125151312
banner: "![[astrowalk.gif]]"
---
---

## Def 1 弱 $*$ 收敛

对赋范空间 X [[Wiki - 赋范空间]]，称 $\{f_{n}\}\subset X^{*}$ 弱收敛于 $f_{0}$，如果 $f_{n}(x)\to f_{0}(x), \forall x\in X$，记作 $f_{n}\xrightarrow{w^{*}} f_{0}$

[[Wiki - 对偶空间]]

## Pro 1 

1、弱收敛 $\to$ 弱 $^{*}$ 收敛 [[Wiki - 弱收敛]]

2、如果 X 是自反空间 [[Wiki - 自反空间]]，那么 $X^{*}$ 中弱收敛与弱 $^{*}$ 收敛等价

### Proof

$f_{n}\xrightarrow{w} f_{0}$ 等价于 $\Lambda (f_{n})\to \Lambda (f_{0}), \forall \Lambda\in X^{* *}$。于是 $x^{* *}(f_{n})\to x^{* *}(f_{0}), \forall x\in X$ ，等价于 $f_{n}(x)\to f_{0}(x), \forall x\in X$


```ad-caution

但弱 $*$ 收敛与弱收敛等价推不出 X 是自反空间（反例是 $l^{\infty}$）
```







