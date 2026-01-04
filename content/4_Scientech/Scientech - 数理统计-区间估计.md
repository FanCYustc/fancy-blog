---
aliases: 
info: 24春数理统计第4章
date: 2024-04-09-星期二 14:42
update: 
tags:
  - scientech/year2024
  - scientech/month04
  - 数理统计/区间估计
id: scientech20240409144221
banner: "![[astrofishing.gif]]"
---
---

# 第 4  章-区间估计

[第8节课件](E:\课程资料\数理统计\lec8.pdf)

## 4.1 区间估计

置信度和精度（区间长度）是衡量置信区间好坏的两个维度

[[Wiki - 置信区间]]

## 4.2 枢轴变量

[[Wiki - 枢轴变量]]

[[Wiki - 常见区间估计]]

## 4.3 非正态区间估计

利用 [[Wiki - 中心极限定理]]，$\sqrt{ n }(\hat{\theta_{n}}-\theta)\to N\left( 0, \frac{1}{I(\theta)} \right)$

[[Wiki - Fisher信息函数]]

则置信区间为 $[\hat{\theta_{n}}- \frac{u_{\frac{\alpha}{2}}}{\sqrt{ n }} \frac{1}{\sqrt{ I (\hat{\theta}_{n}) }} ,\hat{\theta_{n}}+ \frac{u_{\frac{\alpha}{2}}}{\sqrt{ n }} \frac{1}{\sqrt{ I (\hat{\theta}_{n}) }} ]$

