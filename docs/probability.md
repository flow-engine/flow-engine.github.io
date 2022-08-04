---
layout: default
title: Probability distributions
---

# Probability distributions

## Treatment of uncertainties in flavio

An important feature of flavio is to deal with theoretical as well as
experimental uncertainties and to construct likelihoods to fit parameters
or Wilson coefficients from existing measurements. To quantify uncertainties,
the `flavio.statistics` submodule contains classes for *probability
distributions* that can be associated to parameters or measurements.

In flavio, theoretical uncertainties in predictions of observables always
result from uncertainties associated to [parameters](parameters.html).
Also formally non-parametric uncertainties, like the ones stemming from
unknown higher-order contributions,are parameterised in terms of such
parameters, e.g. by multiplying the prediction with a "fudge factor".

In Bayesian statistics, the uncertainties of the parameters can be quantified
in terms of a (prior) probability distribution function (PDF). In frequentist
statistics, this is not the case; nevertheless, one can view a constraint on
a parameter as an "auxiliary measurement" of the parameter, which again has
the form of a probability distribution. Since the statistical interpretation
occurs at a later step, no distinction between these two cases is made at the
fundamental level in flavio.

The connection between parameters and PDFs (sticking to the Bayesian wording
from now on) is made through the `flavio.classes.ParameterConstraints` class.
`flavio.default_parameters` is a predefined instance of this class containing
the default constraints for all parameters
(see also [Modifying defaults](https://flav-io.github.io/docs/customize.html)).

In addition to parameters, also measurements have uncertainties and are thus
associated with PDFs. The `flavio.classes.Measurement` class derives from the
same parent as `ParameterConstraints` and is very similar. The main difference
is that, while `ParameterConstraints` contains constraints on *all* parameters,
`Measurement` typically only contains a constraint on measurements of one or
a few observables (e.g. from a single experimental analysis) of a decay channel.
The predefined measurements are all read from the file
[measurements.yml](https://github.com/flav-io/flavio/blob/master/flavio/data/measurements.yml).

## Using YAML to define constraints

YAML files can be used to set the constraints on both parameters and
measurements. Consult the following files,

- [measurements.yml](https://github.com/flav-io/flavio/blob/master/flavio/data/measurements.yml),
- [parameters_uncorrelated.yml](https://github.com/flav-io/flavio/blob/master/flavio/data/parameters_uncorrelated.yml)
- [parameters_correlated.yml](https://github.com/flav-io/flavio/blob/master/flavio/data/parameters_correlated.yml)

containing the default constraints, for examples. The following examples show
in which format the constraints can be written for different choices of
PDFs.


### Symmetric and asymmetric univariate Gaussian constraints

Usual, symmetric Gaussian constraints can simply be written as (showing
several equivalent possibilities)

{% highlight python %}
'170.2 ± 0.3'
'(1.702 ± 0.003) 1e2'
'170.2 +- 0.3'
'170.2(3)'
{% endhighlight %}

An asymmetric constraint (defined as a continuous PDF made of two half-Gaussians)
can be written as
{% highlight python %}
'170.2 + 0.3 - 0.2'
{% endhighlight %}

When several uncertainties are given, e.g.
{% highlight python %}
'170.2 ± 0.1 ± 1.2 + 0.3 - 0.2'
{% endhighlight %}
the individual PDFs are convoluted numerically to obtain a combined PDF.

For all distributions, there is an additional low-level interface that can be
used instead:
{% highlight yaml %}
- distribution: normal
  central_value: 170.2
  standard_deviation: 0.1
- distribution: normal
  central_value: 170.2
  standard_deviation: 1.2
- distribution: asymmetric_normal
  central_value: 170.2
  right_deviation: 0.3
  left_deviation: 0.2
{% endhighlight %}
is equivalent to the previous constraint above. This method is useful particularly
for less common PDFs that cannot be accessed by shorthand notation.
See the
[API docs](https://flav-io.github.io/apidoc/flavio/statistics/probability.m.html)
for details on the available distributions.

### Uniform constraints

A uniform distribution, i.e. a fixed probability within a range and zero
probability outside, can be specified by giving the range boundaries in
angle brackets, e.g. (equivalently)

{% highlight python %}
'[0.01, 0.03]'
'[1, 3] e-2'
{% endhighlight %}

### Gaussian upper limits

For positive quantities that are not yet measured, but there exists an upper
bound, you can use a half-Gaussian with mode at 0 by specifying, e.g.

{% highlight python %}
'< 3e-9 @95% CL'
{% endhighlight %}

where the standard deviation is derived automatically by requiring the
cumulative probability below this limit to be, in this case, 0.95. Arbitrary
percentages in the open interval (0, 100) are allowed.

### Gamma upper limits

For upper limits on positive quantities that arise from low-statistics counting
experiments, a Gamma distribution is more appropriate than a normal
distribution. Assuming a counting experiment recorded 10 events in total, while
7 background events had been expected, and the experiment quotes an upper limit
of $3\times 10^{-9}$ with 95% confidence level on the quantity of interest,
which is proportional to the count of signal events
(e.g. a signal rate), then the constraint can be
specified (using the low-level interface) as

{% highlight yaml %}
- distribution: gamma_upper_limit
  counts_total: 10
  counts_background: 7
  limit: 3e-9
  confidence_level: 0.95
{% endhighlight %}

If the number of expected background events is itself uncertain, the
appropriate distribution would be a Gamma distribution convolved with
a normal distribution for the background uncertainty. This can be
used with, e.g.,

{% highlight yaml %}
- distribution: general_gamma_upper_limit
  counts_total: 10
  counts_background: 7
  limit: 3e-9
  confidence_level: 0.95
  background_variance: 2
{% endhighlight %}

corresponding to $7\pm2$ expected background events.

### Arbitrary numerical univariate constraints

Univariate constraints can also be defined by directly specifying the values of the PDF at a set of points.
In this way, arbitrary probability distributions can be used.
In YAML, the form is

{% highlight yaml %}
- distribution: numerical
  x: [-5, -4.95, ..., 0, ..., 4.95, 5]
  y: [-1.49e-6, 1.91e-6,... , 0.399, 1.91e-6, -1.49e-6]
{% endhighlight %}

where `y` is the value of the PDF with arbitrary normalisation.
There are two important caveats when using numerical distributions:

- The number of points should not be too small as the PDF is interpolated only
  linearly between them.
- The PDF is assumed to be zero outside of the range provided, so the range
  must be large enough, including possible tails.


### Multivariate Gaussian constraint

The easiest way to include a multivariate Gaussian constraint differs for parameters and measurements.

- For parameters, the central values, standard deviations and covariance matrices can be specified in the file
[parameters_correlated.yml](https://github.com/flav-io/flavio/blob/master/flavio/data/parameters_correlated.yml)
- For measurements, they can be specified directly
in the file
[measurements.yml](https://github.com/flav-io/flavio/blob/master/flavio/data/measurements.yml)

### Multivariate numerical constraint

Just as in the univariate case, also multivariate constraints can be defined
by directly specifying the value of the PDF on a grid of points. This works
for arbitrary dimensions.
In YAML, a two-dimensional example would be

{% highlight yaml %}
- distribution: numerical
  xi: [[-5, -4.95, ..., 0, ..., 4.95, 5],
       [-5, -4.95, ..., 0, ..., 4.95, 5]]
  y: [[ 2.21033492e-12,   2.83458077e-12,  ...],
      ...,
      [...,   2.83458077e-12,   2.21033492e-12 ]]
{% endhighlight %}

The same caveats as in the univariate case apply.
