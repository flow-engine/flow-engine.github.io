---
layout: default
title: Observables - $e^+e^-$ scattering - $e^+e^-\to VV$
---

# Observables / $e^+e^-$ scattering / $e^+e^-\to VV$



The tables below have been generated automatically from the observables currently
implemented in flavio. The first column is the string name that must  be used
when calling functions such as `flavio.sm_prediction`. The last column lists
the arguments the observable depends on (which can also be empty in case of
a scalar observable).



{::options toc_levels="2" /}

* TOC
{:toc}

## $e^+e^- \to W^+W^-$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<dR/dtheta>(ee->WW)` | $\left\langle\frac{dR}{d\theta}\right\rangle(e^+e^- \to W^+W^-)$ | Differential cross section of $e^+e^- \to W^+W^-$ at energy $E$ binned in angle $\theta$ normalized to the SM | `E`, `thetamin`, `thetamax` |
| `R(ee->WW)` | $R(e^+e^- \to W^+W^-)$ | Cross section of $e^+e^- \to W^+W^-$ at energy $E$ normalized to the SM | `E` |


