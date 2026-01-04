---
aliases: 
year: 
category: 数学
rate: "1"
info: 24秋泛函分析课本
date: 2024-09-02-星期一 15:13:36
update: 
tags:
  - book/year2024
  - book/month09
  - 泛函分析
id: book20240902151336
banner: "![[astrogate.gif]]"
---
---

[[泛函分析讲义(张恭庆).pdf]]

# 泛函分析讲义

各种数学对象是由结构定义出来的

## CH1-度量空间

为了后续的研究，先铺垫两个重要性质：完备性和紧性

[[Scientech - 泛函分析-度量空间]]
### 完备性

 **完备性：** 基本列收敛--收敛需要**度量空间**的定义

如果不完备需要完备化（等距同构）

### 紧性

 **紧性：** 分为列紧和紧，一个是点列有收敛子列，一个是任意开覆盖有有限子覆盖

好处是在紧性下进行推理，就可以用子列的收敛性就够了

紧性的判别：$列紧\leftrightarrow 完全有界$，在连续函数空间有 A-A 定理

### 赋范空间

从度量空间出发，又加入新的结构在线性空间的基础上得到**赋范空间**再到**内积空间**

对于有限维赋范空间：
- 有限维赋范空间上所有范数等价；反过来赋范空间所有范数等价则空间为有限维
利用 $dimX=\infty$ 有无界线性泛函 f，则 $\|x\|_{2}= |f (x)|+\|x\|_{1}$ 也是范数，但若等价则 $\exists C,|f (x)|\leq \|x\|_{2}\leq C\|x\|_{1},\forall x\in X$，与无界矛盾
- 有限维赋范空间的子空间都是闭子空间；反过来**如果 X 的任一子空间都是闭子空间，也能说明 X 是有限维的**
对于上面构造的无界线性泛函，$Ker(f)$ 就不是闭子空间：因为有 $f\in X^{*}\leftrightarrow Ker(f)$ 是 X 的闭子空间
- 有限维赋范空间是 banach 空间

对于无穷维的，拓展出 hamel 基的概念

e.g.无穷维赋范空间一定有无界线性泛函：取 hamel 基的可数子集 $\{e_{n}\}_{n=1}^{\infty}$，取 $f_{0}(x)= n\|e_{n}\|,x=e_{n}$，当 x 为除 $\{e_{n}\}$ 外的 hamel 基时为 0，线性映射 $f: x=\sum_{\alpha} x_{\alpha} e_{\alpha}\to \sum_{\alpha} x_{\alpha} f_{0}(e_{\alpha})$，有 $\frac{\|f(e_{n})\|}{\|e_{n}\|}=n$ 无界

### 内积空间

对于加入内积的赋范空间，有 cauchy 不等式、极化恒等式、平行四边形法则等

在内积下引入正交的概念，从而有正交投影、正交补、正价分解定理

将 hamel 基在正交结构下引出规范正交集 ONS，再得到规范正交基 ONB。ONB $\leftrightarrow S^{\perp}=\{0\}\leftrightarrow$ Parseval 等式成立

对于完备的 hilbert 空间，有一些跟正交基相关的性质
## CH2-线性算子

需要在线性空间上讨论

[[Scientech - 泛函分析-线性算子与线性泛函]]

### 线性算子

对于上面的 $f\in X^{*}\leftrightarrow Ker(f)$ 是 X 的闭子空间，但如果是线性算子 $T: X\to Y$ 有 $Ker(f)$ 是 X 的闭子空间，并不能推到 $T\in \mathcal{L}(X,Y)$

取 $X=\{有限项非零的数列\}$，$T: X\to X ,(x_{1}, x_{2},\dots)\to (x_{1},2x_{2},\dots)$ ，其中范数取 $\|x\|_{\infty}= \sup_{k}|x_{k}|$。T 无界但 $Ker (T)=\{0\}$ 是闭子空间

对于 hilbert 空间，有 riesz 代表定理

### Baire 纲定理

主要内容是三大定理

Baire 纲定理基于稠密性给集合划分为纲集

完备度量空间是第二纲集的

### UBP

一致有界定理说明了逐点收敛可以推到一致有界 (在 banach 空间上)

Banach-steinhass 定理：$T_{n},T\in \mathcal{L}(X,Y)$，X 是 banach 空间，$T_{n}x\to Tx,\forall x\in X$ 逐点收敛等价于 $\sup\|T_{n}\|<\infty$，且 $\exists X$ 稠密集 M，使得 $T_{n}x\to Tx,\forall x\in M$

设 X 是 banach 空间，$\{f_{n}\}\subset X^{*}$，有 $f_{n}(x)\to f (x),\forall x\in X$，则有 $f\in X^{*}$ 
### OMT

X, Y 是 banach 空间，$T\in \mathcal{L}(X,Y)$，T 是满射，则 T 是**开映射**

相关的推论有逆算子定理、等价范数定理、闭图像定理

e.g. $T: X\to Y$ 是线性算子，X 是有限维的，则 $T\in \mathcal{L}(X,Y)$


### Hahn-banach 定理



## CH3-紧算子与 fredholm 算子

[[Scientech - 泛函分析-谱理论]]



