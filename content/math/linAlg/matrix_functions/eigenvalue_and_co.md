+++
title = "Eigenvalue and co"
+++

## Eigenvalue (ew)
### ew problem
Aka: ew or eigenwert. For square \\(A\\) only. These are solutions to the eigenvalue problem: \\(Ax=\ew x\\) (Eigen = distinctive). This defines the Eigen pair: \\((\ew, x)\\), where \\(\ew\\) is ew, x is a (right) ev (eigen vector).

#### Left and right eigenpairs
Also, can define left ev and ew by the relation \\(xA = \ew x\\). ew of \\(A\\) and left ew of \\(A^{T}\\) are same.

ew of \\(A\\) and ew of \\(A^{T}\\) are the same if \\(A\\) is real: By Schur, \\(A=QUQ^{*}\\), \\(A^{*}=QU^{*}Q^{*}\\). As  \\(QU^{*}Q^{*}\\) is a similarity transformation, and \\(U^*\\) is triangular, the ew of \\(A\\) are still \\(diag(U)\\).

In the case of diagonalizable A, ew decomposition \\(AS = S \EW\\) reveals that rows of \\(S^{-1}\\) are the left ev: For details see ew decomposition section.

### Characteristic polynomial
As \\((A-\ew I)x = 0\\), \\(det(A-\ew I)=0\\). 0 is always an ev.

Other things apart, this implies that ew of a triangular matrix are on its diagonal.

#### Mapping polynomials to matrices
Every polynomial \\(p(\ew) = \ew^{m} + a_{m-1}\ew^{m-1} .. + a_{0}\\) determinant of some matrix; Eg: \\(\mat{\ew & a_{0}\\ -1 & \ew+a_{1}}\\) for m=2; which is \\(A-\ew I\\) for some companion matrix A.

### Applications
Domain and range of \\(A\\) are the same space. Useful where iterative calculations: \\(A^{k}\\) or \\(e^{tA}\\) occur.

Physics: evolving systems generated by linear equations; Eg: resonance, stability.

Simpler algorithms: Reduces coupled system into a collection of scalar systems. \why



## ew and ev properties
### ew properties
For connection with matrices, distribution etc.. see later section.

#### Number of ew
There are n ew in \\(C\\). Algebraic multiplicity of ew: number of times an ew appears as root of \\(p(\ew)\\).

#### 0 as an ew
If \\(A\\) full rank, 0 is not an ew: \\(Ax=\ew x\\) else A's columns would be dependent. If 0 is an ew, \\(E_{0} = N(A)\\).

### Eigenspace of an ew
If x is an ev corresponding to \\(\ew\\), so is -x and kx for any scalar k. For every \\(\ew\\), ev span the null space of \\(A-\ew I\\).

An invariant subspace: \\(AE_{\ew}\subseteq E_{\ew}\\). \\(E_{\ew_{1}} = N(A-\ew_{1}I)\\).

#### Independence of ev
ev \\(x_{1}, x_{2}\\) (non-0) for distinct ew \\(\ew_{1}, \ew_{2}\\) are linearly independent: otherwise action of \\(A\\) on collinear \\(x_1, x_2\\) would involve the same scaling.

#### Defective matrices
Geometric multiplicity of \\(\ew\\) \\(\leq\\) algebraic multiplicity: Let n be geometric multiplicity of \\(\ew\\) in A; Select orth vectors in \\(E_{\ew}\\) to get \\(\hat{V}\\); extend it to square V; take \\(B=V^{*}AV = \mat{\ew I & C \\ 0 & D}\\); but \\(det(B-zI) = det(\ew I-zI)det(D-zI) = (\ew-z)^{n}det(D-zI)\\): so algebraic multiplicity of \\(\ew\\) in B \\(\geq n\\), same in A.

If algebraic multiplicity of ew exceeds geometric multiplicity, ew is defective. If \\(A\\) has defective ew, it is defective. Eg: Diagonal matrix never defective.

