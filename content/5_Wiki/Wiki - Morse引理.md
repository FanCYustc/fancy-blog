---
aliases: Morse's lemma
info: 阿达玛引理，摩斯引理
date: 2023-05-28-星期日 20:31
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230528203126
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Pro1 Hadamard lemma

设 f：U→R 是定义在点原点的凸邻域 U 上的 p 阶连续可微函数且 f (0) = 0, 则存在 p-1 阶连续可微函数 g (i = 1,… , m), 使得在邻域 U 内下述等式成立

$$
f(x^{1},\cdots,x^{m})=\sum_{i=1}^{m}x^{i}g_{i}(x^{1},\cdots,x^{m})
$$

且 $g_{i}(0)=\frac{\partial f}{\partial x^{i}}(0).$

将泰勒展开中的余项合并进去了 [[Wiki - 泰勒展开]]
[[Wiki - 多变量函数的Taylor公式]]

## Pro 2 morse's lemma

对于开集 [[Wiki - 度量空间的开集闭集]] G 上三阶连续可微函数 f，$x_{0}$ 是一个极值点，则存在一个微分同胚 g，从原点的某个邻域 V 到 $x_{0}$ 的某个邻域 U，满足

$$(f\circ g)(y)=f(x_{0})-[(y^{1})^{2}+\cdots+(y^{k})^{2}]+[(y^{k+1})^{2}+\cdots+(y^{m})^{2}].$$

极值点没有一阶展开项[[Wiki - 多变量函数极值的判断]]
对二阶项可以进行刚体变换正交化