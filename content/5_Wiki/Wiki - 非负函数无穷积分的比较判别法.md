---
aliases: 
info: 无穷积分比较判别法
date: 2023-07-03-星期一 12:52
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703125258
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 #数学分析/积分 

## Pro1 
比较判别法：

              $$\forall x \in   {\left( {\left. {A, + \infty } \right)} \right.,0 \le f\left( x \right) \le g\left( x \right)} $$

f 发散则 g 发散，g 收敛则 f 收敛（A 等同于从某项开始）

证明类似无穷极数比较判别法 [[Wiki - 比较判别法]]

**一定是非负函数**，类比[[Wiki - 收敛正项级数的性质]]

## Cal1 极限形式

如果                $$\mathop {\lim }\limits_{x \to  + \infty } \frac{{f\left( x \right)}}{{g\left( x \right)}} = k \in  {\left( {\left. {0, + \infty } \right)} \right.} $$

1° 若 k = A，则 f 与 g 同敛散

2°若 k = 0, 则当 $\int_a^{+\infty}g(x)dr$ 收敛时，$\int_a^{+\infty}f(x)$ dr 也收敛;

3°若 $k=+\infty$ 则当 $\int_a^{+\infty}g(x)$ dr 发散时，$\int_a^{+\infty}f(x)$ dr 也发散

## Pro2

对于恒正函数 f

                      $$F\left( A \right) = \smallint _0^Afdx$$

有上界等价于 f 可积

上面类比的都是正项级数（或绝对收敛）的判别

### 区别：

**f 可积推不到 f 趋于 0**[[Wiki - 无穷级数的收敛性#Collary 1]]

即使 f 连续也推不到

[[Wiki - 正项级数的柯西判别法]]

[[Wiki - 正项级数的达朗贝尔判别法]]

[[Wiki - 级数的拉比判别法]]

也都可以用