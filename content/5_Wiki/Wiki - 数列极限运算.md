---
aliases: sum,product of the limit
info:
date: 2023-01-11-星期三 09:24
update:
tags:
  - wiki/year2023
  - wiki/month01
  - 数学分析/数列
  - 数学分析/极限
id: wiki20230111092459
banner: "![[astrowalk.gif]]"
---
---
#### 定理：
sums and products of convergent sequences are convergent.

**proof:**$\forall \epsilon >0$ , $\exists N$ s.t. $|a_n-a|<\frac{\epsilon}{2}$ and $|b_n-b|<\frac{\epsilon}{2}$

$\therefore |a_n+b_n-a-b|\leq |a_n-a|+|b_n-b|<\epsilon$,

#### 四则运算：

$\lim_{n\to \infty}a_n+\lim_{n\to \infty}b_n=a+b$ ,

[[Wiki - 数列极限]]

#### 1. **常数乘法法则**：
$$\lim_{x \to a} [c \cdot f(x)] = c \cdot \lim_{x \to a} f(x)$$

#### 2. **和差法则**：
$$\lim_{x \to a} [f(x) + g(x)] = \lim_{x \to a} f(x) + \lim_{x \to a} g(x)$$
$$\lim_{x \to a} [f(x) - g(x)] = \lim_{x \to a} f(x) - \lim_{x \to a} g(x)$$

#### 3. **乘法法则**：
$$\lim_{x \to a} [f(x) \cdot g(x)] = \lim_{x \to a} f(x) \cdot \lim_{x \to a} g(x)$$

#### 4. **除法法则**：
$$\displaystyle\lim_{x \to a} \left[\frac{f(x)}{g(x)}\right] = \frac{\displaystyle\lim_{x \to a} f(x)}{\displaystyle\lim_{x \to a} g(x)}$$ 其中
$$\lim_{x \to a} g(x) \neq 0$$

#### 5. **乘幂法则**：
$$\lim_{x \to a} [f(x)^n] = [\lim_{x \to a} f(x)]^n$$其中 $n$ 是常数。

#### 6. **根式法则**：
- $\lim_{x \to a} \sqrt[n]{f(x)} = \sqrt[n]{\lim_{x \to a} f(x)}$，其中 $n$ 是正整数。

#### 7. **复合函数极限法则**：
- $\lim_{x \to a} f[g(x)] = \lim_{x \to a} f(u) \quad \text{(当} \lim_{x \to a} g(x) = u \text{存在时)}$。


#### 8. **极限的乘积与商的性质**：
若 $$\lim_{x \to a} f(x) = A,\lim_{x \to a} g(x) = B$$ 则：
$$\lim_{x \to a} [f(x) \cdot g(x)] = A \cdot B$$$$\lim_{x \to a} \left[\frac{f(x)}{g(x)}\right] = \frac{A}{B}$$其中 $B \neq 0$。
