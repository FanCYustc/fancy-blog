---
aliases:
  - Sylvester 不等式
  - Frobenius 不等式
info: 
date: 2023-10-18-星期三 11:21
update: 2023-10-18-Wednesday 11:22:44
tags:
  - wiki/year2023
  - wiki/month10
id: wiki20231018112149
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 Sylvester 不等式

[[Wiki - 秩与相抵的应用#Pro4 Sylvester 不等式]]

## Pro 2 Frobenius 不等式

Sylvester 不等式的推广

 ```ad-proposition
title: Propositon 2

设 $A\in F^{m\times n},B\in F^{n\times p},C\in F^{p\times q}$. 

$$
r(AB)+r(BC)-r(B)\leqslant r(ABC).
$$


```

### 证明


$$r\begin{pmatrix}0&-AB\\BC&B\end{pmatrix}=r\begin{pmatrix}ABC&-AB\\0&B\end{pmatrix}=r\begin{pmatrix}ABC&0\\0&B\end{pmatrix}
$$
故 Frobenius 不等式成立

[[Wiki - 极大线性无关组与秩#Pro 2 初等变换不变秩]]