### Rayleigh quotient of x
\\(r(x) = \frac{x^{T}Ax}{x^{T}x}\\). Like solving the least squares problem: \\(xa\approx Ax\\) for a; thereby approx eigenvalue. Range(r(x)): Field of values of numerical range of A: W(A). Includes Convex hull of \\(\EW(A)\\).

#### EV as stationary points
\\(\partder{r(x)}{x_{j}} = \frac{2(Ax-r(x)x)_{j}}{\norm{x}^{2}}\\); their vector, the gradient \\(\gradient r(x) = \frac{2(Ax-r(x)x)}{\norm{x}^{2}}\\). ev are the stationary points: \\(\gradient r(x) = 0\\) iff x is ev and r(x) is ew.

#### Geometry
\\(r(x):S^{n-1} \to R\\). Normalized ev of \\(A\\) are stationary points of r(x) for \\(x \in S^{n-1}\\).

#### maxmin thm for symmetric A
[Courant Fishcer]. \\(\ew_i\\) descending. Then \\(\ew_i = \max_{S:dim(S) = i} \min_{y \neq 0 \in S} R_A(y)\\).


#### Quadratic Accuracy of ew wrt ev error
For \\(A = A^{T}\\), let \\(q_{i}\\) be ev. Then, any \\(x = \sum_{i} a_{i}q_{i}\\), \\(r(x) = \frac{\sum a_{i}^{2}\ew_{i}}{\sum a_{i}^{2}}\\). So, W(A) = Convex hull of \\(\EW(A)\\). So, \\(max_{x}r(x) = \ew_{max}\\). Also, \\(r(x) - r(q_{i}) = O(\norm{x-q_{i}}^{2})\\) as \\(x \to q_{i}\\) or \\(\forall j: |a_{j}/a_{i}| \leq \eps\\).

#### Rayleigh quotient of M: Generalization
If \\(A\\) = m*m, M is m*n: thin, tall, required to be full rank.\\
\\(r(M) = tr((M^{T}M)^{-1}(M^{T}AM))\\).

Take svd: \\(M = U\SW V^{*}\\). Then \\
\\(\max r(M) = \max_{U} |tr(U^{T}AU)| = \max_{U} \prod |R(u_{i})|\\). This happens when U is top k unique ev(A).

## ew and matrices: other connections
### ew distribution
Set of ew: Spectrum of A: \\(\EW(A)\\). Spectral radius: \\(\rho(A) = |\ew_{max}|\\). ew follows wigner's semicircle distribution for random matrices. \why

### ew and the diagonal
#### In Disks around the diagonal
(Gerschgorin) In complex plane, take disks with center \\(A_{i,i}\\), radii \\(\sum_{j\neq i} A_{i,j}\\); each ew lies in atleast one disk: Take ev v and ew l; take \\(i = argmax_{i}\ v_{i}\\); then \\(|\ew-a_{i,i}|\leq |\sum_{j\neq i}a_{i,j}\frac{v_{j}}{v_{i}}| \leq |\sum_{j\neq i}a_{i,j}|\\). Good estimate of ew!

#### Monotonic dependence on diagonal
Take \\(A = QTQ^{*}\\), take any +ve diagonal D; get \\(A+D = Q(T+D)Q^{*}\\). Used to take \\(A \notin S_+ to B \in S_+\\).

### Effect of transformations
#### Similarity transformation
X nonsingular, square; \\(A \to B = X^{-1}AX\\). \\(A\\), B similar if \\(\exists X: B=X^{-1}AX\\).

Change of basis op: See Ax=b as \\(AXx'=Xb'\\) when \\(Xx'=x\\), \\(Xb'=b\\), so \\(Bx'=b'\\).

\\(p_{X^{-1}AX} = det(\ew I - X^{-1}AX) = det(X^{-1}(\ew I - A)X) = det(\ew I - A) = p_{A}\\). So, ew's, their agebraic multiplicities same. Geometric multiplicities same: \\(X^{-1}E_{\ew}\\) is eigenspace of \\(X^{-1}AX\\): if \\(Ax = \ew x\\), \\(BX^{-1}x = \ew X^{-1}x\\).

