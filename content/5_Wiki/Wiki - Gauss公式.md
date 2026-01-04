---
aliases: 
info: 
date: 2023-06-29-星期四 11:07
update: 
tags:
  - wiki/year2023
  - wiki/month06
id: wiki20230629110737
banner: "![[astrowalk.gif]]"
---
---

#数学分析/曲线积分和曲面积分 

## Gauss 公式


设 $v= P\vec{i}+ Q\vec{j}+ R\vec{k}$ 是 $V$ 上光滑向量场（即具有连续偏导数）[[Wiki - 映射的微分]]，$V$ 是空间中分片光滑曲面围成的闭区域[[Wiki - 度量空间的开集闭集]]. 如果 $V$ 可以同时分解成有限个互不重叠的 X 型、Y 型和 Z 型子区域的并, 那么有（Gauss 公式）

$$

\iint_S P\mathrm dy\mathrm dz+Q\mathrm dz\mathrm dx+R\mathrm dx\mathrm dy=\iiint_V\left(\frac{\partial P}{\partial x}+\frac{\partial Q}{\partial  y}+\frac{\partial R}{\partial z}\right)\mathrm dx\mathrm dy\mathrm dz

$$

[[Wiki - 向量场的曲面积分]]

[[Wiki - 三重积分]]
或

$$

\int\int_S\boldsymbol{v}\cdot\mathrm{d}\boldsymbol{S}=\iiint_V\boldsymbol{\nabla}\cdot\boldsymbol{v}\mathrm {d}V=\iiint_V\operatorname{div}\boldsymbol{v}\mathrm{d}V

$$

[[Wiki - 散度，旋度，laplace算子]]
其中 S 是 $V$ 的表面, $S=\partial V,$ 方向指向 V 的外侧 [[Wiki - 曲面的定向]]

## 证明

### 简单情形：长方体
   $$\Omega  = \left[ {{a_1},{b_1}} \right] \times \left[ {{a_{2,}}{b_2}} \right] \times \left[ {{a_{3,}}{b_3}} \right]$$

对长方体的 6 个面，先讨论上下两个面， （x, y）一个为正向参数，一个为反向参数

                      $$\mathop \smallint \limits_{{S_1}} \vec v\cdot d\vec s = \mathop \smallint \limits_{{S_1}} \vec v\cdot\left( {0,0, - 1} \right)ds = \mathop \smallint \limits_{{S_1}}  - Rdxdy$$

    $$\begin{array}{*{20}{c}}{}\\{\mathop \smallint \limits_{{s_1} + {s_2}} \vec v\cdot d\vec S = \mathop \smallint \limits_{\left[ {{a_1},{b_1}} \right] \times \left[ {{a_{2,}}{b_2}} \right]} \left( {R\left( {x,y,{b_3}} \right) - R\left( {x,y,{a_3}} \right)} \right)dxdy}\\{ = \mathop \smallint \limits_\Omega  \frac{{\partial R}}{{\partial z}}dxdydz}\end{array}$$

最后一步同格林公式 [[Wiki - Green公式]]

### X, Y, Z, 型区域


将区域Ω进行划分

   $${\Omega _z} = \left\{ {\left| {\left. {\left( {x,y,z} \right)} \right|} \right. \times \left( {x,y} \right) \in D,{z_1}\left( {x,y} \right) \le z \le {z_2}\left( {x,y} \right)} \right\}$$

称为 Z 型区域。证在 Z 型区域中

                     $$ \to \mathop \smallint \limits_{\partial \Omega } Rdxdy = \mathop \smallint \limits_\Omega  \frac{{\partial R}}{{\partial z}}dxdydz$$

成立。再将 Ω分成✗型，y 型， Z 型区域之并

### 分解


证明：将向量分解成三个分量的向量之和

                      $$\begin{array}{*{20}{c}}{{{\vec v}_1} = \left( {p,0,0} \right){{\vec v}_2} = \left( {0,Q,0} \right){{\vec v}_3} = \left( {0,0,R} \right)}\\{ \to \mathop \smallint \limits_{\partial \Omega } Rdxdy = \mathop \smallint \limits_\Omega  \frac{{\partial R}}{{\partial z}}dxdydz}\end{array}$$

同理对三个结果求和即得 Gauss 定理
