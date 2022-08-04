---
layout: default
title: Observables - $c$ hadron decays - Semi-leptonic tree-level decays
---

# Observables / $c$ hadron decays / Semi-leptonic tree-level decays



The tables below have been generated automatically from the observables currently
implemented in flavio. The first column is the string name that must  be used
when calling functions such as `flavio.sm_prediction`. The last column lists
the arguments the observable depends on (which can also be empty in case of
a scalar observable).



{::options toc_levels="2" /}

* TOC
{:toc}

## $D\to P\ell\nu$

### $D^+\to K^0\ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D+->Klnu)` | $\langle\text{BR}\rangle(D^+\to K^0\ell^+\nu_\ell)$ | Binned branching ratio of $D^+\to K^0\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `BR(D+->Klnu)` | $\text{BR}(D^+\to K^0\ell^+\nu_\ell)$ | Total branching ratio of $D^+\to K^0\ell^+\nu_\ell$ |  |
| `dBR/dq2(D+->Klnu)` | $\frac{d\text{BR}}{dq^2}(D^+\to K^0\ell^+\nu_\ell)$ | Differential branching ratio of $D^+\to K^0\ell^+\nu_\ell$ | `q2` |


### $D^+\to K^0\mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D+->Kmunu)` | $\langle\text{BR}\rangle(D^+\to K^0\mu^+\nu_\mu)$ | Binned branching ratio of $D^+\to K^0\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(D->Klnu)` | $\langle R_{\mu e} \rangle(D\to K\ell^+\nu)$ | Ratio of partial branching ratios of $D\to K\mu^+ \nu_\mu$ and $D\to Ke^+ \nu_e$ | `q2min`, `q2max` |
| `BR(D+->Kmunu)` | $\text{BR}(D^+\to K^0\mu^+\nu_\mu)$ | Total branching ratio of $D^+\to K^0\mu^+\nu_\mu$ |  |
| `Rmue(D->Klnu)` | $R_{\mu e}(D\to K\ell^+\nu)$ | Ratio of total branching ratios of $D\to K\mu^+ \nu_\mu$ and $D\to Ke^+ \nu_e$ |  |
| `dBR/dq2(D+->Kmunu)` | $\frac{d\text{BR}}{dq^2}(D^+\to K^0\mu^+\nu_\mu)$ | Differential branching ratio of $D^+\to K^0\mu^+\nu_\mu$ | `q2` |


### $D^+\to K^0e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D+->Kenu)` | $\langle\text{BR}\rangle(D^+\to K^0e^+\nu_e)$ | Binned branching ratio of $D^+\to K^0e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(D->Klnu)` | $\langle R_{\mu e} \rangle(D\to K\ell^+\nu)$ | Ratio of partial branching ratios of $D\to K\mu^+ \nu_\mu$ and $D\to Ke^+ \nu_e$ | `q2min`, `q2max` |
| `BR(D+->Kenu)` | $\text{BR}(D^+\to K^0e^+\nu_e)$ | Total branching ratio of $D^+\to K^0e^+\nu_e$ |  |
| `Rmue(D->Klnu)` | $R_{\mu e}(D\to K\ell^+\nu)$ | Ratio of total branching ratios of $D\to K\mu^+ \nu_\mu$ and $D\to Ke^+ \nu_e$ |  |
| `dBR/dq2(D+->Kenu)` | $\frac{d\text{BR}}{dq^2}(D^+\to K^0e^+\nu_e)$ | Differential branching ratio of $D^+\to K^0e^+\nu_e$ | `q2` |


### $D^+\to \pi^0\ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D+->pilnu)` | $\langle\text{BR}\rangle(D^+\to \pi^0\ell^+\nu_\ell)$ | Binned branching ratio of $D^+\to \pi^0\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `BR(D+->pilnu)` | $\text{BR}(D^+\to \pi^0\ell^+\nu_\ell)$ | Total branching ratio of $D^+\to \pi^0\ell^+\nu_\ell$ |  |
| `dBR/dq2(D+->pilnu)` | $\frac{d\text{BR}}{dq^2}(D^+\to \pi^0\ell^+\nu_\ell)$ | Differential branching ratio of $D^+\to \pi^0\ell^+\nu_\ell$ | `q2` |


