### Neural Networks

## Non-linear hypothesis

Housing prediction with 100 features, as a classification problem.

Even with only order two polynomials, with 100 features thats 5000
features! (O(n^2)

Order three polynomials, you're up to about 170,000.

## Another example: Computer vision

Examine an image and tell if its a car.

Labeled training set (images).

Examine each pixel as a feature.  With a 50x50 image -> n=2500

Just with quadratic we're up to 3 million features!

## Neurons and the brain

Origins: Algorithms that try to mimic the brain.  Was very widely used
in 80's and 90's.  Recent resurgence: State-of-the-art technique for
many applications.

The "one learning algorithm" hypothesis.  Connecting Auditory cortext to
eyes, animals still learn to see.  Neural re-wiring experiments show
that same tissue can learn different things.

## Model Representation - Neuron in the brain

Neuron has:

* Nucleus
* Input wire (Dendrite)
* Output wire (Axon)

## Artificial Neuron model - Logistic unit

Inputs: x1, x2, x3 => logical output is h(x)

x0 = 1 is 'bias unit'

```
h(x) = 1/(1+e_-thetaTx)
```

Sigmoid (logistic) activation function. Input vector, X, provides inputs
into 2nd layor, Hidden layer, and 3rd layer is output layer.

* `a_i(j)` = "activation" of unit i in layer j.
* `theta(j)` = matrix of weights controlling function mapping from layer
  j to layer j+1
* theta(1) is 3x4, if network has sj units in layer j, sj+1 units in
  layer j+1, then theta(j) will be s(j+1) x(sj +1).

## Model representation II - Vectorized implementation

Forward Propagation of logistic regression.

## Examples and Intuitions I

Boolean functions.

## Cost Function

* L = # of layers
* `s_l` = no. of units (not counting bias unit) in layer l

Binary Classification => 1 output unit

Multi-class classification (K classes) => K output units
