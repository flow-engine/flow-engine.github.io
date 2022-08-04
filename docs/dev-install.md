---
layout: default
title: Development installation
---

# Development installation

If you plan to modify flavio, an installation method slightly different from
the [simplest one](installation.html) is advisable.

This assumes you already have all dependencies (in particular `scipy`,
`numpy` and `pip`) as well as `git` installed.

## Step 1: clone the repository

To get the most recent version of the code and be able to keep it up-to-date,
clone the repository with `git` using

{% highlight bash %}
git clone https://github.com/flav-io/flavio.git
{% endhighlight %}


## Step 2: install flavio

Enter the directory created by `git`

{% highlight bash %}
cd flavio
{% endhighlight %}

and install the package with this command

{% highlight bash %}
python3 -m pip install -e .[plotting,testing] --user
{% endhighlight %}

The `-e` switch means that the package is installed in "development mode", so
you can make modifications to the downloaded code and don't have to reinstall.
This will install also all the extra dependencies needed for plotting, sampling,
and to run the unit tests.

## Step 3: run unit tests

To check whether the package has been installed correctly, you can run the unit
tests using `nose`.
Just go to the root directory of the package and run

{% highlight bash %}
nosetests3
{% endhighlight %}

(or just `nosetests`, depending on your system. If none of them work, try `python3 -m nose`).
The output should look something like this:
{% highlight bash %}
......................................................................
......................................................................
......................................................................
...................................................
----------------------------------------------------------------------
Ran 261 tests in 31.584s

OK
{% endhighlight %}

## Upgrading

To upgrade your development installation, you simple have to `git pull`.
The package is automatically kept up to date thanks to the `-e` flag used above.

However, if dependencies change, you might have to repeat the above installation command
with the `--upgrade` flag added to make sure the updated dependencies are installed.