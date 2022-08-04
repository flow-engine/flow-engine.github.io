---
layout: default
title: Frequentist fits
---

# Frequentist fits

**This page is outdated and needs to be rewritten to account for the replacement of the deprecated `flavio.statistics.fits` module by `flavio.statistics.likelihood`.**

In frequentist statistics, the fit parameters (or Wilson coefficients) are treated as random quantities to be determined from data, not subject to a prior probability distribution. Thus the main difference to [Bayesian fits](bayesian.html) is that fit  parameters and Wilson coefficients are unconstrained. As discussed in the [introduction to inference in flavio](fits.html), the likelihood of the nuisance parameters is instead constructed in a similar way as for Bayesian fits, even though the statistical interpretation is different (the constraints are treated as pseudo-measurements rather than prior probability distributions).

Instantiating a frequentist fit is analogous to the Bayesian case,


{% highlight python %}
import flavio.statistics.fits

vubvcbfit = flavio.statistics.fits.FrequentistFit(
  name = 'Frequentist SM Vub-Vcb fit',
  fit_parameters = ['Vub', 'Vcb'],
  nuisance_parameters = ['bag_B0_1', ...],
  observables  = ['eps_K', 'DeltaM_s', ...],
  )
{% endhighlight %}

Any existing constraints on the fit parameters (in this case `'Vub'` and `'Vcb'`) *will be ignored*. The method `log_likelihood`, that is a function of a vector consisting of fit and nuisance parameters, will return the logarithm of the total likelihood [as defined in the introduction to fits](fits.html#frequentist-approach). To determine confidence intervals or regions of fit parameters in the presence of nuisance parameters, ...

## Profiling the likelihood

As discussed [above](fits.html), to obtain the likelihood in termms of fit parameters only, we have to "profile" the full likelihood, i.e. maximize it with respect to the nuisance parameters $\vec\nu$ for fixed values of the  fit parameters $\vec\xi$. This is implemented in the [`flavio.statistics.fitters.profiler`](/apidoc/flavio/statistics/fitters/profiler.m.html) module. It provides to classes, `Profiler1D` and `Profiler2D`, for one- and two-dimensional profiling, respectively. See the [API docs](/apidoc/flavio/statistics/fitters/profiler.m.html) for details.

## Visualizing results

To plot the results of a *two-dimensional* profile likelihood, the
`contour_plotdata` method of the `FrequentistFit` class returns the result
in a form which can directly passed to the [`flavio.plots.contour`](/apidoc/flavio/plots/plotfunctions.m.html#flavio.plots.plotfunctions.contour) plotting function.

For a *one-dimensional* profile likelihood, the method `pvalue_prob_plotdata` computes the $p$ value (one minus the confidence level) for each value of the fit parameter, assuming the "profiled" values of the nuisance parameters to be the true ones (in other words, it assumes Wilks' theorem to be applicable). The result can be passed directly to the [`flavio.plots.pvalue_plot`](/apidoc/flavio/plots/plotfunctions.m.html#flavio.plots.plotfunctions.pvalue_plot) plotting function.

For both a 1D and 2D example, see [this notebook](https://github.com/flav-io/flavio-examples/blob/master/FrequentistFit_VubVcb_Profiler.ipynb) in the flavio examples repository.
