---
aliases: 
info: 配方法和初等相合变换法
date: 2023-07-11-星期二 22:11
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230711221144
banner: "![[astrowalk.gif]]"
---
---
#线性代数/二次型 

## 配方法

除了正交变换外，有时不需要得到标准型，只需要消去交叉项即可

此时可以用**配方法**

### Pro1 
任何实二次型可以通过配方找到一个可逆[[Wiki - 线性映射|线性变换]]变换 X= P Y 将二次型[[Wiki - 实二次型的标准型]]化为标准形[[Wiki - 实二次型的矩阵表示]]

                        $$Q\left( {{X_1}, \ldots ,{X_n}} \right) = {{\rm{\mu }}_1}y_1^2 + {{\rm{\mu }}_2}y_2^2 +  \ldots  + {{\rm{\mu }}_n}y_n^2$$



## 初等相合变换法：

每一个实二次型都可以通过初等变换使之化为标准形，或者说

对每一个实对称矩阵 A, 都存在初等矩阵 P,,:·, P,, 使 A 相合于实对角矩阵, 即有

$$

\boldsymbol{P}_{r}^{\mathrm{T}}\boldsymbol{P}_{r-1}^{\mathrm{T}}\cdots\boldsymbol{P}_{1}^{\mathrm{T}}\boldsymbol{A}\boldsymbol{P}_{1}\boldsymbol{P}_{2}\cdots\boldsymbol{P}_{r}=\mathrm{diag}(\mu_{1},\mu_{2},\cdots,\mu_{n}).

$$

将 A 和 I 联立，对 A 做成对的行列变换，对 I  
只做**初等行变换**，当 A 变为对角阵时，I 变成的 P 即为待求可逆矩阵 [[Wiki - 逆矩阵#应用：求逆矩阵]]

