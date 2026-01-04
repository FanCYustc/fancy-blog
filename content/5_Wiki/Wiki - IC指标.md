---
aliases: [IC, Information Coefficient, RankIC, ICIR, 信息系数]
info: 量化投资中衡量因子预测能力的核心指标，反映因子值与未来收益率的相关性
date: 2025-12-17-星期三 13:38
update: 
tags:
  - wiki/year2025
  - wiki/month12
  - 量化/因子分析
  - 统计学
id: wiki20251217133816
banner: "![[astrowalk.gif]]"
---
---


**IC (Information Coefficient, 信息系数)** 是量化投资中衡量因子**预测能力**的核心指标。其本质是计算**当前时刻的因子值**与**未来一期收益率**之间的相关系数。

## Def1 IC

假设在 $t$ 时刻：
*   $F_t$ : 因子值向量（Factor Value）。
*   $R_{t+1}$ : $t$ 时刻持有到 $t+1$ 时刻的**未来收益率**（Forward Return）。

### 1.1 Normal IC (Pearson IC)
最原始的定义，使用皮尔逊积矩相关系数（Pearson Correlation Coefficient）。

$$ \text{IC}_t = \text{Corr}(F_t, R_{t+1}) = \frac{\text{Cov}(F_t, R_{t+1})}{\sigma_{F_t} \sigma_{R_{t+1}}} $$

*   **特点**：衡量线性相关性。
*   **局限**：对**极端值 (Outliers)** 非常敏感。若某标的出现极端涨跌幅，会显著扭曲 IC 值，导致误判。

### 1.2 Rank IC (Spearman IC) —— **业界标准**
业界通用的 IC 指标。它是对数据进行**排序 (Rank)** 后计算的相关系数（即斯皮尔曼相关系数）。

$$ \text{RankIC}_t = \text{Corr}(\text{Rank}(F_t), \text{Rank}(R_{t+1})) $$

*   **含义**：衡量单调相关性（Monotonicity）。
*   **优点**：**鲁棒性 (Robustness)** 强。通过排序消除了极端值和非线性分布的影响，更真实地反映因子对排名的预测能力。

## Def 2 : ICIR

IC 衡量因子的**准确度**，ICIR (Information Ratio of IC) 衡量因子的**稳定性**。它等于 IC 序列的均值除以标准差。

$$ \text{ICIR} = \frac{\text{Mean}(\text{IC Sequence})}{\text{Std}(\text{IC Sequence})} $$

*   **意义**：类似于夏普比率。一个高 IC 但波动巨大的因子（时而极正时而极负），其 ICIR 会很低，实际交易中难以利用。
*   **年化**：通常情况下 ICIR 不进行年化处理，但在不同机构或汇报场景中，有时会乘以 $\sqrt{N}$（如 $\sqrt{252}$）进行年化，需注意口径。

## 3. 分类：截面 vs 时序

### 3.1 截面 IC (Cross-Sectional IC)
*   **场景**：多因子选股（Alpha 策略）。
*   **逻辑**：在每一个时间截面 $t$，计算所有标的（如全市场 5000 只股票）的因子值与收益率的相关性。
*   **产出**：一个时间序列的 IC 值。

### 3.2 时序 IC (Time-Series IC)
*   **场景**：单标的择时、CTA 策略（如 IM 单品种策略）。
*   **逻辑**：针对**单个标的**，计算其历史上因子值序列与未来收益率序列的相关性。
*   **产出**：一个标量数值（全样本相关性）或滚动曲线（Rolling Correlation）。

## 4. 经验阈值 (判卷标准)

对于**日频截面因子 (Rank IC)** 的常见评价标准：

| 指标 | 范围 | 评价 |
| :--- | :--- | :--- |
| **Rank IC** | 0.02 - 0.05 | **可用** (Weak Alpha)。通常需组合使用。 |
| | 0.05 - 0.10 | **优秀** (Strong Alpha)。预测能力强。 |
| | > 0.10 | **极好**或**存疑**。需警惕是否包含未来函数。 |
| **Rank ICIR** | > 0.5 | **及格**。 |
| | > 1.0 | **优秀**。因子表现稳定。 |
| | > 2.0 | **卓越**。极少见，可能是圣杯或过拟合。 |

> **注**：对于 **CTA 单品种 (时序 IC)**，由于信噪比更低，阈值通常更低。时序 Rank IC 能达到 **0.03** 左右即视为有效因子。

## 5. Python 代码实现

### 5.1 截面 IC (多因子选股)
```python
def calc_cross_sectional_ic(df):
    """
    计算截面 Rank IC
    df: Panel 数据, MultiIndex (date, stock_id), 包含 'factor', 'close'
    """
    # 1. 计算未来一期收益率
    df['ret_next'] = df.groupby('stock_id')['close'].shift(-1) / df['close'] - 1
    
    # 2. 定义单日计算逻辑
    def _calc_daily_ic(day_df):
        tmp = day_df[['factor', 'ret_next']].dropna()
        if len(tmp) < 10: return np.nan
        return tmp['factor'].corr(tmp['ret_next'], method='spearman')

    # 3. Groupby 计算每日 IC
    ic_series = df.groupby(level='date').apply(_calc_daily_ic)
    
    # 4. 统计 ICIR
    ic_mean = ic_series.mean()
    ic_std = ic_series.std()
    icir = ic_mean / ic_std if ic_std != 0 else 0
    
    return ic_series, ic_mean, icir
```

### 5.2 时序 IC (CTA 单品种)
```python
def calc_time_series_ic(df, factor_col='factor', forward_period=1):
    """
    计算单品种时序 Rank IC
    """
    # 1. 计算未来 N 期收益率
    # 注意：shift(-N) 表示将未来的数据上移，对齐当前因子
    ret_forward = df['close'].shift(-forward_period) / df['close'] - 1
    
    # 2. 清洗数据
    data = pd.DataFrame({'factor': df[factor_col], 'ret': ret_forward}).dropna()
    
    # 3. 计算全样本 Rank IC
    ts_rank_ic = data['factor'].corr(data['ret'], method='spearman')
    
    return ts_rank_ic
```

## 6. 常见误区

1.  **方向性误判**：IC 为负数不代表因子无效。**Rank IC = -0.05** 说明是一个有效的**反向因子**（因子值越大，未来收益越低）。最差的情况是 IC 接近 0。
2.  **数据对齐 (Alignment)**：计算时必须严格对齐。$T$ 时刻的因子 $F_T$ 必须对应 $T \to T+1$ 的收益 $R_{T+1}$。若错误对应了 $R_T$，计算的是同步性而非预测性。
3.  **T 值检验**：在严谨研究中，除 IC 均值外，还需计算 t-statistic ($t = \frac{\overline{IC}}{\sigma_{IC}/\sqrt{N}}$) 以验证显著性。
