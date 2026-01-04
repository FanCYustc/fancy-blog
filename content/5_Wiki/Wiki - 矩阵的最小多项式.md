---
aliases:
  - 化零多项式
info: 最小多项式的定义和求法
date: 2023-08-09-星期三 16:33
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 线性代数/多项式
id: wiki20230809163323
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 

## Def 1 化零多项式

```ad-definition
title: Definition 1


$$
A\in F^{n\times n},f(x)\in F[x]
$$

如果 $f(A)=0$, 称 f 为 A 的**化零多项式**


```

满足化零多项式的和和数乘还是化零多项式[[Wiki - 多项式的裴蜀定理|理想]]

```ad-note

A的特征多项式$P_{A}(A)$是特殊的化零多项式

```



## Def 1 最小多项式

[[Wiki - 特征值和特征向量的计算#Pro 2]]

```ad-definition
title: Definition 1

变换 T 的**最小多项式** p是次数最小的首一多项式满足 $p(T)=0$


```
由 [[Wiki - 特征值和特征向量的计算#Pro 1]] 知最小多项式的次数不超过 dim V，

## Lemma 1

```ad-lemma
title: Lemma 1

多项式 q 满足 $q(T)=0$ 当且仅当最小多项式 p 是 q 的因式

```

[[Wiki - 多项式整除的性质]]

直观上很好理解

### Proof
对 $q(\lambda)=0$，即存在 x s. t. $Tx=\lambda x$

So $p_{min}(T)x=p_{min}(\lambda)x=0\to p_{min}(\lambda)=0$

## Cal 1

```ad-theorem
title: Theorem 1

自然的有推论，最小多项式的根一定是 T 的特征值，**且必须含有每个特征值**

```

 [[Wiki - 特征值和特征向量]]

这为寻找最小多项式提供便捷