#### Eigenpairs of \htext{\\(A^{k\\)}{..}}
\\(A^{k} = (QUQ^{*})^{k} = QU^{k}Q^{*}\\). So, ew are \\(\ew_{i}^{k}\\). So, ew of \\(A^{-1}\\) are \\(\frac{1}{\ew_{i}}\\): \\(L^{-1} = (S^{-1}AS)^{-1} = S^{-1}A^{-1}S\\).

### Matrix construction
#### Matrix with certian ew and diagonal entries
If real \\(\ew\\) majorizes \\(A\\), \\(\exists\\) real symmetric \\(A\\) with \\(a_{i,i} = a_{(i)}\\), such that \\(\ew_{(i)}\\) are ew of A. Pf: By induction; assume true for n-1; Take \\(g \in R^{n-1}\\) interleaved amongst \\(\ew\\) which majorizes a; by ind hyp, take real symmetric \\(B = QGQ^{*}\\) with diagonal a and ew g; can make \\(A' = \mat{G & y\\ y^{T} & \ga}\\) with ew \\(\ew\\); take \\(A = \mat{Q & 0 \\ 0 & 1}A'\mat{Q^{T} & 0 \\ 0 & 1} = \mat{B & Qy\\ y^{T}Q^{T} & \ga}\\) with ew \\(\ew\\) and diag a.

#### Extending \htext{\\(\EW\\){EW} to A with certain interleaving \htext{\\(\ew(A)\\)}{ew}}
Take \\(\ew \in R^{n}\\) interleaved between \\(l \in R^{n+1}\\). Can make real \\(A = \mat{\EW & y \\ y^{T} & a}\\) with \\(\ew(A) = l\\).

Pf where \\(\ew_{i}\\) differ: \\(a = tr(A) - tr(\EW) = \sum l_{i} - \sum \ew_{i}\\). Take \\(det(tI-A) = det[\mat{I & (tI-\EW)^{-1}y \\ 0^{T} & 1}\mat{tI-\EW & -y \\ -y^{T} & t-a}\mat{\EW & y \\ y^{T} & a}]\\) (multiplicity two matrices with det = 1) \\(= [(t-a) - y^{T}(tI-\EW)^{-1}y]det(tI-\EW) = (t-a) - \sum_{i}y_{i}^{2}(t-\ew_{i})^{-1}\prod_{i}(t-\ew_{i}) = p_{A}(t)\\).