### $D^+\to \pi^0\mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D+->pimunu)` | $\langle\text{BR}\rangle(D^+\to \pi^0\mu^+\nu_\mu)$ | Binned branching ratio of $D^+\to \pi^0\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(D->pilnu)` | $\langle R_{\mu e} \rangle(D\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $D\to \pi \mu^+ \nu_\mu$ and $D\to \pi e^+ \nu_e$ | `q2min`, `q2max` |
| `BR(D+->pimunu)` | $\text{BR}(D^+\to \pi^0\mu^+\nu_\mu)$ | Total branching ratio of $D^+\to \pi^0\mu^+\nu_\mu$ |  |
| `Rmue(D->pilnu)` | $R_{\mu e}(D\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $D\to \pi \mu^+ \nu_\mu$ and $D\to \pi e^+ \nu_e$ |  |
| `dBR/dq2(D+->pimunu)` | $\frac{d\text{BR}}{dq^2}(D^+\to \pi^0\mu^+\nu_\mu)$ | Differential branching ratio of $D^+\to \pi^0\mu^+\nu_\mu$ | `q2` |


### $D^+\to \pi^0e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D+->pienu)` | $\langle\text{BR}\rangle(D^+\to \pi^0e^+\nu_e)$ | Binned branching ratio of $D^+\to \pi^0e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(D->pilnu)` | $\langle R_{\mu e} \rangle(D\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $D\to \pi \mu^+ \nu_\mu$ and $D\to \pi e^+ \nu_e$ | `q2min`, `q2max` |
| `BR(D+->pienu)` | $\text{BR}(D^+\to \pi^0e^+\nu_e)$ | Total branching ratio of $D^+\to \pi^0e^+\nu_e$ |  |
| `Rmue(D->pilnu)` | $R_{\mu e}(D\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $D\to \pi \mu^+ \nu_\mu$ and $D\to \pi e^+ \nu_e$ |  |
| `dBR/dq2(D+->pienu)` | $\frac{d\text{BR}}{dq^2}(D^+\to \pi^0e^+\nu_e)$ | Differential branching ratio of $D^+\to \pi^0e^+\nu_e$ | `q2` |


### $D^0\to K^- \ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D0->Klnu)` | $\langle\text{BR}\rangle(D^0\to K^- \ell^+\nu_\ell)$ | Binned branching ratio of $D^0\to K^- \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `BR(D0->Klnu)` | $\text{BR}(D^0\to K^- \ell^+\nu_\ell)$ | Total branching ratio of $D^0\to K^- \ell^+\nu_\ell$ |  |
| `dBR/dq2(D0->Klnu)` | $\frac{d\text{BR}}{dq^2}(D^0\to K^- \ell^+\nu_\ell)$ | Differential branching ratio of $D^0\to K^- \ell^+\nu_\ell$ | `q2` |


### $D^0\to K^- \mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D0->Kmunu)` | $\langle\text{BR}\rangle(D^0\to K^- \mu^+\nu_\mu)$ | Binned branching ratio of $D^0\to K^- \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(D->Klnu)` | $\langle R_{\mu e} \rangle(D\to K\ell^+\nu)$ | Ratio of partial branching ratios of $D\to K\mu^+ \nu_\mu$ and $D\to Ke^+ \nu_e$ | `q2min`, `q2max` |
| `BR(D0->Kmunu)` | $\text{BR}(D^0\to K^- \mu^+\nu_\mu)$ | Total branching ratio of $D^0\to K^- \mu^+\nu_\mu$ |  |
| `Rmue(D->Klnu)` | $R_{\mu e}(D\to K\ell^+\nu)$ | Ratio of total branching ratios of $D\to K\mu^+ \nu_\mu$ and $D\to Ke^+ \nu_e$ |  |
| `dBR/dq2(D0->Kmunu)` | $\frac{d\text{BR}}{dq^2}(D^0\to K^- \mu^+\nu_\mu)$ | Differential branching ratio of $D^0\to K^- \mu^+\nu_\mu$ | `q2` |


### $D^0\to K^- e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D0->Kenu)` | $\langle\text{BR}\rangle(D^0\to K^- e^+\nu_e)$ | Binned branching ratio of $D^0\to K^- e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(D->Klnu)` | $\langle R_{\mu e} \rangle(D\to K\ell^+\nu)$ | Ratio of partial branching ratios of $D\to K\mu^+ \nu_\mu$ and $D\to Ke^+ \nu_e$ | `q2min`, `q2max` |
| `BR(D0->Kenu)` | $\text{BR}(D^0\to K^- e^+\nu_e)$ | Total branching ratio of $D^0\to K^- e^+\nu_e$ |  |
| `Rmue(D->Klnu)` | $R_{\mu e}(D\to K\ell^+\nu)$ | Ratio of total branching ratios of $D\to K\mu^+ \nu_\mu$ and $D\to Ke^+ \nu_e$ |  |
| `dBR/dq2(D0->Kenu)` | $\frac{d\text{BR}}{dq^2}(D^0\to K^- e^+\nu_e)$ | Differential branching ratio of $D^0\to K^- e^+\nu_e$ | `q2` |


### $D^0\to \pi^- \ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D0->pilnu)` | $\langle\text{BR}\rangle(D^0\to \pi^- \ell^+\nu_\ell)$ | Binned branching ratio of $D^0\to \pi^- \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `BR(D0->pilnu)` | $\text{BR}(D^0\to \pi^- \ell^+\nu_\ell)$ | Total branching ratio of $D^0\to \pi^- \ell^+\nu_\ell$ |  |
| `dBR/dq2(D0->pilnu)` | $\frac{d\text{BR}}{dq^2}(D^0\to \pi^- \ell^+\nu_\ell)$ | Differential branching ratio of $D^0\to \pi^- \ell^+\nu_\ell$ | `q2` |


### $D^0\to \pi^- \mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D0->pimunu)` | $\langle\text{BR}\rangle(D^0\to \pi^- \mu^+\nu_\mu)$ | Binned branching ratio of $D^0\to \pi^- \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(D->pilnu)` | $\langle R_{\mu e} \rangle(D\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $D\to \pi \mu^+ \nu_\mu$ and $D\to \pi e^+ \nu_e$ | `q2min`, `q2max` |
| `BR(D0->pimunu)` | $\text{BR}(D^0\to \pi^- \mu^+\nu_\mu)$ | Total branching ratio of $D^0\to \pi^- \mu^+\nu_\mu$ |  |
| `Rmue(D->pilnu)` | $R_{\mu e}(D\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $D\to \pi \mu^+ \nu_\mu$ and $D\to \pi e^+ \nu_e$ |  |
| `dBR/dq2(D0->pimunu)` | $\frac{d\text{BR}}{dq^2}(D^0\to \pi^- \mu^+\nu_\mu)$ | Differential branching ratio of $D^0\to \pi^- \mu^+\nu_\mu$ | `q2` |


### $D^0\to \pi^- e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(D0->pienu)` | $\langle\text{BR}\rangle(D^0\to \pi^- e^+\nu_e)$ | Binned branching ratio of $D^0\to \pi^- e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(D->pilnu)` | $\langle R_{\mu e} \rangle(D\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $D\to \pi \mu^+ \nu_\mu$ and $D\to \pi e^+ \nu_e$ | `q2min`, `q2max` |
| `BR(D0->pienu)` | $\text{BR}(D^0\to \pi^- e^+\nu_e)$ | Total branching ratio of $D^0\to \pi^- e^+\nu_e$ |  |
| `Rmue(D->pilnu)` | $R_{\mu e}(D\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $D\to \pi \mu^+ \nu_\mu$ and $D\to \pi e^+ \nu_e$ |  |
| `dBR/dq2(D0->pienu)` | $\frac{d\text{BR}}{dq^2}(D^0\to \pi^- e^+\nu_e)$ | Differential branching ratio of $D^0\to \pi^- e^+\nu_e$ | `q2` |


