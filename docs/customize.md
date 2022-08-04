---
layout: default
title: Modifying defaults
---

# Modifying default settings

As a user, you can easily

- change the default values of parameters and their uncertainties,
- choose between different parametrizations of various effects.


## Understanding parameters & constraints

In flavio, all numerical quantities a theory prediction for an observable depends
on are called *parameters*. Every parameter is typically subject to a *constraint*,
i.e. a numerical value with an uncertainty that can stem from an experimental
measurement or theoretical considerations.
The simplest example is a mass: the
parameter `m_t` corresponds to the top quark pole mass and by default is subject
to the constraint $173.21\pm0.87$ GeV. A constraint can also apply to several
parameters, to account for *correlations*. See a
[list of all parameters defined](parameters.html)
in the code.
Note that all theory uncertainties are derived from uncertainties of these parameters.
This means that also higher order effects have to parametrized by parameters.


When loading flavio, a set of default parameter constraints is loaded.
All masses and widths are taken [from the PDG](http://pdg.lbl.gov/); for
some explanation of other parameter choices [see here](physics.html).

The default parameter constraints are taken from the following data files:

- for uncorrelated parameters,
`parameters_uncorrelated.yml`, [view on Github](https://github.com/flav-io/flavio/blob/master/flavio/data/parameters_uncorrelated.yml)
- for uncorrelated parameters,
`parameters_correlated.yml`, [view on Github](https://github.com/flav-io/flavio/blob/master/flavio/data/parameters_correlated.yml)

## Changing default values


There are two options.

In an interactive session or at the beginning of a script, you can directly
overwrite the default parameter constraints by running, for instance,

{% highlight python %}
flavio.default_parameters.set_constraint('m_t', '171.5(1.0)')
{% endhighlight %}

The first argument is always the name of [an existing parameter](parameters.html),
while the second argument is the constraint in the form of a string.
Instead of the well-known bracket notation where the uncertainty refers to the
last digit (e.g. `'171.50(3)'` for a ridiculously small error), you can also use a $\pm$
notation, e.g. `'171.5 ± 1.0'`. If you just specify a number, it will be treated
as exact, i.e. without uncertainty.

The second option is to copy the YAML files linked above, modify them at will,
and loading them back with

{% highlight python %}
flavio.parameters.read_file_values('my_parameters.yml', flavio.default_parameters)
{% endhighlight %}

You can also just copy a subset of the default parameter file and only the values
contained will be overwritten.


## Changing the configuration

Some configuration options, in particular the default choices for parametrizations
of various physical quantities like hadronic form factors, can be modified
by modifying the configuration dictionary. The default options are read from
the data file `config.yml`
([view on Github](https://github.com/flav-io/flavio/blob/master/flavio/data/config.yml)).

There are two ways to modify them.

Either you directly change the dictionary `flavio.config` by running, e.g.,

{% highlight python %}
flavio.config['implementation']['CKM matrix'] = 'Wolfenstein'
{% endhighlight %}

or you copy the YAML file linked above (or a subset of it), modify it at will,
and load it back with

{% highlight python %}
import yaml

with open('my_config.yml', 'r') as f:
  flavio.config.update(yaml.load(f))
{% endhighlight %}
