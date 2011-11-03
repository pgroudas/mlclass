## Linear Regression with multiple variables
We use X_1, X_2, ...X_i for features

X^(i) is ith input vector.  Index into training set.


### Form of hypothesis

h_theta(x) = theta_0 + theta_1X_1 + theta_2X_2 ... theta_nX_n

h_theta(x) = theat^T * X 

This is Multivariate linear regression.

### Gradient descent for multiple variables

Cost Function:  J(theta_0,...theta_n) = 1/2m SUM[1-m](h_theta(x^i) - y^i)^2

```
Repeat {
  theta_j := theta_j - alpha (partial theta j) J(theta)
}
```

For multiple variables:

```
Repeat {
  theta_j := theta_j - alpha/m SUM[1..m]{(h_theta(x^i) - y^i)x_j^i}
}
```

### Gradient Descent in practice: Feature Scaling

Idea: Make sure features are on a similar scale.  Scale features to [-1...1]

Mean normalization.  Replace x_i with x_i - mu_i.

### Gradient Descent in practice: Learning Rate

Plot J(theta) vs No. of iterations

Automatic convergence test:  Declare convergence if J(theta) decreases by less than 10^-3 in one iterations.

If J(theta) is increasing, alpha is too large.

### Polynomial Regression

Choose better features (feature^2, or sqrt(feature)

### Normal Equation

Method to solve for Theta analytically.

set partial derivatives to zero.

1. Make matrix X of training data m x (n+1)
2. Make vecor y of training data m-dimensional vector

Theta = (X^TX)^1X^Ty

No need for feature scaling.

### Normal equation and non-invertibility

what if X^TX is non-invertible? (Singular/degenerate)

Redundant (linearly dependent features)

Too many features (e.g. m<=n).
