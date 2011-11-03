## Classification Problems

* Email: Span/Not Spam
* Online Transactions: Fraudulent yes/no?
* Tumor: Malignant/Benign.

y is in {0,1} => 0: "Negative class", 1: "Positive Class"

There are also multiclass problems, where y is in {0,1,2,3}

Tumor Example.

One feature, Tumor size.  Linear regression gives h(x) = theta*x

Threshold classifier output h(x) at 0.5.
`if h(x) >= 0.5, predict "y=1"`
`if h(x) < 0.5 predict "y=0"`

Linear regression can be skewed.  Usually a bad idea for classification problems.  In fact, h(x) can yield `>1 and <0`

## Logisitic Regression - Classification

0 <= h_theta(x) <= 1

## Hypothesis Representation for Logistic Regression
```
h_theta(x) = g(theta^T *x)

where g(z) = 1/(1 + e^-z)

This is the sigmoid function.

h(x) = 1 / (1 + e^(theta^T*x))
```

## Interpretation of Hypothesis Output
```
h(x) = estimated probability that y=1 on input x.

h_theta(x) = P(y=1|x;theta)
```

## Logistic Regression Decision Boundary

If you choose g(z) >= 0.5 as your decision boundary, you get
g(z) >= 0.5 exactly when θ^T >=0.

decision boundary is where h(x) = 0.5, its also where θ^T*x = 0

## Non-linear decision boundaries
```
h_θ(x) = g(θ_0 + θ_1*x_1 + θ_2*x_2 + θ_3*x_1^2 + θ_4*x_2^2)

```

## Logisitic Regression - Cost function

Linear regression cost function (sum of squared errors), yields a 
non-convex function if h(x) is the sigmoid function.

```
Cost(h_θ(x),y) = 
{ 
  -log(h(x)) if y=1
  -log(1-h(x)) if y=0
}
```

Cost = 0 if y=1, h(x) = 1
But as h(x) -> 0, Cost -> Inf.

Cost(h(x,y) = -ylog(h(x)) - (1-y)log(1-h(x))

Logistic regression cost function:

```
J(θ) = -1/m Sum[1-m]{y(i)log(H(x(i)) + (1-y(i)log(1-h(x(i))}
```

## Advanced Optimization Algorithms

## Regularization - The problem of overfitting

Linear - "underfit, high bias"

4th term polynomial = "overfit, High variance"

## Addressing overfitting

Options:

1. Reduce number of features
    * Manually select which features to keep.
    * Model selection algorithm (later in course)

2. Regularization.
    * Keep all the features, but reduce magnitude/values of parameters theta_j.
    * Works well when we have a lot of features, each of which contribute a bit to predicting y.

## Regularization - Cost function

Small values for parameters Theta_0...Theta_n
    * Simpler hypothesis
    * less prone to overfitting

Basically the idea is to add terms to our cost function that will lower the magnitude of the thetas.

By convention we don't regularize theta_0.

## Regularization - Linear regression

Gradient descent:

```
theta_0 := theta_0 - alpha/m Sum[1..m]{(h(x(i) - y(i))x_zero(i)}

for the rest

theta_j := theta_j(1-alpha*lambda/m) - alpha/m Sum[1..m]{(h(x(i) - y(i))x_j(i)}}

```

Normal Equation

```
X = {
x(1)';
...
x(m)';
}

y = [y(1);y(2);...y(m)]

Theta = (X'X)^-1X'y
```

This becomes:

```
(X'X + lambda [0 0 0; 0 1 0; 0 0 1])^-1*X'y
```

## Regularized Logistic Regression













