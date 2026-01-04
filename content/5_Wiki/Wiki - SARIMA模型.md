---
aliases: 
info: 
date: 2025-12-16-星期二 14:15
update: 
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析
id: wiki20251216141500
banner: "![[astrowalk.gif]]"
---

## Def 1 SARIMA 模型

SARIMA $(p,d,q)(P,D,Q)_s$ 模型（Seasonal Autoregressive Integrated Moving Average Model）是 ARIMA 模型的扩展，用于处理具有**季节性**的时间序列。它通过引入额外的季节性差分和季节性 AR/MA 项来捕捉季节性模式。

其中各参数的含义为：
-   **非季节部分 (p,d,q)**：
    -   $p$: 非季节性自回归 (AR) 阶数。
    -   $d$: 非季节性差分阶数，$(1-\mathscr{B})^d$。
    -   $q$: 非季节性滑动平均 (MA) 阶数。
-   **季节部分 $(P, D, Q)_s$**：
    -   $P$: 季节性自回归 (SAR) 阶数。
    -   $D$: 季节性差分阶数，$(1-\mathscr{B}^s)^D$。
    -   $Q$: 季节性滑动平均 (SMA) 阶数。
    -   $s$: 季节周期（例如，月度数据 $s=12$，季度数据 $s=4$）。

## The 1 SARIMA 模型表达式

一个 SARIMA $(p,d,q)(P,D,Q)_s$ 模型可以用以下形式表示：

$$ 
\Phi_P(\mathscr{B}^s) \phi_p(\mathscr{B}) (1-\mathscr{B})^d (1-\mathscr{B}^s)^D X_t = \Theta_Q(\mathscr{B}^s) \theta_q(\mathscr{B}) \varepsilon_t 
$$

其中：
-   $\phi_p(\mathscr{B}) = 1 - \phi_1 \mathscr{B} - \dots - \phi_p \mathscr{B}^p$ 为非季节 AR 多项式。
-   $\Phi_P(\mathscr{B}^s) = 1 - \Phi_1 \mathscr{B}^s - \dots - \Phi_P \mathscr{B}^{sP}$ 为季节 AR 多项式。
-   $\theta_q(\mathscr{B}) = 1 + \theta_1 \mathscr{B} + \dots + \theta_q \mathscr{B}^q$ 为非季节 MA 多项式。
-   $\Theta_Q(\mathscr{B}^s) = 1 + \Theta_1 \mathscr{B}^s + \dots + \Theta_Q \mathscr{B}^{sQ}$ 为季节 MA 多项式。
-   $\varepsilon_t$ 为白噪声序列 [[Wiki - 白噪声]]。

## Pro 1 平稳性与可逆性

-   **平稳性**：经过 $d$ 阶非季节差分和 $D$ 阶季节差分后的序列 $(1-\mathscr{B})^d (1-\mathscr{B}^s)^D X_t$ 应该是一个平稳 ARMA 过程 [[Wiki - 平稳序列]]。这意味着非季节 AR 多项式 $\phi_p(\mathscr{B})$ 和季节 AR 多项式 $\Phi_P(\mathscr{B}^s)$ 的根都应该在单位圆外。
-   **可逆性**：非季节 MA 多项式 $\theta_q(\mathscr{B})$ 和季节 MA 多项式 $\Theta_Q(\mathscr{B}^s)$ 的根都应该在单位圆外，以保证模型的可逆性。

关联：
-   [[Wiki - ARIMA模型]]：SARIMA 是 ARIMA 的季节性扩展。
-   [[Wiki - AR模型]]
-   [[Wiki - MA模型]]
