---
aliases: 
info: 
date: 2024-03-06-星期三 14:36
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 运筹学/图与网络
  - MATLAB
id: wiki20240306143604
banner: "![[astrowalk.gif]]"
---
---

## 算法描述

对所有未标号的点 i进行判断：

1、找所有与 i 相连且未标号的 j，进行判断：
	若 ij 为出度，$f_{ij}<c_{ij}$，则标记 j 为 $(v_{i},\min\{c_{ij}-f_{ij},\delta_{i}\})$
	若 ij 为入度，$f_{ji}>0$，则标记 j 为 $(-v_{i},min\{f_{ji},\delta_{i}\})$
  