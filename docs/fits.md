---
layout: default
title: Likelihoods
---

# Likelihoods in parameter or Wilson coefficient space

Providing likelihood functions in parameter or Wilson coefficient space
from existing experimental data is one of the main purposes of flavio. The code is organized such as to allow the use of different statistical paradigms (frequentist vs. Bayesian) and arbitrary probability distributions.

## Introduction: statistical inference

In general, we have a set $x_i^\text{exp}$ of $N$ measurements of $M$ observables, $i=1\ldots N$, and we can compute the theory prediction $x^\text{th}_i$ for each observable as a function of a set of theory parameters $\theta_j$ (for the moment, let us not distinguish between parameters and Wilson coefficients). Then, we can define the *likelihood function*

$$\mathcal L_\text{exp}(\vec\theta)=\prod_{i=1}^N f_i\!\left(x_i^\text{exp}, x^\text{th}_i(\vec\theta)\right)$$

where $f_i$ is the *probability distribution function* of measurement $i$.

The problem of  interest is in general to determine the values a subset of the parameters $\vec\theta$ preferred by the data, possibly using additional knowledge about these parameters from "direct" measurements or theoretical considerations. This leads to a splitting of $\vec\theta$ into "fit parameters" $\vec\xi$ and "nuisance parameters" $\vec\nu$.

### Bayesian approach

In the Bayesian approach, one defines  the *prior probability distribution* $\pi(\vec\theta)$
of all (fit and nuisance) parameters, that contains the prior knowledge about the parameters from external measurements or theoretical considerations. In the case where all parameters are uncorrelated, one simply has $\pi(\vec\theta)=\prod_i f_i(\theta_i)$.

The product of the likelihood with the prior is proportional to the *posterior probability distribution* via Bayes' theorem,

$$P(\vec\theta) \propto \mathcal L_\text{exp}(\vec\theta)\pi(\vec\theta).$$

To obtain the posterior distribution only for a subset of the parameters, the others have to be *marginalized*, i.e. integrated over:

$$P(\vec\xi)=\int d\vec\nu ~ P(\vec\xi,\vec\nu).$$

This can be done efficiently in high dimensions using Monte Carlo methods, e.g. using nested sampling or Markov chains.

### Frequentist approach

In the frequentist approach, the parameters do not have prior probabilities associated to them; however, they can be subject to external, direct measurements that enter the likelihood separately,

$$\mathcal L_\text{tot}(\vec\theta) = \mathcal L_\text{exp}(\vec\theta) \mathcal L_\text{nuis}(\vec\nu).$$

