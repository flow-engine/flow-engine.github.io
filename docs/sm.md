---
layout: default
title: Standard Model predictions
---

# Standard Model predictions and uncertainties

The most basic functionality of flavio is to compute predictions for flavour
observables in the Standard Model (SM) and beyond. While there is much freedom
to change various input parameters and choose between different implementations,
you can also just trust the default choices and immediately get numbers.

To get started, just import the package:

{% highlight python %}
import flavio
{% endhighlight %}

## Getting central values

To get the central value of the (time-integrated) branching ratio of $B_s\to\mu^+\mu^-$ in the SM,
just type

{% highlight python %}
flavio.sm_prediction('BR(Bs->mumu)')
{% endhighlight %}

All observables are defined by strings like this. You can look at the
[complete list of observables](observables.html) currently defined.

Some observables depend on additional parameters, like a dilepton invariant
mass squared $q^2$. To get the differential branching ratio of $B^+\to K^+\mu^+\mu^-$
at $q^2=3\,\text{GeV}^2$, type

{% highlight python %}
flavio.sm_prediction('dBR/dq2(B+->Kmumu)', q2=3)
{% endhighlight %}

Note that all dimensionful qunatities in flavio are always assumed to be in units
of GeV to the appropriate power.

## Getting uncertainties

Uncertainties of predictions are defined by the uncertainties of input parameters.
This means that also predictions from higher orders or unknown hadronic effects
must be parametrized in terms of parameters with uncertainties.

To get the uncertainty of the SM prediction on the above observables, use

{% highlight python %}
flavio.sm_uncertainty('BR(Bs->mumu)')
{% endhighlight %}

This works by generating random values for all input parameters, computing the
observable for all of them, and extracting the standard deviation of the spread
of values. Since this procedure involves random numbers, its precision depends
on the number of random numbers. By default, the function uses 100 iterations.
If you need more precision (or have more time), you can increase this by
specifying the optional parameter `N=200`, for instance. Note that the relative
error of the uncertainty as a function of $N$ is given by

$$\frac{\Delta \sigma}{\sigma} = \frac{1}{\sqrt{2N}},$$

so the default setting returns the uncertainty up to a relative precision of
7%.

## Looking at the error budget

You can also look at the contribution of individual parameters to the total
error budget. Use

{% highlight python %}
flavio.sm_error_budget('BR(Bs->mumu)')
{% endhighlight %}

to get a dictionary with *relative* uncertainties stemming from the modification
of individual parameters. For more info about the parameters, look at the
[full list](parameters.html).

If you have `matplotlib` installed, you can also visualize the error budget
as a pie chart with a simple command:

{% highlight python %}
errors = flavio.sm_error_budget('BR(Bs->mumu)')
import flavio.plots
flavio.plots.error_budget_pie(errors)
{% endhighlight %}

It should look something like this:

![](/images/pie.svg)

*Correlated* parameters will be grouped into a single slice.
Note that the *total* uncertainty is the *squared* sum of the
individual uncertainties, so the relative size of the wedges does not correspond
to the relative contribution to the total uncertainty.
