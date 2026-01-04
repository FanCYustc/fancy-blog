---
aliases:
  - Bootstrap
info:
date: 2025-12-10-星期三 16:50
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/模型评估
  - 统计学习
  - 统计算法
id: wiki20251210165000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 自助法 (Bootstrap)

自助法是一种基于重采样的统计方法，通过从原始数据集（大小为 $N$）中**有放回地**抽取 $B$ 个大小为 $N$ 的样本（自助样本），来评估统计量的准确性（如标准差、置信区间）。

[[Scientech - 数理统计-抽样分布]]
### 预测误差估计
直接在自助样本上训练并在原数据集上测试会导致严重的**过拟合**（因为训练集和测试集有重叠）。
**.632 估计**：
$$
\widehat{Err}^{(.632)} = 0.368 \cdot \overline{err} + 0.632 \cdot \widehat{Err}^{(1)}
$$
其中：
-   $\overline{err}$ 是训练误差。
-   $\widehat{Err}^{(1)}$ 是留一法 (Leave-One-Out) 自助误差（只在不包含观测 $i$ 的自助样本上进行预测）。
-   系数 $0.632 \approx 1 - 1/e$ 是一个观测值出现在自助样本中的概率。

**.632+ 估计**：
对 .632 估计的改进，考虑了模型的过拟合程度。
$$
\widehat{Err}^{(.632+)} = (1 - \hat{w}) \cdot \overline{err} + \hat{w} \cdot \widehat{Err}^{(1)}
$$
权重 $\hat{w}$ 取决于**相对过拟合率 (Relative Overfitting Rate)** $\hat{R}$：
$$
\hat{R} = \frac{\widehat{Err}^{(1)} - \overline{err}}{\hat{\gamma} - \overline{err}}, \quad \hat{w} = \frac{0.632}{1 - 0.368 \hat{R}}
$$
其中 $\hat{\gamma}$ 是**无信息误差率 (No-Information Error Rate)**，即当输入与输出独立时的预测误差。
当过拟合严重时 ($\hat{R} \to 1$)，权重 $\hat{w} \to 1$，估计值趋向于 $\widehat{Err}^{(1)}$；当过拟合较轻时，估计值接近 $\widehat{Err}^{(.632)}$。

## Pro 1 与交叉验证的比较

-   **方差**：自助法通常比交叉验证具有更低的方差。
-   **偏差**：在训练集较小时，自助法（尤其是 .632 估计）可能存在偏差（对于某些“困难”问题可能表现不如交叉验证）。
-   **应用**：自助法不仅用于误差估计，还广泛用于 Bagging 等集成学习方法中。

参见：[[Wiki - 交叉验证]], [[Wiki - 偏差方差分解]]
