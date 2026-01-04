---
aliases: 
info: 曲率的定义，各种表示形式
date: 2023-03-19-星期日 21:19
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230319211942
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 #数学分析/微分 

曲率 K 表示连续曲线在某点的**弯曲程度**
$$K=\lim_{\Delta s\rightarrow0}\Big|\frac{\Delta\alpha}{\Delta s}\Big|=\Big|\frac{d\alpha}{ds}\Big|$$

## Def 1 曲率 

定义 $\vec{k}(s)=\dot{\vec{r}}(s) \times \ddot{\vec{r}}(s)$

记 $L$ 上两点 ${M}_{1}$ 和 ${M}_{2}$ 处的单位切向量为 ${\dot{\mathbf{r}}}_{1}$ 和 ${\dot{\mathbf{r}}}_{2}$ , 则
$$
\left| {\Delta \alpha }\right|  \approx  \left| {\Delta \dot{\mathbf{r}}}\right| 
$$
所以 
$$
\kappa  = \mathop{\lim }\limits_{{{\Delta s} \rightarrow  0}}\left| \frac{\Delta \alpha }{\Delta s}\right|  = \mathop{\lim }\limits_{{{\Delta s} \rightarrow  0}}\left| \frac{\Delta \dot{\mathbf{r}}}{\Delta s}\right|  = \left| \ddot{\mathbf{r}}\right|  = \left| \mathbf{\kappa }\right|
$$
就定义为曲线的曲率.

利用一般参数与弧长参数的关系, 可以推导出曲率依赖于一般参数的表示, 因为
$$\dot{\mathbf{r}} = \frac{\mathrm{d}\mathbf{r}}{\mathrm{d}s} = \frac{\mathrm{d}t}{\mathrm{\;d}s}\frac{\mathrm{d}\mathbf{r}}{\mathrm{d}t} = \frac{{\mathbf{r}}^{\prime }\left( t\right) }{\left| {\mathbf{r}}^{\prime }\left( t\right) \right| }
$$

于是主法向量为
$$
\begin{align}
\ddot{\mathbf{r}} &= \frac{\mathrm{d}\dot{\mathbf{r}}}{\mathrm{d}s} = \frac{\mathrm{d}t}{\mathrm{\;d}s}\frac{\mathrm{d}}{\mathrm{d}t}\frac{{\mathbf{r}}^{\prime }\left( t\right) }{\left| {\mathbf{r}}^{\prime }\left( t\right) \right| }  \\
&= \frac{1}{\left| {\mathbf{r}}^{\prime }\left( t\right) \right| }\left( {\frac{{\mathbf{r}}^{\prime \prime }\left( t\right) }{\left| {\mathbf{r}}^{\prime }\left( t\right) \right| } + \left( {\frac{\mathrm{d}}{\mathrm{d}t}\frac{1}{\left| {\mathbf{r}}^{\prime }\left( t\right) \right| }}\right) {\mathbf{r}}^{\prime }\left( t\right) }\right) \\
&= \frac{1}{{\left( {\mathbf{r}}^{\prime }\left( t\right) \right) }^{2}}{\mathbf{r}}^{\prime \prime }\left( t\right)  + \frac{1}{\left| {\mathbf{r}}^{\prime }\left( t\right) \right| }\left( {\frac{\mathrm{d}}{\mathrm{d}t}\frac{1}{\left| {\mathbf{r}}^{\prime }\left( t\right) \right| }}\right) {\mathbf{r}}^{\prime }\left( t\right) .
\end{align}
$$


虽然, 主法向量的表达形式有些烦琐, 不过副法向量的表达形式就简洁得多. 由于
${\mathbf{r}}^{\prime }\left( t\right)  \times  {\mathbf{r}}^{\prime }\left( t\right)  = \mathbf{0}$ , 所以
$$
\mathbf{\kappa } = \dot{\mathbf{r}} \times  \ddot{\mathbf{r}} = \frac{{\mathbf{r}}^{\prime }\left( t\right) }{\left| {\mathbf{r}}^{\prime }\left( t\right) \right| } \times  \ddot{\mathbf{r}} = \frac{{\mathbf{r}}^{\prime }\left( t\right)  \times  {\mathbf{r}}^{\prime \prime }\left( t\right) }{{\left| {\mathbf{r}}^{\prime }\left( t\right) \right| }^{3}}
$$

[[Wiki - 弧长参数]]

## Def 2 平面曲线的曲率

$x = x\left( t\right) ,\;y = y\left( t\right) \;\left( {\alpha  \leq  t \leq  b}\right) .$ 放在 ${Oxyz}$ 空间中 $\mathbf{r}\left( t\right)  = x\left( t\right) \mathbf{i} + y\left( t\right) \mathbf{j}$ , 因此 $\rightarrow  \overrightarrow{\gamma } = \left( {x\left( t\right) ,y\left( t\right) ,0}\right)$，

$$
\begin{align}
\mathbf{\kappa } &= \frac{\left( {{x}^{\prime }\left( t\right) \mathbf{i} + {y}^{\prime }\left( t\right) \mathbf{j}}\right)  \times  \left( {{x}^{\prime \prime }\left( t\right) \mathbf{i} + {y}^{\prime \prime }\left( t\right) \mathbf{j}}\right) }{{\left( {x}^{\prime 2}\left( t\right)  + {y}^{\prime 2}\left( t\right) \right) }^{3/2}} \\
&= \frac{{x}^{\prime }\left( t\right) {y}^{\prime \prime }\left( t\right)  - {x}^{\prime \prime }\left( t\right) {y}^{\prime }\left( t\right) }{{\left( {x}^{\prime 2}\left( t\right)  + {y}^{\prime 2}\left( t\right) \right) }^{3/2}}\mathbf{k}
\end{align}
$$

即, 副法向量始终与 $z$ 轴平行. 称
$$
\kappa  = \frac{{x}^{\prime }\left( t\right) {y}^{\prime \prime }\left( t\right)  - {x}^{\prime \prime }\left( t\right) {y}^{\prime }\left( t\right) }{{\left( {x}^{\prime 2}\left( t\right)  + {y}^{\prime 2}\left( t\right) \right) }^{3/2}}
$$
为 $L$ 的曲率. 注意, 平面曲线的曲率不取绝对值, $\kappa$ 的正负, 分别表示曲线的弯曲方向.

区别：**K 的正负表示弯曲方向**（三维无法定向）

凸等价于 k (t)>0