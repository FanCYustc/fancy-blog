---
aliases:
  - RKHS
  - Reproducing Kernel Hilbert Space
info:
date: 2025-12-10-星期三 15:40
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/核方法
  - 泛函分析
id: wiki20251210154000
banner: "![[astrowalk.gif]]"
---


## Def 1 再生核希尔伯特空间 (RKHS)

再生核希尔伯特空间是一个由正定核函数 $K(x, y)$ 生成的 [[Wiki - Hilbert空间|希尔伯特空间]] $\mathcal{H}_K$。
它具有**再生性质 (Reproducing Property)**：
1.  对于任意 $x \in \mathcal{X}$，$K(\cdot, x) \in \mathcal{H}_K$。
2.  对于任意 $f \in \mathcal{H}_K$ 和 $x \in \mathcal{X}$，有 $\langle f, K(\cdot, x) \rangle_{\mathcal{H}_K} = f(x)$。即函数在点 $x$ 的取值可以用它与核函数 $K(\cdot, x)$ 的内积来表示。

## Pro 1 表示定理 (Representer Theorem)

在 RKHS 中，许多正则化问题具有有限维的解。
考虑优化问题：
$$
\min_{f \in \mathcal{H}_K} \sum_{i=1}^N L(y_i, f(x_i)) + \lambda \|f\|_{\mathcal{H}_K}^2
$$
其中 $L$ 是任意损失函数。
**表示定理**指出，上述问题的最优解 $f^*$ 可以表示为核函数在训练样本点处的线性组合：
$$
f^*(x) = \sum_{i=1}^N \alpha_i K(x, x_i)
$$
这使得无限维的优化问题可以转化为有限维参数 $\alpha_i$ 的求解问题。

### 应用
-   [[Wiki - 光滑样条]]：对应于特定的核和惩罚。
-   [[Wiki - 支持向量机]] (SVM)：SVM 的优化问题也可以看作是 RKHS 中的正则化问题（使用 Hinge Loss）。
-   [[Wiki - 径向函数]] 网络。

参见：[[Wiki - 核平滑器]]
