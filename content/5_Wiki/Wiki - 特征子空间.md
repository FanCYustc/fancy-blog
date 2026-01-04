---
aliases: 
info: 
date: 2023-07-03-星期一 21:42
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703214211
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 #线性代数/线性空间 

## Def1 特征子空间


对线性变换 $\mathscr{A}$, [[Wiki - 线性映射|线性变换]]
$$
{V_\mathscr{A}}( \lambda) = \left\{ {\left. {\left| {\left. {a \in V} \right|} \right.\mathscr{A}a}  =  {\lambda a} \right\}} \right.
$$

称为属于特征值λ [[Wiki - 特征值和特征向量]]的特征子空间 [[Wiki - 生成子空间]]（与特征向量的集合不同，还包含零向量）

## Def 2 矩阵的特征子空间

也可以是 A 是线性变换的矩阵 [[Wiki - 线性变换在一组基下的矩阵]]，特征子空间的表示形式都是一样的，只是对应的 V 不同 [[Wiki - 一般线性空间]]


$$
V_{\mathrm{A}}(\lambda)= \{x\in F^{n}\mid \mathrm{A \boldsymbol{x}=\lambda \boldsymbol{x}}\}
$$

[[Wiki - n维数组空间]]

---

## Def 1 Eigenspace

```ad-definition
title: Definition 1

For a linear operator $T \in \mathcal{L}(V)$ and eigenvalue $\lambda \in \mathbb{F}$, the eigenspace $E(\lambda,T)$ is defined as:
$$
E(\lambda,T) = \text{null}(T - \lambda I) = \{ v \in V \mid Tv = \lambda v \}
$$

This consists of all eigenvectors corresponding to $\lambda$ plus the zero vector.
```

Related links: [[Wiki - 特征值和特征向量]], [[Wiki - 线性映射的像空间和核]]

## Pro 1 Properties of Eigenspace

```ad-proposition
title: Proposition 1

1. $E(\lambda,T)$ is a T-invariant subspace of V [[Wiki - 不变子空间]]
2. For distinct eigenvalues $\lambda_1,...,\lambda_m$, the sum $E(\lambda_1,T)+\cdots+E(\lambda_m,T)$ is direct [[Wiki - 子空间的直和]]
3. $\dim E(\lambda,T)$ is called the geometric multiplicity of $\lambda$ [[Wiki - 几何重数与代数重数]]
```

## The 1 Diagonalizability Criterion

```ad-theorem
title: Theorem 1

A linear operator $T \in \mathcal{L}(V)$ is diagonalizable [[Wiki - 矩阵可相似对角化的条件]] if and only if:
$$
V = E(\lambda_1,T) \oplus \cdots \oplus E(\lambda_m,T)
$$
where $\lambda_1,...,\lambda_m$ are all distinct eigenvalues of T.
```

### Proof
($\Rightarrow$) If T is diagonalizable, there exists a basis of eigenvectors
($\Leftarrow$) Union of bases from each eigenspace forms an eigenbasis


Source: [[Book - 线性代数应该这样学]] Chapter 5
