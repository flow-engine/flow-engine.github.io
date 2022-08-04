---
layout: default
title: Bayesian inference
---

# Bayesian inference

**This page is outdated and needs to be rewritten to account for the replacement of the deprecated `flavio.statistics.fits` module by `flavio.statistics.likelihood`.**

As discussed [above](fits.html), Bayesian inference is based on prior distributions for fit and nuisance parameters in addition to the liklihood and requires marginalization to determine the posterior distribution of the parameters of interest.

## Defining Bayesian fits

### Fitting parameters

To define a Bayesian fit of SM parameters (e.g. the CKM parameters) to
experimental data, at least the following inputs have to be specified:

- a unique name for the fit
- a list of parameters of interest (see the [full list of parameters](parameters.html)),
- a list of nuisance parameters (that are varied in the fit as well).
- a list of observables to fit to.

For instance, a CKM fit could look like

{% highlight python %}
import flavio.statistics.fits

ckmfit = flavio.statistics.fits.BayesianFit(
  name = 'Bayesian SM CKM fit',
  fit_parameters = ['Vus', 'Vub', 'Vcb', 'gamma'],
  nuisance_parameters = ['bag_B0_1', ...],
  observables  = ['eps_K', 'DeltaM_s', ...],
  )
{% endhighlight %}

Once defined, you can
access the logarithm of the target distribution (likelihood times prior
probability) via

{% highlight python %}
ckmfit.log_target(x)
{% endhighlight %}

where x is a list (or NumPy array) of real numbers, with the first four
being the values of the fit parameters and the remaining ones the values of
the nuisance parameters.


### Fitting Wilson coefficients

To fit Wilson coefficients in addition to (or instead of) parameters,
the following four additional inputs have to be passed when defining the fit instance:

- a list of names of coefficients (or functions of coefficients) to be fitted,
- a function relating these coefficients to actual Wilson coefficients
defined in the [flavio basis](operators.html),
- an input scale where the Wilson coefficients are defined (defaults to 160 GeV),
- optionally, a function returning the prior probability in the space of the
coefficients (defaults to flat).

The first two items are necessary as the quantities to be fitted need to be real
numbers, while the Wilson coefficients are in general complex objects, so real
and imaginary parts have to be treated as independent fit parameters.
In addition, this allows to fit constrained scenarios such as MFV or models
with lepton flavour universality.

For details please consult the [API docs](/apidoc/flavio/statistics/fits.m.html).

## Sampling from the posterior

As discussed above, the `log_target` method of the `BayesianFit` instance gives access to the lihelihood times prior as a function of fit parameters, nuisance parameters, and fitted Wilson coefficients.

To obtain the posterior probability distribution, Markov Chain Monte Carlo  (MCMC) techniques can be used. At present, simple interfaces to the [pypmc](https://github.com/fredRos/pypmc) and [emcee](http://dan.iel.fm/emcee) packages are implemented.

### Adaptive MCMC using pypmc

The `flavio.statistics.fitters.pypmc` module gives access to adaptive Markov chains as implemented in pypmc. The initial proposal distribution is a multivariate Gauss determined from a random sample of parameters distributed according to their prior distribution.

For more details, see the pypmc [documentation](https://www.mpp.mpg.de/~beaujean/pypmc/_build/html/) and the [API docs](/apidoc/flavio/statistics/fitters/pypmc.m.html) of the `pypmc` module.

### Ensemble MCMC using emcee

The `flavio.statistics.fitters.emcee` module implements an interface to the emcee package. The starting points of the individual "walkers" are obtained by randomly sampling from the prior.

For more details, see the emcee [website](http://dan.iel.fm/emcee) and the [API docs](/apidoc/flavio/statistics/fitters/emcee.m.html) of the `emcee` module.

## Visualizing results

To visualize posterior distributions in one or two dimensions, the [`flavio.plots`](/apidoc/flavio/plots) module provides several convenient functions. For usage examples see [this notebook](https://github.com/flav-io/flavio-examples/blob/master/Plots_for_Bayesian_analyses.ipynb) and for details please consult the [API docs](/apidoc/flavio/plots/plotfunctions.m.html).
