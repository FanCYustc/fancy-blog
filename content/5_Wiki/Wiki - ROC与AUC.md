---
aliases: 
info: 
date: 2025-06-11-星期三 15:35
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 数据分析
id: wiki20250611153502
banner: "![[astrowalk.gif]]"
---
---

## Def 1 ROC 曲线与 AUC

```ad-definition
title: ROC曲线（Receiver Operating Characteristic Curve）
- **定义**：描述二分类模型性能的图形化工具，横轴为假正例率（FPR），纵轴为真正例率（TPR）
- **核心公式**：
  $FPR = \frac{FP}{FP+TN}, \quad TPR = \frac{TP}{TP+FN}$
- **绘制原理**：通过调整分类阈值，计算不同阈值下的(FPR, TPR)坐标点并连线
- **特性**：对角线表示随机猜测，曲线越靠近左上角模型性能越优
```

```ad-proposition
title: AUC（Area Under Curve）
- **定义**：ROC曲线下方面积，取值区间$[0,1]$
- **计算方式**：
  $AUC = \int_{0}^{1} TPR(FPR)  dFPR$
- **统计意义**：表示随机选取的正样本得分高于负样本的概率
  $AUC = P(\hat{y}_+ > \hat{y}_-)$
- **评估标准**：
  - $AUC=0.5$：无区分能力
  - $AUC>0.8$：良好区分能力
  - $AUC=1.0$：完美分类器
```

```ad-theorem
title: AUC与基尼系数的关系
- **等价关系**：
  $Gini = 2 \times AUC - 1$
- **证明**：
  基尼系数定义为模型排序能力的度量：
  $$
  \begin{aligned}
  Gini &= \frac{\text{模型排序能力}}{\text{完美排序能力}} \\
  &= \frac{A - 0.5}{0.5} = 2AUC - 1
  \end{aligned}
  $$
  其中$A$为ROC曲线与对角线围成的面积
```

**注释**：
1. ROC 曲线对类别不平衡不敏感
2. AUC 综合反映模型在不同阈值下的表现
3. 优于准确率（Accuracy）的评估场景：
   - 类别分布高度倾斜时
   - 不同误分类代价差异大时
