---
aliases: 
info: 
date: 2024-09-14-星期六 11:41
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 回归分析
id: wiki20240914114150
banner: "![[astrowalk.gif]]"
---
---

## The 1 去相关化

考虑随机向量 $\boldsymbol{x},\boldsymbol{y}$，方差协方差矩阵为 
$$
\Sigma= \begin{pmatrix}
\Sigma_{\boldsymbol{y y}} & \Sigma_{\boldsymbol{yx}} \\
\Sigma_{\boldsymbol{xy}} & \Sigma_{\boldsymbol{ x x}}
\end{pmatrix}
$$

对 $\boldsymbol{y}$ 在 $\boldsymbol{x}$ 上做正交投影 [[Wiki - 正交投影]]，得到 $\hat{\boldsymbol{y}}= \Sigma_{yx}\Sigma_{x x}^{-1}\boldsymbol{x}$，$\boldsymbol{y}^{\perp}= \boldsymbol{y}- \Sigma_{\boldsymbol{yx}}\Sigma_{\boldsymbol{x x}}^{-1}\boldsymbol{x}$，

可以验证 $Cov (\boldsymbol{y}^{\perp},\boldsymbol{x})= 0$，$Var[\boldsymbol{y}^{\perp}]= \Sigma_{yy}-\Sigma_{yx}\Sigma_{x x}^{-1}\Sigma_{xy}$，$Var[\hat{\boldsymbol{y}}]= \Sigma_{yx}\Sigma_{x x}^{-1}\Sigma_{xy}$，记 $Var[\boldsymbol{y}^{\perp}]= \Sigma_{yy \bullet x}$

## Cal 1 

$$
\det\begin{pmatrix}
\Sigma_{yy} & \Sigma_{yx} \\
\Sigma_{xy} & \Sigma_{ x x}
\end{pmatrix}= \det(\Sigma_{yy\bullet x}) \det(\Sigma_{x x})
$$

[[Wiki - 行列式的运算]]

其实就是矩阵打洞对角化

