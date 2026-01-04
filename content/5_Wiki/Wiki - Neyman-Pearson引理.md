---
aliases: 
info: N-P引理的内容
date: 2024-04-30-星期二 15:12
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 数理统计/假设检验
id: wiki20240430151256
banner: "![[astrowalk.gif]]"
---
---

## The 1 N-P 基本引理

```ad-theorem
title: Theorem 1

设样本 $X$ 的分布有概率函数 $f(x,\theta)$, 参数 $\theta$ **只有两个可能的值** $\theta_0$ 和 $\theta_1$, 考虑下列检验问题：
$$H_0:\theta=\theta_0\leftrightarrow H_1:\theta=\theta_1,$$

则对任给的 $0<\alpha<1$ 有

(1) 存在性. 对检验问题**必存在**一个检验函数 $\varphi(x)$ 及非负常数 $c$ 和$0\leqslant r\leqslant1$, 满足条件
$$\left.\varphi(\boldsymbol{x})=\left\{\begin{array}{cc}1,&f(\boldsymbol{x},\theta_1)/f(\boldsymbol{x},\theta_0)>c,\\r,&f(\boldsymbol{x},\theta_1)/f(\boldsymbol{x},\theta_0)=c,\\0,&f(\boldsymbol{x},\theta_1)/f(\boldsymbol{x},\theta_0)<c.\end{array}\right.\right.$$
且

$$E_{\theta_0}[\varphi(X)]=\alpha.$$

（2）最优性：满足上述条件的检验 $\varphi(x)$ 是 UMPT 

（3）唯一性：对于另一个此假设的UMP检验$\hat{\varphi}$，那么$\varphi$与$\hat{\varphi}$几乎处处相等


```

[[Wiki - 一致最优检验]]

[[Wiki - 似然比检验]]

[[Wiki - 功效函数]]

对于离散分布，需要引入 r 来随机化；如果 $\frac{f(x;\theta_{1})}{f(x;\theta_{0})}=c$ 的 x 取值零测，其实不用考虑 r 是什么

### Proof

见 [[Book - 数理统计]] 5.4 节 204 页证明