Find y to make \\(p_A(l_{i}) = 0\\). Characterize y, show it exists: Take \\(f(t) = \prod (t- l_{i}), g(t) = \prod (t - \ew_{i})\\), so \\(f(t) = g(t)(t-c)+r(t)\\), where r(t) has degree \\(\leq n-1\\). \\(c = \sum_{i}l_{i} - \sum_{i}\ew_{i} = a\\); \\(f(\ew_{i}) = r(\ew_{i})\\), so get Lagrange interpolation form of \\(r(t) = \sum_{i} f(\ew_{i})\frac{g(t)}{g'(\ew_{i})(t-\ew_{i})}\\). So, \\(\frac{f(t)}{g(t)} = (t-a) - \sum_{i} \frac{-f(\ew_{i})}{g'(\ew_{i})(t-\ew_{i})}\\); this is \\(0 \forall t = l_{i}\\) and \\(y_{i}^{2} = \frac{-f(\ew_{i})}{g'(\ew_{i})}\\). But, by interlacing, \\(f(\ew_{i}) = (-1)^{n-i+1}\prod_{j}|\ew_{i} - l_{j}|\\) and \\(g'(\ew_{i}) = (-1)^{n-i}\prod_{j \neq i}|\ew_{i} - \ew_{j}|\\) oppose in sign, so \\(\exists y\\).

Pf where \\(ew_{i}\\) recurs: Divide out \\((t-\ew_{i})^{k}\\) from all, proceed as usual.


### EW of special matrices
#### Real A: complex ew in pairs
If \\(A\\) is real, \\(p_{A}\\) has real coefficients.

So, if l is ew of \\(A\\), so is \\(\bar{\ew}\\): complex roots of P appear in pairs. ew simple if its algebraic multiplicity 1.


#### Triangular and diagonal A
For triangular \\(A\\), from \\(det(A-\ew I)=0\\), ew are on diagonal. So, \\(tr(A) = \sum A_{i,i} = \sum \ew_{i}\\). Also, \\(\prod \ew_{i} = |A|\\). For diagonal \\(A\\), eigenpairs are diagonal element \\((A_{i,i}, ke_{i})\\).

#### Nilpotent matrix A
A is a nilpotent op (see algebra ref). So, all ew are 0; \\(|A|\\), tr(A) are 0. Any singular \\(A\\) = product of nilpotent matrices.

#### Singular A
0 is an ew.

#### Semidefiniteness and hermitianness
See other sections.

## Generalized eigenvalue problem
\\(Az = \ew Bz\\). \\(det(A-\ew B) = 0\\). \\(\set{A-\ew B}\\) is called pencil.

### General Rayleigh quotient of x
\\(R(x) = \frac{x^{*}Ax}{x^{*}Bx}\\). \\(\gradient R(x) = 2(Ax-R(x)Bx)\\) is 0 exactly where R(x) is \\(\ew\\), x the ev.

#### Of M
M is tall, thin, with independent columns. \\
\\(R(M) = tr((M^{*}BM)^{-1} (M^{*}AM))\\). Using svd \\(M = U\SW V^{*}\\):\\ get \\(R(M) = tr_{U}(U^{*}B^{-1}AU)\\): same as common rayleigh quotient of \\(B^{-1}A\\): see ev section. Maximized when U is the top ev's of \\(B^{-1}A\\).

### Reductions to common ew problem
If B is invertible: \\(B^{-1}Az = \ew z\\): so now an \\(\ew\\) problem. Don't want to invert: so solve some other way.

So, if B is invertible, symmetric, +ve definite: \\(R(x) = \frac{x^{*}Ax}{x^{*}B^{1/2}B^{1/2}x}\\); taking \\(z=B^{1/2}x\\), get \\(R(z) = \frac{z^{*}B^{-1/2}AB^{-1/2}z}{z^{*}z}\\). Max of R(x) is achieved somewhere in R(z) as \\(z \to x\\) is a 1 to 1 map. ew of \\(B^{-1/2}AB^{-1/2}\\) are easier to find as it is symmetric.

\chapter{Matrix to matrix functions}
## \htext{\\((I-A)^{-1\\)}{Neumann} series for square A}
Aka Neumann series. \\((I-A)^{-1} = \sum_{k=0}^{\infty} A^{k}\\), if it converges. It converges when \\(A\\) has norm \\(<1\\).

## Matrix exponentiation for square A
\\(e^{A} = \sum_{k=0}^{\infty} \frac{A^{k}}{k!}\\): always converges. Also defines \\(\log A\\). If \\(A\\) nilpotent, series is finite.

Using expansion, aggregating suitably: \\(e^{aX}e^{bX} = e^{(a+b)X}\\); If \\(XY=YX: e^{X}e^{Y} = e^{X+Y}\\).

\\(e^{X}e^{-X} = I\\): So exponential of X is always invertible.

\\(e^{YXY^{-1}} = Ye^{X}Y^{-1}\\).

\\(e^{X^{*}} = (e^{X})^{*}\\).

If D diagonal, easy to get \\(e^{D}\\). Thence easily get \\(e^{A}\\) if \\(A = XDX^{-1}\\) (A diagonalizable).

### Relationship among ew
As \\(e^{\ew(A)} = \ew(e^{A}), det(e^{A}) = e^{\sum \ew_{i}(A)} = e^{tr(A)}\\).

