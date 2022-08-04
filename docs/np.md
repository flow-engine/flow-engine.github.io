---
layout: default
title: New Physics
---

# Predictions in the presence of new physics

flavio does not implement any specific new physics (NP) models. Rather, it allows
you to specify NP contributions in the form of Wilson coefficients of dimension-6
operators in an effective field theory below the $W$ mass.

Starting from version 0.28, the running and matching of Wilson coefficients is handled by the [wilson](https://wilson-eft.github.io) package, which is built on the [Wilson coefficient exchange format](https://wcxf.github.io). *(Note: the pre-wilson version of this documentation can be found [here](https://github.com/flav-io/flav-io.github.io/blob/d885a2c972dae31d0b2417a1c86b4938679a9c1b/docs/np.md).)*

Thanks to wilson, flavio supports dimension-6 Wilson coefficients in the weak effective theory (WET) or the Standard Model Effective Field Theory (SMEFT) at an arbitrary scale. The nececssary RG evolution and matching to the appropriate low-energy EFT will be performed automatically.

A new "parameter point" in the space of the EFT maps to an instance of `wilson.Wilson`.  By default, all Wilson coefficients vanish. Note that these Wilson coefficients are defined to be *the new physics contributions only*, so if they vanish it means we are in the Standard Model.
If you want to go beyond the SM, you need to specify the values of the Wilson
coefficients at some scale.
For instance, to get a universal NP contribution to
$B^0$ and $B_s$ mixing
via the operators $(\bar q_R\gamma^\mu b_R)^2$ with $q=d,s$, you can use

{% highlight python %}
from wilson import Wilson
w = Wilson({ 'CVRR_bdbd': 1e-10, 'CVRR_bsbs': 1e-10 }, scale=160, eft='WET', basis='flavio')
{% endhighlight %}

where we have specified the EFT to be WET and the basis to be flavio's [default operator basis](operators.html).

Having defined your NP scenario in this way, you can now get the central
value of your favourite observable by calling the function `np_prediction`,
e.g.

{% highlight python %}
flavio.np_prediction('DeltaM_s', w)
{% endhighlight %}

Where the observable is referred to by its [name](observables.html) as usual.
