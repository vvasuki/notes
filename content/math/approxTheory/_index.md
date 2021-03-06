+++
title = "+Approximation Theory"
+++

## Intro
How functions can best be approximated with simpler functions, and with quantitatively characterizing the errors introduced thereby?

Hilbert space, Function space. Inner products and norms of functions. See Linear Algebra quick reference for details.


## Sequences of orthogonal polynomials
\\(p_{i}(x)\\) has degree i. Eg: Legendre polynomials. Any poly \\(S(x)\\) of degree \\(n\\) can be projected to these: \\(S(x) = a_{n}p_{n}(x) \dots\\) : choose \\(a_{n}\\) to match \\(coeff(x^{n})\\); etc.. So, Terms of orth poly seq of degree \\(\geq n+1\\) are orthogonal to S(x) of strictly lower degree. \\(p_{n+1} = (a_{n}x+b_{n})p_{n} + c_{n}p_{n-1}\\).

Each polynomial in an orthogonal sequence has all n of its roots real, distinct, and strictly inside the interval of orthogonality +++(Find proof)+++. The roots of each polynomial lie strictly between the roots of the next higher polynomial in the sequence. +++(why??)+++

### Chebyshev polynomials
(Proofs to be found.) \\(C_{1}(x) = 1, C_{2}(x) = x \dots\\). n Chebyshev roots or nodes, in the interval [-1,1] +++(find proof)+++. \\(|C_{d}x| \leq 1 \forall x \in [-1,1]\\). \\(C'_{d}(1)\approx d^{2}\\). \\(C_{d}(1+t^{-12}) \geq 2\\).

## Linear Interpolation
### Polynomial interpolation
A unique polynomial of degree d passes through d+1 points in \\(R^2\\) : The d+1 equations can be used to solve for the d+1 coefficients of a polynomial of degree d, using Gaussian elimination.

A special case of curve fitting: see optimization ref.

### Lagrange form of polynomial interpolant
Take d+1 pts: \\
\\(\set{(x_{i}, y_{i} = f(x_{i}))}\\). Then, \\(P(x) = \sum_{j=1}^{d}y_{k}\prod_{j=1, j\neq k}^{d}\frac{x - x_{j}}{x_{k} - x_{j}}\\). If \\(Q(x) = \prod_{j=1}^{d}(x-x_{j}), P(x) = \sum_{j=1}^{d}y_{k}\frac{Q(x)}{Q'(x)(x - x_{k})}\\).

An expression of P(x) in terms of the Lagrange orthogonal bases.

### Spline interpolation
Uses low-degree polynomials in each of the intervals, chooses the polynomial pieces such that they fit smoothly together.

