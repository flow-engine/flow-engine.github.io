---
layout: default
title: Adding an observable
---

# Adding a new observable

An observable is an experimentally measurable and theoretically computable
quantity that can optionally depend on one or more parameters (e.g. kinematic
quantities like $q^2$). Defining a new observable in flavio requires

- defining a function that returns the theory prediction as a function of parameters and
Wilson coefficients
- creating an instance of `Observable` (naming the observable) and
`Prediction` (linking the name to the funtion.)

## Toy example

For illustration, imagine we want to define an observable that just coincides
with the $B^0$ meson mass (which is set by the [parameter](/docs/parameters.html)
`m_B0`).

{% highlight python %}
from flavio.classes import Observable, Prediction

def my_fct(wc_obj, par):
    return par['m_B0']

Observable('m_B0-obs')
Prediction('m_B0-obs', my_fct)
{% endhighlight %}

where `m_B0-obs` is the string name we gave to the observable.
Note how the function always has at least two arguments: the first is an instance
of `flavio.WilsonCoefficients`, the second a parameter dictionary. Of course
this example is not very meaningful.
In practice, the function will contain all the (possibly complicated)
physics and might be split to a separate file (or several files).

## Adding metadata

While the code will work without it, metadata like a TeX name and description
should be added to ease documentation. Extending the toy example above, this
could be done via

{% highlight python %}
my_obs = Observable('m_B0-obs')
my_obs.tex = r"$m_{B^0}$"
my_obs.description = r"Mass of the $B^0$ meson."
{% endhighlight %}

Note that when using TeX code in strings, you should enclose the string in
`r"..."`, so backslashes and other characters are interpreted literally and
not as escape characters.

## Observables depending on arguments

When the observable depends on arguments (rather than being just a single number),
these arguments must appear in the prediction function and they have to be
passed to the observable instance. A toy example with an observable depending
on the arguments `a` and `b`:

{% highlight python %}
def my_fct(wc_obj, par, a, b):
    ...
    return ...

Observable(name='my_observable', arguments=['a', 'b'])
Prediction('my_observable', my_fct)
{% endhighlight %}
