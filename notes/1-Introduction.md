## Introduction
### Welcome

Cutting edge, Used every day.

* Google page rank
* iPhoto photo tagging 
* spam filter

In this course:

* Learn algorithms
* Implement problem solutions

Machine Learning

* Grew out of AI
* New capability for computers

Examples

* Database Mining
    * Web Click Data
    * medical records
    * biology
    * engineering
* Programs that can't be programmed by hand
    * Autonomous helicopter
    * handwriting recognition
    * NLP
    * Computer Vision
* Self customizing programs
    * Amazon, Netflix product recommendations
* Understand human learning

### What is machine learning
> Machine Field: Learning of study that gives computers the ability to learn without
> being explicityly programmed.
>	
> -Arthur Samuel (1959). 

Arthur Samuel wrote a program that watch thousands of checkers games and observed 'good' and 'bad' board positions.

> Well-posed Learning Problem: A computer program is said to _learn_ from 
> experience E with respect to some task T and some performance measure P,
> if it s performance on T, as measured by P, imnproves with experience E.
>
> -Tom Mitchell

Types of learning algorithms

* Supervised learning
* Unsupervised learning
* Reinforcement learning
* recommender systems

### Supervised Learning

Housing prices, Price vs. Size in feet.  A learning algorithm could fit a line to the data (regression, linear or quadratic).  How to choose?  Good example of supervised learning algorithm.

Supervised because we gave it _right answers_.  Gave it actual prices, and task was to predict prices.
Also referred to as a _Regression_ problem.

**Regression Problem**: _Continuous valued output_

Next example: Breast cancer => malignant or benign vs. Tumor Size

This is an example of a _classification_ problem.  Mapping inputs to 0,1.  Could be more discrete value outputs.

**Classification Problem**: _Discrete valued output_

This example only uses one feature, or _attribute_ (tumor size).  We could also include age.  Now we can graph 
Tumor Size vs. Age, and graph malignant as X's, and benigns as O's.  We could use even more features:

* Clump Thickness
* Uniformity of Cell Size
* Uniformity of Cell Shape

Some problems want to extend this to use an infinite number of attributes.   How do you store and deal with feature
sizes like this?

### Unsupervised Learning

Here is a dataset, find some structure.  Clustering algorithm.

Example:  Google news.  Looks at tens of thousands, groups them into related articles.

DNA data:  Individual sequences, group individuals into categories of gene expressions.

More clustering algorithm examples:

* Organize computing clusters
* Social network analysis
* Market segmentation
* Astronomical data analysis.

## Cocktail party problem

Two talkers, two microphones at different distances.  Each speaker are louder vs the other to each microphone.

Program will listen to audio recordings and separate out audio sources.

Cocktail party problem algorithm
> [W,s,v] = svd((repmat(sum(x.*x,1),size(x,1),1).*x)*x\');

We're going to use Octave or Matlab.  Prototype in Octave.

SVD => Single value decomposition

### Linear regression with one variable

With supervised learning we have a _training set_.

* _m_ = Number of training examples
* _x_ = "input" variable / features
* _y_ = "output" variable / "target" variable
* (x,y) = one trainint example
* (x(i), y(i)) = ith training example

Learning algorithm generates _h_, the hypothesis function.  _h_ maps from x's to y's.

How to represent _h_? h(x) = a + bx.  a = Theta(0), b = Theta(1)

## Cost function

How to choose parameters (coefficients of linear function).

Minimize theta0, theta1. 

Cost function = Squared error function = J(theta0,theta1) = (1/2m)SUM(i,m)(h(x) - y)^2.

### Contour plots

### Gradient descent

Have some function J(theta0, theta1)

Want min(theta0,theta1)(J(theta0, theta1))

### Outline

* Start with some theta0, theta1
* Keep changing theta0,theta1 to reduce J until we hopefully end up at a minimum.

"Batch" gradient descent = Each step of gradient descent uses all of the training examples.

### Matrices

* dimension = #Rows x #Columns
* elements = A_ij = ith row, jth column.

### Matrix addition

Just add the corresponding elements.  Matrices must be same dimension.

### Matrix scalar multiplication

Just multiply each element by a the scalar (constant).

### Matrix Multiplication

for M x N , Output i,j = M(rowi) X N(colj)

In terms of machine learning, prediction = Datamatrix * parameters = vector of predicted values.

Properties:

* Matrix multiplication is NOT Commutative.  A x B != B x A
* Matrix multiplication IS Communtative.  A x (B x C) = (A x B) x C
* Identity matrix I, 1's on the NW to SE diagonal, all else 0.  A x I = I x A = A.

### Matrix Inverse

For real numbers, for number x, there exits some number x^-1 where x * x^1 = 1.

For mxm Matrix: AA^-1 = A^-1A = I

Only square matrices have inverses.

### Matrix Transpose

for A, A^T = flip along diagonals.  Rowi in A becomes columni in A^T.

Aij = A^Tji
