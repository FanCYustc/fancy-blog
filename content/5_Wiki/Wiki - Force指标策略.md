---
aliases:
info:
date: 2025-12-25-星期四 16:55
update:
tags:
  - wiki/year2025
  - wiki/month12
  - quant/strategy
  - quant/factor
id: wiki20251225165553
banner: "![[astrowalk.gif]]"
---

# Force指标策略

## 1. 指标介绍
强力指标 (Force Index) 是由亚历山大·埃尔德 (Alexander Elder) 开发的一种技术指标，旨在通过结合价格变动和成交量来衡量价格波动的动力。该指标的核心逻辑在于：价格的上涨或下跌如果没有成交量的配合，其趋势往往是不可持续的。Force Index 通过捕捉成交量与均线变动的乘积，反映了市场参与者对价格趋势的认同程度和推动力量。

## 2. 计算公式
*   **MAVAL (收盘价均值)**: $MA(CLOSE, nDay)$
*   **FORCE (强力指标)**: $VOLUME_t \times (MAVAL_t - MAVAL_{t-1})$
    *   反应了今日成交量推动均线变动的能量大小。
*   **参数**:
    *   `nDay`: 移动平均周期，默认 13。研报优化后推荐在 30 左右。

## 3. 交易策略
根据申万宏源研报定义的信号发生方法：
*   **看多信号 (Signal = 1)**:
    *   价格上升：$CLOSE_t > CLOSE_{t-1}$
    *   且 FORCE 指标在零轴以上呈上升趋势：$FORCE_t > 0$ 且 $FORCE_t > FORCE_{t-1}$
*   **看空信号 (Signal = -1)**:
    *   价格下降：$CLOSE_t < CLOSE_{t-1}$
    *   且 FORCE 指标在零轴以下呈下降趋势：$FORCE_t < 0$ 且 $FORCE_t < FORCE_{t-1}$
*   **看平信号 (Signal = 0)**:
    *   不满足上述任一条件时。

**回测规则**:
*   信号从 0 变为 1：做多 1 份。
*   信号从 1 变为 -1：做空 2 份（即平多仓并开空仓）。
*   信号变为 0：平仓。
*   (实际操作中由框架的 `position` 逻辑控制，即 `position` 直接等于 `signal`)。

## 4. 回测表现


## 5. 结论
Force Index 是一个典型的量价结合指标，不仅考虑了方向（均线变动），还考虑了力度（成交量）。
*   **策略类型**: 第五类：微观结构 / 量价情绪 (Microstructure / Volume-Price)

在实际分钟级数据的回测中，交易次数过多，且收益率持续下降。可以考虑反转交易逻辑。
