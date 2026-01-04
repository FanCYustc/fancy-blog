---
aliases: 
info: 
date: 2025-06-10-星期二 11:06
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 数据分析
  - 概率论
id: wiki20250610110625
banner: "![[astrowalk.gif]]"
---
---

## Def 1 熵的数学表达

```ad-definition
title: 信息熵的数学定义

设 $X$ 为离散随机变量，取值空间 $\mathcal{X}$，概率质量函数 $p(x) = \Pr(X=x)$。$X$ 的**香农熵**定义为：
$$ H(X) = -\sum_{x \in \mathcal{X}} p(x) \log p(x) $$
其中对数底数通常取 2（单位：比特）或 $e$（单位：奈特）。约定 $0 \log 0 = 0$。

该量度满足：
1. **非负性**：$H(X) \geq 0$
2. **极值性**：$0 \leq H(X) \leq \log |\mathcal{X}|$
3. **可加性**：$H(X,Y) = H(X) + H(Y|X)$
```

**推导说明**：  
当事件 $x_i$ 发生时传递的信息量为 $I(x_i) = -\log p(x_i)$，熵即为信息量的期望：
$$ H(X) = \mathbb{E}[I(X)] = \sum p(x_i) I(x_i) $$

**热力学熵联系**：  
玻尔兹曼熵公式 $S = k_B \ln \Omega$ 可视为离散概率空间的极限形式，其中 $\Omega$ 为微观状态数。
