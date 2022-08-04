---
layout: default
title: Interfacing with other codes
---

# Interfacing with other codes

flavio is specialized on computing flavour observables given new physics
contributions to the Wilson coefficients. In addition to model-independent
analyses, this functionality can also be used for studying specific new physics
models when interfaced with tools that compute these Wilson coefficients.

## WCxf interface

The universal interface to use codes that produce numerical values for the Wilson coefficients is the [Wilson coefficient exchange format](https://wcxf.github.io), which is supported by [various public codes](https://wcxf.github.io/codes.html).

The easiest way to use WCxf together with flavio is to load a WCxf file into an instance of `wilson.Wilson` with the wilson package, as described in the [discussion of new physics contributions](np.html). Assuming the WCxf file is named `my_wc.json`, all it takes is

{% highlight python %}
from wilson import Wilson
with open('my_wc.json', 'r') as f:
    my_w = Wilson.load_wc(f)
{% endhighlight %}

Now you can use this Wilson instance to compute anything you like,
e.g.

{% highlight python %}
flavio.np_prediction('BR(Bs->mumu)', my_w)
{% endhighlight %}

## FlavorKit interface

This interface was removed in favour of WCxf in flavio v1.0 due to unsolved issues ([see e.g. here](https://github.com/flav-io/flavio/pull/36)).