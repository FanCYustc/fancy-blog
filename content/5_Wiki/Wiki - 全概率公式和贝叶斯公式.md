---
aliases: 
info: 全概率公式和贝叶斯公式
date: 2023-08-19-星期六 22:15
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230819221545
banner: "![[astrowalk.gif]]"
---
---
#概率论 

## The 1 全概率公式

```ad-theorem
title: Theorem 1

$$
P(A)=\sum P(B_{i})P(A\mid B_{i})
$$

```

## The 2 贝叶斯公式
```ad-theorem
title: Theorem 2


$$
P(B_{i}\mid A)=\frac{P(AB_{i})}{P(A)}=\frac{P(B_{i})P(A\mid B_{i})}{\sum_{i}P(B_{i})P(A\mid B_{i})}
$$



```

用于从结果找原因，条件互换