An example would be the top-quark mass entering the prediction of a rare decay, subject to a direct measurement from LHC. Theory uncertainties are less uniquely defined in this approach, as they are not amenable to a "frequentist" interpretation. Eventually, the ambiguity in how to define them is similar to the prior dependence in the Bayesian approach. In flavio, all nuisance parameters have a probability density function associated to them and the form of this PDF can be chosen to mimick different treatments of theory uncertainties. For instance, a normal distribution would correspond to treating the theory uncertainties like a statistical uncertainty, while a uniform distribution would lead to a treatment similar to the [Rfit](https://arxiv.org/abs/hep-ph/0104062) scheme.

Finding confidence intervals for the parameters of interest $\vec\xi$ in the presence of nuisance parameters $\nu$ requires constructing the *profile likelihood*

$$\mathcal L_\text{p}(\vec\xi) = \mathcal L_\text{tot}(\vec\xi, \hat{\hat{\vec\nu}}),$$

where $\hat{\hat{\vec\nu}}$ corresponds to the set of nuisance parameter maximizing the likelihood for a fixed value of $\vec\theta$. In practice, it requires performing a numerical optimization in $\vec\nu$ space on a grid of points in $\vec\theta$ space.

### "Fast likelihood" approach

Since both Bayesian marginalization and frequentist likelihood profiling are computationally quite demanding, flavio additionally introduces a simplified concept called a "fast fit" that is based on the approximation of assuming the likelihood to be of the form $\mathcal L =e^{-\chi^2(\vec\xi)/2}$, where

$$\chi^2(\vec\xi)=\vec\Delta^T C^{-1}(\vec\xi=\hat{\vec\xi}) \vec\Delta,
\qquad\Delta_i = (x_i^\text{exp}- x^\text{th}_i(\vec\theta)).$$

Here, $C(\vec\xi)=C_\text{exp}+C_\text{th}(\vec\xi)$ is the combined experimental and theoretical covariance matrix of the observables $x_i$, and a crucial point is that it is *evaluated for $\vec\xi$ at their central values* $\hat{\vec\xi}$. The theoretical covariance is obtained from randomly sampling the observables for nuisance parameters distributed according to their PDFs, while the experimental covariance is obtained from approximating the true experimental PDFs as (multivariate) Gaussians.

This approach has the main advantage that it yields a likelihood independent of nuisance parameters, but the time-consuming step (namely evaluating the theoretical covariance $C_\text{th}$) is *independent of the data*. In particular, this makes this approach very powerful for fast inference after a change in experimental data.

However, its validity relies on a number of assumptions,

- the experimental uncertainties are approximated as Gaussian,
- the theory uncertainties (at the level of observables) are approximated as Gaussian,
- the covariances are assumed to be weakly dependent on $\vec\xi$.

The last point is by far the strongest assumption and its validy has to be checked whenever the method is employed.

## Inference in flavio

In flavio, statistical inference is based on the following concepts,

- **probability distributions** (represented by the `ProbabilityDistribution` class) that are the building blocks of likelihoods,
- **measurements** (represented by the `Measurement` class), that associate probability distributions to observables,
- **likelihoods** (represented by the `Likelihood` class) that define a set observables,
nuisance parameters $\nu$, and measurements $x_i$ of interest and assemble the corresponding likelihood.

*Note that in earlier versions of flavio, the `flavio.statistics.fits` module provided the concepts of "fits" and "fitters". This module has been deprecated as of v1.6 and will be removed in the future.*

Example: we want to determine the value of the CKM element $V_{cb}$ from the total branching ratio of $B\to D\ell\nu$. We need

- an existing **measurement**, consisting of a  **probability distribution** (e.g. a normal distribution with a central value and standard deviation) associated to the observable `BR(B0->Dlnu)`,
- **probability distributions** for all the other parameters entering the prediction, like the $b$ quark mass (these reside in the `ParameterConstraints` class),
- a **likelihood** simply defining we are interested in a likelihood function from the existing measurement of the observable `BR(B0->Dlnu)` with a set of nuisance parameters (namely all parameters the prediction depends on *except* $V_{cb}$),

The first two points -- PDFs for measurements and input parameters -- are already included by default in flavio (but can be modified or extended by the user), while the last point
has to be specified by the user.

Given the likelihood function, the user can use any Python fitting tool like [iminuit](https://iminuit.readthedocs.io/en/latest/), [scipy](https://scipy.org/), [emcee](https://emcee.readthedocs.iof), or [pypmc](https://github.com/fredRos/pypmc) (depending on the statistical approach) to determine the posterior probability or profile likelihood of the parameter of interest.

### Experimental data

flavio already comes with a database of existing  experimental measurements. They are defined in the YAML file `measurements.yml`
([view on Github](https://github.com/flav-io/flavio/blob/master/flavio/data/measurements.yml)).

To add additional measurements not included in the above file, you can create your
own file in the same format and add any measurements you like.
The format for the various probability distributions is discussed in detail [on a separate page](probability.html).
You can then load the file by

{% highlight python %}
flavio.measurements.load('my_measurements.yml')
{% endhighlight %}

Needless to say, you are welcome to add any missing measurements via a pull request on Github.

### Wilson coefficients

While the preceding discussion focused on fitting *parameters* $\vec\xi$, the equivalent applies also to fitting new physics contributions to Wilson coefficients. The provided likelihood function takes a parameter dictionary and an instance of `flavio.WilsonCoefficients` (or `wilson.Wilson`) as input, such that any dependence on
parameters or Wilson coefficients can be investigated.