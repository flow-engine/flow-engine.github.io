---
layout: default
title: Adding a parameter
---

# Adding a new parameter

If you need to add a new [parameter](/docs/parameters.html), you can either
do so by explicitly instantiating the associated classes, or by appending
to the YAML files shipped with the code. The former makes sense if you
need the parameter only in your local script, while the latter is the
preferred method for contributing to the official repository.

## Using the YAML files

Parameters are created -- along with their names and description -- automatically
if they are present in the file
[parameters_metadata.yml](https://github.com/flav-io/flavio/blob/master/flavio/data/parameters_metadata.yml).
Entries have the form

{% highlight tex %}
my_parameter:
  tex: $m_\text{par}$
  description: Toy parameter with the TeX representation $m_\text{obs}$
{% endhighlight %}

Note the two spaces in front of the second and third line.

You should also add a default numerical value by appending to
[parameters_uncorrelated.yml](https://github.com/flav-io/flavio/blob/master/flavio/data/parameters_uncorrelated.yml),
for instance,

{% highlight tex %}
my_parameter: 0.123(45)
{% endhighlight %}

The right-hand side can be either just a number (for parameters without
uncertainty) or a central value with one or several uncertainties. For symmetric
Gaussian errors, the notations `0.123(45)`, `0.123 +- 0.045`, and `0.123 ± 0.045`
are equivalent.

## Manually adding parameters

The same effect as in the example above can be achieved programatically with
the following lines of code,

{% highlight python %}
from flavio.classes import Parameter

par = flavio.default_parameters # or any other instance of flavio.classes.ParameterConstraint

my_p = Parameter('my_parameter')
my_p.tex = r"$m_\text{par}$"
my_p.description = r"Toy parameter with the TeX representation $m_\text{obs}$"

par.set_constraint('my_parameter', '0.123(45)')
{% endhighlight %}
