---
aliases:
info:
date: 2025-12-16-星期二 00:00
update: 2025-12-16-星期二 00:00
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/模型选择
  - 统计学习
  - 时间序列分析
id: wiki20251216000000
banner: "![[astrowalk.gif]]"
---
---
在模型选择中，信息准则扮演着至关重要的角色，它们通过权衡模型的拟合优度和复杂度来帮助我们选择最佳模型。其中，赤池信息准则 (AIC) 和贝叶斯信息准则 (BIC) 是最常用的两种。

## 1. AIC (Akaike Information Criterion)           
                                                       
AIC 是一种用于模型选择的准则，旨在估计样本内预测误差。它在训练误差的基础上加上了对模型复杂度的惩罚。
$$                                               \text{AIC} = -2 \cdot \text{loglik} + 2   \cdot d                                       
 $$
或者在某些文献中形式为：
$$
\text{AIC} = -2 \ln(L) + 2k
$$
其中 $L$ 是最大化似然函数值， $k$ 是模型中独立参数的个数 (即模型的复杂度)。在模型估计中，通常选择 AIC 值最小的模型。

对于高斯模型（平方误差损失），AIC 与 $C_p$ 统计量等价：
 $$                                                C_p = \overline{err} + 2 \cdot \frac{d}{N} \hat{\sigma}_\varepsilon^2 
 $$
AIC 倾向于选择预测误差最小的模型。 

**在时间序列分析中的应用**:                           
在时间序列模型的定阶中，AIC 准则被广泛用于选择最佳模型阶数。其常用形式为：      
$$                                                    
AIC(k) = N \ln(\hat{\sigma}_k^2) + 2k         
$$
或
$$
AIC(k) = \ln(\hat{\sigma}_k^2) + \frac{2k}{N}
$$
其中 $\hat{\sigma}_k^2$ 是 $k$ 阶模型估计出的误差方差， $k$ 是模型参数的个数， $N$ 是样本量。

## 2. BIC (Bayesian Information Criterion) 
BIC（也称为 SIC, Schwarz Information Criterion）是另一种模型选择准则，源自贝叶斯观点。          $$                                              \text{BIC} = -2 \cdot \text{loglik} + (\ln N) \cdot    d  $$                                                
或者在某些文献中形式为：
$$
\text{BIC} = -2 \ln(L) + k \ln(N)
$$
其中 $L$ 是最大化似然函数值， $k$ 是模型中独立参数的个数， $N$ 是样本量。

与 AIC 相比，BIC 中的惩罚项 $(\ln N) \cdot d$ 随着样本量 $N$ 的增加而增加得更快（当 $N > e^2 \approx 7.4$ 时）。因此，**BIC 倾向于选择比 AIC 更简单的模型**。
-   **一致性**：当 $N \to \infty$ 时，如果真实模型在候选模型集中，BIC 选择真实模型的概率趋于 1（AIC 不具备此性质）。
-   **预测**：对于有限样本，AIC 往往在预测精度上优于 BIC。             

[[Wiki - 有效参数个数]]

**在时间序列分析中的应用**: 在时间序列模型的定阶中，BIC 准则也被广泛用于选择最佳模型阶数。其常用形式为：
$$                                               BIC(k) = N \ln(\hat{\sigma}_k^2) + k \ln N 
$$
或
$$                                               BIC(k) = \ln(\hat{\sigma}_k^2) + \frac{k \ln N}{N} 
$$                                                    
其中 $\hat{\sigma}_k^2$ 是 $k$ 阶模型估计出的误差方差， $k$ 是模型参数的个数， $N$ 是样本量。BIC 选择使得 $BIC(k)$ 最小的 $k$值作为最佳阶数。                                        
与 AIC 不同，BIC 具有强相合性 [[Wiki - 相合估计]]，即当样本量足够大时，它能够以概率 1 识别出真实模型。但对于较小的样本，BIC 倾向于低估模型阶数。     