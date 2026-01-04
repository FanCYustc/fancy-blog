---
aliases: 
info: 含参变量反常积分一致收敛定义
date: 2023-07-03-星期一 20:19
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703201938
banner: "![[astrowalk.gif]]"
---
---
#数学分析/积分 #数学分析/级数 

 
## Def1
 $$\begin{array}{*{20}{c}}{\forall \varepsilon  > 0,\exists {A_0}}\\{\forall A > {A_0} \to \left| {\smallint _A^{ + \infty }f\left( {x,u} \right)dx} \right| < \varepsilon \forall u \in \left[ {a,\beta } \right]}\end{array}$$

$A_{0}$ 与 u 无关
那么称反常积分在 $[\alpha,\beta]$ 上一致收敛[[Wiki - 一致收敛]]


## Pro1 

定理： 同函数项级数[[Wiki - 函数项级数]]

反常积分一致收敛的**充要条件**是

   $$\mathop {\lim }\limits_{A \to  + \infty } \beta \left( A \right) = \mathop {\lim }\limits_{A \to  + \infty } \mathop {\sup }\limits_{u\in[\alpha,\beta]} \left| {\int _A^{ + \infty }f\left( {x,u} \right)dx} \right| = 0$$
[[Wiki - 一致收敛的判定]]

