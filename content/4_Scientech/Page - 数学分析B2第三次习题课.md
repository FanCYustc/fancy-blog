---
aliases: 
info: 指标求和、切向量、度规
date: 2023-04-01-星期六 14:38
update: 
tags: [page/year2023,page/month04]
id: page20230401143813
banner: "![[astroflow.gif]]"
annotation-target: "第三次习题课讲义预习版（第一次修订）.pdf"
---
---
#数学分析 

[[第三次习题课讲义预习版（第一次修订）.pdf]]

## 指标运算

### 爱因斯坦求和

>%%
>```annotation-json
>{"created":"2023-04-01T06:43:28.478Z","updated":"2023-04-01T06:43:28.478Z","document":{"title":"%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","link":[{"href":"urn:x-pdf:e234c1b5dce291c7b6eb1920c4a96c99"},{"href":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf"}],"documentFingerprint":"e234c1b5dce291c7b6eb1920c4a96c99"},"uri":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","target":[{"source":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","selector":[{"type":"TextPositionSelector","start":7111,"end":7161},{"type":"TextQuoteSelector","exact":"爱因斯坦在求和时发现可以略去求和符号，重复指标代表求和则 ⃗x = xiei, ⃗y = yj ej","prefix":"+ x2e2 + x3e3 = ∑3i=1 xiei, y 同理","suffix":"在运算时我们需要注意以下三点，以免引起歧义：（1）重复指标（哑指"}]}]}
>```
>%%
>*%%PREFIX%%+ x2e2 + x3e3 = ∑3i=1 xiei, y 同理%%HIGHLIGHT%% ==爱因斯坦在求和时发现可以略去求和符号，重复指标代表求和则 ⃗x = xiei, ⃗y = yj ej== %%POSTFIX%%在运算时我们需要注意以下三点，以免引起歧义：（1）重复指标（哑指*
>%%LINK%%[[#^2kwfnj7yuoq|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^2kwfnj7yuoq


$\epsilon_{ijk}=1\leftrightarrow ijk为偶排列；\epsilon_{ijk}=-1\leftrightarrow ijk为奇排列$ (与行列式相关)
当 $for\space others\space\epsilon_{ijk}=0(比如存在i=j)$


>%%
>```annotation-json
>{"created":"2023-04-01T07:33:19.795Z","updated":"2023-04-01T07:33:19.795Z","document":{"title":"%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","link":[{"href":"urn:x-pdf:e234c1b5dce291c7b6eb1920c4a96c99"},{"href":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf"}],"documentFingerprint":"e234c1b5dce291c7b6eb1920c4a96c99"},"uri":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","target":[{"source":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","selector":[{"type":"TextPositionSelector","start":7638,"end":7679},{"type":"TextQuoteSelector","exact":"下面有三个重要的性质，一个是计算方便，另两个是反映了转动矩阵的性质，在这里一并写出","prefix":" (x3y1 −x1y3)e2 + (x1y2 −x2y1)e3","suffix":"εijkεilm = δjlδkm −δjmδklδij Rii"}]}]}
>```
>%%
>*%%PREFIX%%(x3y1 −x1y3)e2 + (x1y2 −x2y1)e3%%HIGHLIGHT%% ==下面有三个重要的性质，一个是计算方便，另两个是反映了转动矩阵的性质，在这里一并写出== %%POSTFIX%%εijkεilm = δjlδkm −δjmδklδij Rii*
>%%LINK%%[[#^0nee18acqr3h|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^0nee18acqr3h

比较类似行列式和方阵的性质

第二条是关于转动矩阵的性质：
Proof：
$$
\delta_{ij}R_{ii'}R_{jj'}=R_{ji'}R_{jj'}=\delta_{i'j'}
$$
$\leftrightarrow R_{i'j}R_{jj'}=\delta_{i'j'}（对j求和）\leftrightarrow R R^{T}=I$

对第三条性质
Proof：
对一组行列式为 1 的坐标 $(e_{1},e_{2},e_{3})$
$$
\epsilon_{ijk}=\det(e_{i},e_{j},e_{k})
$$
将 R 视为由 $(e_{1},e_{2},e_{3})到(e_{1'},e_{2'},e_{3'})的坐标变换$
$$
so\space \epsilon_{i'j'k'}=e_{i'}\times e_{j'}\cdot e_{k'}=(R_{ii'}e_{i})\times(R_{jj'}e_{j})\cdot(R_{kk'}e_{k})=\epsilon_{ijk}R_{ii'}R_{jj'}R_{kk'}
$$


## 对偶

$\mathbb{P}(\mathbb{R})\to \mathbb{R}$ 称为线性泛函，其中 $\mathbb{P}(\mathbb{R})$ 指函数空间。


## 张量和度规

>%%
>```annotation-json
>{"created":"2023-04-01T08:34:58.947Z","updated":"2023-04-01T08:34:58.947Z","document":{"title":"%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","link":[{"href":"urn:x-pdf:e234c1b5dce291c7b6eb1920c4a96c99"},{"href":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf"}],"documentFingerprint":"e234c1b5dce291c7b6eb1920c4a96c99"},"uri":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","target":[{"source":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","selector":[{"type":"TextPositionSelector","start":9273,"end":9400},{"type":"TextQuoteSelector","exact":"对偶基 设 v1, ...vn 是 V 的基，则 v1, ...vn 的对偶基是 V ′ 中的元素组 φ1, ..., φn, s.t.φj (vk) = δkj对于标准正交基，这里我们把内积看成一种映射，eTi ·ej = δij , 即二者互为对偶基","prefix":" ′ = L(V, F )12U ST C Y + 1 指标运算","suffix":"这里不难验证对偶基是对偶空间的基（线性无关且完备）对偶映射 若 "}]}]}
>```
>%%
>*%%PREFIX%%′ = L(V, F )12U ST C Y + 1 指标运算%%HIGHLIGHT%% ==对偶基 设 v1, ...vn 是 V 的基，则 v1, ...vn 的对偶基是 V ′ 中的元素组 φ1, ..., φn, s.t.φj (vk) = δkj对于标准正交基，这里我们把内积看成一种映射，eTi ·ej = δij , 即二者互为对偶基== %%POSTFIX%%这里不难验证对偶基是对偶空间的基（线性无关且完备）对偶映射 若*
>%%LINK%%[[#^dbhbuz9y6u|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^dbhbuz9y6u



>%%
>```annotation-json
>{"created":"2023-04-01T08:41:05.870Z","updated":"2023-04-01T08:41:05.870Z","document":{"title":"%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","link":[{"href":"urn:x-pdf:e234c1b5dce291c7b6eb1920c4a96c99"},{"href":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf"}],"documentFingerprint":"e234c1b5dce291c7b6eb1920c4a96c99"},"uri":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","target":[{"source":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","selector":[{"type":"TextPositionSelector","start":10220,"end":10252},{"type":"TextQuoteSelector","exact":"引入一个特殊的张量来方便我们做内积运算，称为度规：g is me","prefix":"取自然标准正交基）13U ST C Y + 1 指标运算这里我们","suffix":"tric ⇐⇒ gij ≡⟨ei, ej ⟩= ei ·ej这里"}]}]}
>```
>%%
>*%%PREFIX%%取自然标准正交基）13U ST C Y + 1 指标运算这里我们%%HIGHLIGHT%% ==引入一个特殊的张量来方便我们做内积运算，称为度规：g is me== %%POSTFIX%%tric ⇐⇒ gij ≡⟨ei, ej ⟩= ei ·ej这里*
>%%LINK%%[[#^wadoripqkb|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^wadoripqkb

所以有 $x^{\rightarrow}\cdot y^{\rightarrow}=g_{ij}x^{i}y^{j}$



>%%
>```annotation-json
>{"created":"2023-04-01T08:52:07.985Z","updated":"2023-04-01T08:52:07.985Z","document":{"title":"%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","link":[{"href":"urn:x-pdf:e234c1b5dce291c7b6eb1920c4a96c99"},{"href":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf"}],"documentFingerprint":"e234c1b5dce291c7b6eb1920c4a96c99"},"uri":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","target":[{"source":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","selector":[{"type":"TextPositionSelector","start":10737,"end":10749},{"type":"TextQuoteSelector","exact":"对于大部分的区域，我们有","prefix":"量等式我们经常会遇到和 r 相关的矢量运算，这里我做一个小总结：","suffix":"：∇f (r) = ∇∞∑n=0f (n)(0)rn=∞∑n=0"}]}]}
>```
>%%
>*%%PREFIX%%量等式我们经常会遇到和 r 相关的矢量运算，这里我做一个小总结：%%HIGHLIGHT%% ==对于大部分的区域，我们有== %%POSTFIX%%：∇f (r) = ∇∞∑n=0f (n)(0)rn=∞∑n=0*
>%%LINK%%[[#^uo82d2jt94|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^uo82d2jt94



>%%
>```annotation-json
>{"created":"2023-04-01T08:59:24.817Z","updated":"2023-04-01T08:59:24.817Z","document":{"title":"%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","link":[{"href":"urn:x-pdf:e234c1b5dce291c7b6eb1920c4a96c99"},{"href":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf"}],"documentFingerprint":"e234c1b5dce291c7b6eb1920c4a96c99"},"uri":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","target":[{"source":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","selector":[{"type":"TextPositionSelector","start":11182,"end":11343},{"type":"TextQuoteSelector","exact":"我们这里把算子部分 dxidt ∂i ≡ ξi∂i 拿出来，这个算符与我们熟悉的速度矢量 (dx1dt , dx2dt , ..., dxndt ) 一一对应；在这里我们把这个新的微分算符称作切向量 v, 而我们定义的坐标架中 ∂i 一般是线性无关的，我们将其当做切向量的一组基底，相应的其分量组成的向量就是原来的速度矢量","prefix":" x2, ..., xn) = dxidt ∂iF ≡v(F )","suffix":"利用链式法则，我们可以很容易的给出切向量的坐标变换规则ξi(x)"}]}]}
>```
>%%
>*%%PREFIX%%x2, ..., xn) = dxidt ∂iF ≡v(F )%%HIGHLIGHT%% ==我们这里把算子部分 dxidt ∂i ≡ ξi∂i 拿出来，这个算符与我们熟悉的速度矢量 (dx1dt , dx2dt , ..., dxndt ) 一一对应；在这里我们把这个新的微分算符称作切向量 v, 而我们定义的坐标架中 ∂i 一般是线性无关的，我们将其当做切向量的一组基底，相应的其分量组成的向量就是原来的速度矢量== %%POSTFIX%%利用链式法则，我们可以很容易的给出切向量的坐标变换规则ξi(x)*
>%%LINK%%[[#^ndqfg4xaqzm|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^ndqfg4xaqzm

将 $\partial_{i}$ 作为基，速度矢量坐标就变成了熟悉的形式。

## Hodge 星算子 

>%%
>```annotation-json
>{"created":"2023-04-01T09:24:50.516Z","updated":"2023-04-01T09:24:50.516Z","document":{"title":"%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","link":[{"href":"urn:x-pdf:e234c1b5dce291c7b6eb1920c4a96c99"},{"href":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf"}],"documentFingerprint":"e234c1b5dce291c7b6eb1920c4a96c99"},"uri":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","target":[{"source":"vault:/_attachment/paper/%E7%AC%AC%E4%B8%89%E6%AC%A1%E4%B9%A0%E9%A2%98%E8%AF%BE%E8%AE%B2%E4%B9%89%E9%A2%84%E4%B9%A0%E7%89%88%EF%BC%88%E7%AC%AC%E4%B8%80%E6%AC%A1%E4%BF%AE%E8%AE%A2%EF%BC%89.pdf","selector":[{"type":"TextPositionSelector","start":15217,"end":15271},{"type":"TextQuoteSelector","exact":"实际上在 Rn 中，星算子是一个映射，把一个 ΛkV 中的元素 ω 映射为一个 Λn−kV 中的元素 ⋆ω。","prefix":"子就是反映了 1 −f orm 和 2 −f orm 之间的联系","suffix":"αk ∧⋆βk = ⟨α, β⟩ωn−k其中 ωn−k = e1"}]}]}
>```
>%%
>*%%PREFIX%%子就是反映了 1 −f orm 和 2 −f orm 之间的联系%%HIGHLIGHT%% ==实际上在 Rn 中，星算子是一个映射，把一个 ΛkV 中的元素 ω 映射为一个 Λn−kV 中的元素 ⋆ω。== %%POSTFIX%%αk ∧⋆βk = ⟨α, β⟩ωn−k其中 ωn−k = e1*
>%%LINK%%[[#^pea0yvyamg|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^pea0yvyamg


对极坐标的例子：
$(dR)^{2}=(dr+r d \theta)$ ^$(dr+r d\theta)=(dr)^{2}+r^{2}(d\theta)^{2}$ 

$$
\begin{align*}
grad=\nabla(0型-1型)=d\\\\
散度rod=\nabla \times(1型-2型)=★d\\\\
梯度div=\nabla \cdot=★d★
\end{align*}
$$
