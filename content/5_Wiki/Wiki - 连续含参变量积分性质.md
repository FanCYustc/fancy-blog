---
aliases: 
info: 连续含参变量积分的极限、积分、求导
date: 2023-07-03-星期一 20:05
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703200559
banner: "![[astrowalk.gif]]"
---
---
#数学分析/积分 #数学分析/多变量微积分 


## Pro1 极限

       $$\mathop {\lim }\limits_{u \to {u_0}} \smallint _a^bf\left( {x,u} \right)dx = \smallint _a^b\mathop {\lim }\limits_{u \to {u_0}} f\left( {x,u} \right)dx$$

即在 f 连续的前提下，**极限与积分可以交换次序**[[Wiki - 多变量函数的极限]]

[[Wiki - 多变量函数极限的性质]]


## Pro2 积分

继续考察对 u 积分

           $$\int _a^\beta \varphi   \left( u \right)du = \int _a^\beta \left[ {\int _a^bf\left( {x,u} \right)dx} \right]du = \int _a^b\left[ {\int _a^\beta f\left( {x,u} \right)du} \right]dx$$

即 f 连续下累次积分的**积分可交换**[[Wiki - 二重累次积分]]


## Pro3 求导

当 f 连续时φ可微[[Wiki - 映射的微分]]

             $$\varphi {\rm{'}}\left( u \right) = \int _a^b\frac{{\partial f}}{{\partial u}}  \left( {x,u} \right)dx$$

即**求导和积分可交换**