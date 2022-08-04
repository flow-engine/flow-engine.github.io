---
layout: default
title: Observables - $b$ hadron decays - Semi-leptonic tree-level decays
---

# Observables / $b$ hadron decays / Semi-leptonic tree-level decays



The tables below have been generated automatically from the observables currently
implemented in flavio. The first column is the string name that must  be used
when calling functions such as `flavio.sm_prediction`. The last column lists
the arguments the observable depends on (which can also be empty in case of
a scalar observable).



{::options toc_levels="2" /}

* TOC
{:toc}

## $B\to P\ell\nu$

### $B^+\to D^0\ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->Dlnu)` | $\langle\text{BR}\rangle(B^+\to D^0\ell^+\nu_\ell)$ | Binned branching ratio of $B^+\to D^0\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(B->Dlnu)` | $\langle R_{\tau \ell} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `BR(B+->Dlnu)` | $\text{BR}(B^+\to D^0\ell^+\nu_\ell)$ | Total branching ratio of $B^+\to D^0\ell^+\nu_\ell$ |  |
| `Rtaul(B->Dlnu)` | $R_{\tau \ell}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\ell^+ \nu_\ell$ |  |
| `dBR/dq2(B+->Dlnu)` | $\frac{d\text{BR}}{dq^2}(B^+\to D^0\ell^+\nu_\ell)$ | Differential branching ratio of $B^+\to D^0\ell^+\nu_\ell$ | `q2` |


### $B^+\to D^0\mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->Dmunu)` | $\langle\text{BR}\rangle(B^+\to D^0\mu^+\nu_\mu)$ | Binned branching ratio of $B^+\to D^0\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(B->Dlnu)` | $\langle R_{\mu e} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\mu^+ \nu_\mu$ and $B\to De^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(B->Dlnu)` | $\langle R_{\tau \mu} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `BR(B+->Dmunu)` | $\text{BR}(B^+\to D^0\mu^+\nu_\mu)$ | Total branching ratio of $B^+\to D^0\mu^+\nu_\mu$ |  |
| `Rmue(B->Dlnu)` | $R_{\mu e}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\mu^+ \nu_\mu$ and $B\to De^+ \nu_e$ |  |
| `Rtaumu(B->Dlnu)` | $R_{\tau \mu}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\mu^+ \nu_\mu$ |  |
| `dBR/dq2(B+->Dmunu)` | $\frac{d\text{BR}}{dq^2}(B^+\to D^0\mu^+\nu_\mu)$ | Differential branching ratio of $B^+\to D^0\mu^+\nu_\mu$ | `q2` |


### $B^+\to D^0\tau^+\nu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>/BR(B->Dtaunu)` | $\frac{\langle \text{BR} \rangle}{\text{BR}}(B\to D\tau^+\nu)$ | Relative partial branching ratio of $B\to D\tau^+\nu$ | `q2min`, `q2max` |


### $B^+\to D^0\tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->Dtaunu)` | $\langle\text{BR}\rangle(B^+\to D^0\tau^+\nu_\tau)$ | Binned branching ratio of $B^+\to D^0\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(B->Dlnu)` | $\langle R_{\tau \ell} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(B->Dlnu)` | $\langle R_{\tau \mu} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `BR(B+->Dtaunu)` | $\text{BR}(B^+\to D^0\tau^+\nu_\tau)$ | Total branching ratio of $B^+\to D^0\tau^+\nu_\tau$ |  |
| `Rtaul(B->Dlnu)` | $R_{\tau \ell}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\ell^+ \nu_\ell$ |  |
| `Rtaumu(B->Dlnu)` | $R_{\tau \mu}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\mu^+ \nu_\mu$ |  |
| `dBR/dq2(B+->Dtaunu)` | $\frac{d\text{BR}}{dq^2}(B^+\to D^0\tau^+\nu_\tau)$ | Differential branching ratio of $B^+\to D^0\tau^+\nu_\tau$ | `q2` |


### $B^+\to D^0e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->Denu)` | $\langle\text{BR}\rangle(B^+\to D^0e^+\nu_e)$ | Binned branching ratio of $B^+\to D^0e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(B->Dlnu)` | $\langle R_{\mu e} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\mu^+ \nu_\mu$ and $B\to De^+ \nu_e$ | `q2min`, `q2max` |
| `BR(B+->Denu)` | $\text{BR}(B^+\to D^0e^+\nu_e)$ | Total branching ratio of $B^+\to D^0e^+\nu_e$ |  |
| `Rmue(B->Dlnu)` | $R_{\mu e}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\mu^+ \nu_\mu$ and $B\to De^+ \nu_e$ |  |
| `dBR/dq2(B+->Denu)` | $\frac{d\text{BR}}{dq^2}(B^+\to D^0e^+\nu_e)$ | Differential branching ratio of $B^+\to D^0e^+\nu_e$ | `q2` |


### $B^+\to \pi^0\ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->pilnu)` | $\langle\text{BR}\rangle(B^+\to \pi^0\ell^+\nu_\ell)$ | Binned branching ratio of $B^+\to \pi^0\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(B->pilnu)` | $\langle R_{\tau \ell} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `BR(B+->pilnu)` | $\text{BR}(B^+\to \pi^0\ell^+\nu_\ell)$ | Total branching ratio of $B^+\to \pi^0\ell^+\nu_\ell$ |  |
| `Rtaul(B->pilnu)` | $R_{\tau \ell}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \ell^+ \nu_\ell$ |  |
| `dBR/dq2(B+->pilnu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \pi^0\ell^+\nu_\ell)$ | Differential branching ratio of $B^+\to \pi^0\ell^+\nu_\ell$ | `q2` |


### $B^+\to \pi^0\mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->pimunu)` | $\langle\text{BR}\rangle(B^+\to \pi^0\mu^+\nu_\mu)$ | Binned branching ratio of $B^+\to \pi^0\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(B->pilnu)` | $\langle R_{\mu e} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \mu^+ \nu_\mu$ and $B\to \pi e^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(B->pilnu)` | $\langle R_{\tau \mu} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `BR(B+->pimunu)` | $\text{BR}(B^+\to \pi^0\mu^+\nu_\mu)$ | Total branching ratio of $B^+\to \pi^0\mu^+\nu_\mu$ |  |
| `Rmue(B->pilnu)` | $R_{\mu e}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \mu^+ \nu_\mu$ and $B\to \pi e^+ \nu_e$ |  |
| `Rtaumu(B->pilnu)` | $R_{\tau \mu}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \mu^+ \nu_\mu$ |  |
| `dBR/dq2(B+->pimunu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \pi^0\mu^+\nu_\mu)$ | Differential branching ratio of $B^+\to \pi^0\mu^+\nu_\mu$ | `q2` |


### $B^+\to \pi^0\tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->pitaunu)` | $\langle\text{BR}\rangle(B^+\to \pi^0\tau^+\nu_\tau)$ | Binned branching ratio of $B^+\to \pi^0\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(B->pilnu)` | $\langle R_{\tau \ell} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(B->pilnu)` | $\langle R_{\tau \mu} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `BR(B+->pitaunu)` | $\text{BR}(B^+\to \pi^0\tau^+\nu_\tau)$ | Total branching ratio of $B^+\to \pi^0\tau^+\nu_\tau$ |  |
| `Rtaul(B->pilnu)` | $R_{\tau \ell}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \ell^+ \nu_\ell$ |  |
| `Rtaumu(B->pilnu)` | $R_{\tau \mu}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \mu^+ \nu_\mu$ |  |
| `dBR/dq2(B+->pitaunu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \pi^0\tau^+\nu_\tau)$ | Differential branching ratio of $B^+\to \pi^0\tau^+\nu_\tau$ | `q2` |


### $B^+\to \pi^0e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->pienu)` | $\langle\text{BR}\rangle(B^+\to \pi^0e^+\nu_e)$ | Binned branching ratio of $B^+\to \pi^0e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(B->pilnu)` | $\langle R_{\mu e} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \mu^+ \nu_\mu$ and $B\to \pi e^+ \nu_e$ | `q2min`, `q2max` |
| `BR(B+->pienu)` | $\text{BR}(B^+\to \pi^0e^+\nu_e)$ | Total branching ratio of $B^+\to \pi^0e^+\nu_e$ |  |
| `Rmue(B->pilnu)` | $R_{\mu e}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \mu^+ \nu_\mu$ and $B\to \pi e^+ \nu_e$ |  |
| `dBR/dq2(B+->pienu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \pi^0e^+\nu_e)$ | Differential branching ratio of $B^+\to \pi^0e^+\nu_e$ | `q2` |


### $B^0\to D^- \ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->Dlnu)` | $\langle\text{BR}\rangle(B^0\to D^- \ell^+\nu_\ell)$ | Binned branching ratio of $B^0\to D^- \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(B->Dlnu)` | $\langle R_{\tau \ell} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `BR(B0->Dlnu)` | $\text{BR}(B^0\to D^- \ell^+\nu_\ell)$ | Total branching ratio of $B^0\to D^- \ell^+\nu_\ell$ |  |
| `Rtaul(B->Dlnu)` | $R_{\tau \ell}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\ell^+ \nu_\ell$ |  |
| `dBR/dq2(B0->Dlnu)` | $\frac{d\text{BR}}{dq^2}(B^0\to D^- \ell^+\nu_\ell)$ | Differential branching ratio of $B^0\to D^- \ell^+\nu_\ell$ | `q2` |


### $B^0\to D^- \mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->Dmunu)` | $\langle\text{BR}\rangle(B^0\to D^- \mu^+\nu_\mu)$ | Binned branching ratio of $B^0\to D^- \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(B->Dlnu)` | $\langle R_{\mu e} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\mu^+ \nu_\mu$ and $B\to De^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(B->Dlnu)` | $\langle R_{\tau \mu} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `BR(B0->Dmunu)` | $\text{BR}(B^0\to D^- \mu^+\nu_\mu)$ | Total branching ratio of $B^0\to D^- \mu^+\nu_\mu$ |  |
| `Rmue(B->Dlnu)` | $R_{\mu e}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\mu^+ \nu_\mu$ and $B\to De^+ \nu_e$ |  |
| `Rtaumu(B->Dlnu)` | $R_{\tau \mu}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\mu^+ \nu_\mu$ |  |
| `dBR/dq2(B0->Dmunu)` | $\frac{d\text{BR}}{dq^2}(B^0\to D^- \mu^+\nu_\mu)$ | Differential branching ratio of $B^0\to D^- \mu^+\nu_\mu$ | `q2` |


### $B^0\to D^- \tau^+\nu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>/BR(B->Dtaunu)` | $\frac{\langle \text{BR} \rangle}{\text{BR}}(B\to D\tau^+\nu)$ | Relative partial branching ratio of $B\to D\tau^+\nu$ | `q2min`, `q2max` |


### $B^0\to D^- \tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->Dtaunu)` | $\langle\text{BR}\rangle(B^0\to D^- \tau^+\nu_\tau)$ | Binned branching ratio of $B^0\to D^- \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(B->Dlnu)` | $\langle R_{\tau \ell} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(B->Dlnu)` | $\langle R_{\tau \mu} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `BR(B0->Dtaunu)` | $\text{BR}(B^0\to D^- \tau^+\nu_\tau)$ | Total branching ratio of $B^0\to D^- \tau^+\nu_\tau$ |  |
| `Rtaul(B->Dlnu)` | $R_{\tau \ell}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\ell^+ \nu_\ell$ |  |
| `Rtaumu(B->Dlnu)` | $R_{\tau \mu}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\tau^+ \nu_\tau$ and $B\to D\mu^+ \nu_\mu$ |  |
| `dBR/dq2(B0->Dtaunu)` | $\frac{d\text{BR}}{dq^2}(B^0\to D^- \tau^+\nu_\tau)$ | Differential branching ratio of $B^0\to D^- \tau^+\nu_\tau$ | `q2` |


### $B^0\to D^- e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->Denu)` | $\langle\text{BR}\rangle(B^0\to D^- e^+\nu_e)$ | Binned branching ratio of $B^0\to D^- e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(B->Dlnu)` | $\langle R_{\mu e} \rangle(B\to D\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D\mu^+ \nu_\mu$ and $B\to De^+ \nu_e$ | `q2min`, `q2max` |
| `BR(B0->Denu)` | $\text{BR}(B^0\to D^- e^+\nu_e)$ | Total branching ratio of $B^0\to D^- e^+\nu_e$ |  |
| `Rmue(B->Dlnu)` | $R_{\mu e}(B\to D\ell^+\nu)$ | Ratio of total branching ratios of $B\to D\mu^+ \nu_\mu$ and $B\to De^+ \nu_e$ |  |
| `dBR/dq2(B0->Denu)` | $\frac{d\text{BR}}{dq^2}(B^0\to D^- e^+\nu_e)$ | Differential branching ratio of $B^0\to D^- e^+\nu_e$ | `q2` |


### $B^0\to \pi^- \ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->pilnu)` | $\langle\text{BR}\rangle(B^0\to \pi^- \ell^+\nu_\ell)$ | Binned branching ratio of $B^0\to \pi^- \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(B->pilnu)` | $\langle R_{\tau \ell} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `BR(B0->pilnu)` | $\text{BR}(B^0\to \pi^- \ell^+\nu_\ell)$ | Total branching ratio of $B^0\to \pi^- \ell^+\nu_\ell$ |  |
| `Rtaul(B->pilnu)` | $R_{\tau \ell}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \ell^+ \nu_\ell$ |  |
| `dBR/dq2(B0->pilnu)` | $\frac{d\text{BR}}{dq^2}(B^0\to \pi^- \ell^+\nu_\ell)$ | Differential branching ratio of $B^0\to \pi^- \ell^+\nu_\ell$ | `q2` |


### $B^0\to \pi^- \mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->pimunu)` | $\langle\text{BR}\rangle(B^0\to \pi^- \mu^+\nu_\mu)$ | Binned branching ratio of $B^0\to \pi^- \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(B->pilnu)` | $\langle R_{\mu e} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \mu^+ \nu_\mu$ and $B\to \pi e^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(B->pilnu)` | $\langle R_{\tau \mu} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `BR(B0->pimunu)` | $\text{BR}(B^0\to \pi^- \mu^+\nu_\mu)$ | Total branching ratio of $B^0\to \pi^- \mu^+\nu_\mu$ |  |
| `Rmue(B->pilnu)` | $R_{\mu e}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \mu^+ \nu_\mu$ and $B\to \pi e^+ \nu_e$ |  |
| `Rtaumu(B->pilnu)` | $R_{\tau \mu}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \mu^+ \nu_\mu$ |  |
| `dBR/dq2(B0->pimunu)` | $\frac{d\text{BR}}{dq^2}(B^0\to \pi^- \mu^+\nu_\mu)$ | Differential branching ratio of $B^0\to \pi^- \mu^+\nu_\mu$ | `q2` |


### $B^0\to \pi^- \tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->pitaunu)` | $\langle\text{BR}\rangle(B^0\to \pi^- \tau^+\nu_\tau)$ | Binned branching ratio of $B^0\to \pi^- \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(B->pilnu)` | $\langle R_{\tau \ell} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(B->pilnu)` | $\langle R_{\tau \mu} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `BR(B0->pitaunu)` | $\text{BR}(B^0\to \pi^- \tau^+\nu_\tau)$ | Total branching ratio of $B^0\to \pi^- \tau^+\nu_\tau$ |  |
| `Rtaul(B->pilnu)` | $R_{\tau \ell}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \ell^+ \nu_\ell$ |  |
| `Rtaumu(B->pilnu)` | $R_{\tau \mu}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \tau^+ \nu_\tau$ and $B\to \pi \mu^+ \nu_\mu$ |  |
| `dBR/dq2(B0->pitaunu)` | $\frac{d\text{BR}}{dq^2}(B^0\to \pi^- \tau^+\nu_\tau)$ | Differential branching ratio of $B^0\to \pi^- \tau^+\nu_\tau$ | `q2` |


### $B^0\to \pi^- e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->pienu)` | $\langle\text{BR}\rangle(B^0\to \pi^- e^+\nu_e)$ | Binned branching ratio of $B^0\to \pi^- e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(B->pilnu)` | $\langle R_{\mu e} \rangle(B\to \pi \ell^+\nu)$ | Ratio of partial branching ratios of $B\to \pi \mu^+ \nu_\mu$ and $B\to \pi e^+ \nu_e$ | `q2min`, `q2max` |
| `BR(B0->pienu)` | $\text{BR}(B^0\to \pi^- e^+\nu_e)$ | Total branching ratio of $B^0\to \pi^- e^+\nu_e$ |  |
| `Rmue(B->pilnu)` | $R_{\mu e}(B\to \pi \ell^+\nu)$ | Ratio of total branching ratios of $B\to \pi \mu^+ \nu_\mu$ and $B\to \pi e^+ \nu_e$ |  |
| `dBR/dq2(B0->pienu)` | $\frac{d\text{BR}}{dq^2}(B^0\to \pi^- e^+\nu_e)$ | Differential branching ratio of $B^0\to \pi^- e^+\nu_e$ | `q2` |


## $B\to V\ell\nu$

### $B^+\to D^{\ast 0}\ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->D*lnu)` | $\langle\text{BR}\rangle(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | $q^2$-binned branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->D*lnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | $\cos\theta_V$-binned branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->D*lnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | $\cos\theta_l$-binned branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->D*lnu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | $\phi$-binned branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `phimin`, `phimax` |
| `<BR_L>(B+->D*lnu)` | $\langle\text{BR}_L\rangle(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Binned longitudinal branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR_T>(B+->D*lnu)` | $\langle\text{BR}_T\rangle(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Binned transverse branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<FL>(B+->D*lnu)` | $\langle F_L\rangle(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(B->D*lnu)` | $\langle R_{\tau \ell} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `AFBtot(B+->D*lnu)` | $A_\text{FB}(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Total forward-backward asymmetry branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ |  |
| `BR(B+->D*lnu)` | $\text{BR}(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Total branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ |  |
| `BR_L(B+->D*lnu)` | $\text{BR}_L(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Total longitudinal branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ |  |
| `BR_T(B+->D*lnu)` | $\text{BR}_T(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Total transverse branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ |  |
| `FL(B+->D*lnu)` | $F_L(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `q2` |
| `FLtot(B+->D*lnu)` | $F_L(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ |  |
| `FLttot(B+->D*lnu)` | $\widetilde{F}_L(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ |  |
| `I3tot(B+->D*lnu)` | $I_3(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ |  |
| `Rtaul(B->D*lnu)` | $R_{\tau \ell}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\ell^+ \nu_\ell$ |  |
| `dBR/dcV(B+->D*lnu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `cV` |
| `dBR/dcl(B+->D*lnu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | $\cos\theta_l$-differential branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `cl` |
| `dBR/dphi(B+->D*lnu)` | $\frac{d\text{BR}}{d\phi}(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | $\phi$-differential branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `phi` |
| `dBR/dq2(B+->D*lnu)` | $\frac{d\text{BR}}{dq^2}(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | $q^2$-differential branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `q2` |
| `dBR_L/dq2(B+->D*lnu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Differential longitudinal branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `q2` |
| `dBR_T/dq2(B+->D*lnu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to D^{\ast 0}\ell^+\nu_\ell)$ | Differential transverse branching ratio of $B^+\to D^{\ast 0}\ell^+\nu_\ell$ | `q2` |


### $B^+\to D^{\ast 0}\mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->D*munu)` | $\langle\text{BR}\rangle(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | $q^2$-binned branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->D*munu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | $\cos\theta_V$-binned branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->D*munu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | $\cos\theta_l$-binned branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->D*munu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | $\phi$-binned branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `phimin`, `phimax` |
| `<BR_L>(B+->D*munu)` | $\langle\text{BR}_L\rangle(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Binned longitudinal branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR_T>(B+->D*munu)` | $\langle\text{BR}_T\rangle(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Binned transverse branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<FL>(B+->D*munu)` | $\langle F_L\rangle(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(B->D*lnu)` | $\langle R_{\mu e} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\mu^+ \nu_\mu$ and $B\to D^{\ast}e^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(B->D*lnu)` | $\langle R_{\tau \mu} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B+->D*munu)` | $A_\text{FB}(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Total forward-backward asymmetry branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ |  |
| `BR(B+->D*munu)` | $\text{BR}(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Total branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ |  |
| `BR_L(B+->D*munu)` | $\text{BR}_L(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Total longitudinal branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ |  |
| `BR_T(B+->D*munu)` | $\text{BR}_T(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Total transverse branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ |  |
| `FL(B+->D*munu)` | $F_L(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `q2` |
| `FLtot(B+->D*munu)` | $F_L(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ |  |
| `FLttot(B+->D*munu)` | $\widetilde{F}_L(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ |  |
| `I3tot(B+->D*munu)` | $I_3(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ |  |
| `Rmue(B->D*lnu)` | $R_{\mu e}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\mu^+ \nu_\mu$ and $B\to D^{\ast}e^+ \nu_e$ |  |
| `Rtaumu(B->D*lnu)` | $R_{\tau \mu}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\mu^+ \nu_\mu$ |  |
| `dBR/dcV(B+->D*munu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `cV` |
| `dBR/dcl(B+->D*munu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | $\cos\theta_l$-differential branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `cl` |
| `dBR/dphi(B+->D*munu)` | $\frac{d\text{BR}}{d\phi}(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | $\phi$-differential branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `phi` |
| `dBR/dq2(B+->D*munu)` | $\frac{d\text{BR}}{dq^2}(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | $q^2$-differential branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `q2` |
| `dBR_L/dq2(B+->D*munu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Differential longitudinal branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `q2` |
| `dBR_T/dq2(B+->D*munu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to D^{\ast 0}\mu^+\nu_\mu)$ | Differential transverse branching ratio of $B^+\to D^{\ast 0}\mu^+\nu_\mu$ | `q2` |


### $B^+\to D^{\ast 0}\tau^+\nu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>/BR(B->D*taunu)` | $\frac{\langle \text{BR} \rangle}{\text{BR}}(B\to D^\ast\tau^+\nu)$ | Relative partial branching ratio of $B\to D^\ast\tau^+\nu$ | `q2min`, `q2max` |


### $B^+\to D^{\ast 0}\tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->D*taunu)` | $\langle\text{BR}\rangle(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | $q^2$-binned branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->D*taunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | $\cos\theta_V$-binned branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->D*taunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | $\cos\theta_l$-binned branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->D*taunu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | $\phi$-binned branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `phimin`, `phimax` |
| `<BR_L>(B+->D*taunu)` | $\langle\text{BR}_L\rangle(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Binned longitudinal branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR_T>(B+->D*taunu)` | $\langle\text{BR}_T\rangle(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Binned transverse branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<FL>(B+->D*taunu)` | $\langle F_L\rangle(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(B->D*lnu)` | $\langle R_{\tau \ell} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(B->D*lnu)` | $\langle R_{\tau \mu} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B+->D*taunu)` | $A_\text{FB}(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Total forward-backward asymmetry branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ |  |
| `BR(B+->D*taunu)` | $\text{BR}(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Total branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ |  |
| `BR_L(B+->D*taunu)` | $\text{BR}_L(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Total longitudinal branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ |  |
| `BR_T(B+->D*taunu)` | $\text{BR}_T(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Total transverse branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ |  |
| `FL(B+->D*taunu)` | $F_L(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `q2` |
| `FLtot(B+->D*taunu)` | $F_L(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ |  |
| `FLttot(B+->D*taunu)` | $\widetilde{F}_L(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ |  |
| `I3tot(B+->D*taunu)` | $I_3(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ |  |
| `Rtaul(B->D*lnu)` | $R_{\tau \ell}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\ell^+ \nu_\ell$ |  |
| `Rtaumu(B->D*lnu)` | $R_{\tau \mu}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\mu^+ \nu_\mu$ |  |
| `dBR/dcV(B+->D*taunu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `cV` |
| `dBR/dcl(B+->D*taunu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | $\cos\theta_l$-differential branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `cl` |
| `dBR/dphi(B+->D*taunu)` | $\frac{d\text{BR}}{d\phi}(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | $\phi$-differential branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `phi` |
| `dBR/dq2(B+->D*taunu)` | $\frac{d\text{BR}}{dq^2}(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | $q^2$-differential branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `q2` |
| `dBR_L/dq2(B+->D*taunu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Differential longitudinal branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `q2` |
| `dBR_T/dq2(B+->D*taunu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to D^{\ast 0}\tau^+\nu_\tau)$ | Differential transverse branching ratio of $B^+\to D^{\ast 0}\tau^+\nu_\tau$ | `q2` |


### $B^+\to D^{\ast 0}e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->D*enu)` | $\langle\text{BR}\rangle(B^+\to D^{\ast 0}e^+\nu_e)$ | $q^2$-binned branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->D*enu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to D^{\ast 0}e^+\nu_e)$ | $\cos\theta_V$-binned branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->D*enu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to D^{\ast 0}e^+\nu_e)$ | $\cos\theta_l$-binned branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->D*enu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to D^{\ast 0}e^+\nu_e)$ | $\phi$-binned branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `phimin`, `phimax` |
| `<BR_L>(B+->D*enu)` | $\langle\text{BR}_L\rangle(B^+\to D^{\ast 0}e^+\nu_e)$ | Binned longitudinal branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `q2min`, `q2max` |
| `<BR_T>(B+->D*enu)` | $\langle\text{BR}_T\rangle(B^+\to D^{\ast 0}e^+\nu_e)$ | Binned transverse branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `q2min`, `q2max` |
| `<FL>(B+->D*enu)` | $\langle F_L\rangle(B^+\to D^{\ast 0}e^+\nu_e)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(B->D*lnu)` | $\langle R_{\mu e} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\mu^+ \nu_\mu$ and $B\to D^{\ast}e^+ \nu_e$ | `q2min`, `q2max` |
| `AFBtot(B+->D*enu)` | $A_\text{FB}(B^+\to D^{\ast 0}e^+\nu_e)$ | Total forward-backward asymmetry branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ |  |
| `BR(B+->D*enu)` | $\text{BR}(B^+\to D^{\ast 0}e^+\nu_e)$ | Total branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ |  |
| `BR_L(B+->D*enu)` | $\text{BR}_L(B^+\to D^{\ast 0}e^+\nu_e)$ | Total longitudinal branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ |  |
| `BR_T(B+->D*enu)` | $\text{BR}_T(B^+\to D^{\ast 0}e^+\nu_e)$ | Total transverse branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ |  |
| `FL(B+->D*enu)` | $F_L(B^+\to D^{\ast 0}e^+\nu_e)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `q2` |
| `FLtot(B+->D*enu)` | $F_L(B^+\to D^{\ast 0}e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ |  |
| `FLttot(B+->D*enu)` | $\widetilde{F}_L(B^+\to D^{\ast 0}e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ |  |
| `I3tot(B+->D*enu)` | $I_3(B^+\to D^{\ast 0}e^+\nu_e)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ |  |
| `Rmue(B->D*lnu)` | $R_{\mu e}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\mu^+ \nu_\mu$ and $B\to D^{\ast}e^+ \nu_e$ |  |
| `dBR/dcV(B+->D*enu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to D^{\ast 0}e^+\nu_e)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `cV` |
| `dBR/dcl(B+->D*enu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to D^{\ast 0}e^+\nu_e)$ | $\cos\theta_l$-differential branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `cl` |
| `dBR/dphi(B+->D*enu)` | $\frac{d\text{BR}}{d\phi}(B^+\to D^{\ast 0}e^+\nu_e)$ | $\phi$-differential branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `phi` |
| `dBR/dq2(B+->D*enu)` | $\frac{d\text{BR}}{dq^2}(B^+\to D^{\ast 0}e^+\nu_e)$ | $q^2$-differential branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `q2` |
| `dBR_L/dq2(B+->D*enu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to D^{\ast 0}e^+\nu_e)$ | Differential longitudinal branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `q2` |
| `dBR_T/dq2(B+->D*enu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to D^{\ast 0}e^+\nu_e)$ | Differential transverse branching ratio of $B^+\to D^{\ast 0}e^+\nu_e$ | `q2` |


### $B^+\to \omega \ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->omegalnu)` | $\langle\text{BR}\rangle(B^+\to \omega \ell^+\nu_\ell)$ | $q^2$-binned branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->omegalnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to \omega \ell^+\nu_\ell)$ | $\cos\theta_V$-binned branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->omegalnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to \omega \ell^+\nu_\ell)$ | $\cos\theta_l$-binned branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->omegalnu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to \omega \ell^+\nu_\ell)$ | $\phi$-binned branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `phimin`, `phimax` |
| `<BR_L>(B+->omegalnu)` | $\langle\text{BR}_L\rangle(B^+\to \omega \ell^+\nu_\ell)$ | Binned longitudinal branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR_T>(B+->omegalnu)` | $\langle\text{BR}_T\rangle(B^+\to \omega \ell^+\nu_\ell)$ | Binned transverse branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<FL>(B+->omegalnu)` | $\langle F_L\rangle(B^+\to \omega \ell^+\nu_\ell)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(B+->omegalnu)` | $\langle R_{\tau \ell} \rangle(B^+\to \omega \ell^+\nu)$ | Ratio of partial branching ratios of $B^+\to \omega \tau^+ \nu_\tau$ and $B^+\to \omega \ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `AFBtot(B+->omegalnu)` | $A_\text{FB}(B^+\to \omega \ell^+\nu_\ell)$ | Total forward-backward asymmetry branching ratio of $B^+\to \omega \ell^+\nu_\ell$ |  |
| `BR(B+->omegalnu)` | $\text{BR}(B^+\to \omega \ell^+\nu_\ell)$ | Total branching ratio of $B^+\to \omega \ell^+\nu_\ell$ |  |
| `BR_L(B+->omegalnu)` | $\text{BR}_L(B^+\to \omega \ell^+\nu_\ell)$ | Total longitudinal branching ratio of $B^+\to \omega \ell^+\nu_\ell$ |  |
| `BR_T(B+->omegalnu)` | $\text{BR}_T(B^+\to \omega \ell^+\nu_\ell)$ | Total transverse branching ratio of $B^+\to \omega \ell^+\nu_\ell$ |  |
| `FL(B+->omegalnu)` | $F_L(B^+\to \omega \ell^+\nu_\ell)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `q2` |
| `FLtot(B+->omegalnu)` | $F_L(B^+\to \omega \ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \omega \ell^+\nu_\ell$ |  |
| `FLttot(B+->omegalnu)` | $\widetilde{F}_L(B^+\to \omega \ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \omega \ell^+\nu_\ell$ |  |
| `I3tot(B+->omegalnu)` | $I_3(B^+\to \omega \ell^+\nu_\ell)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to \omega \ell^+\nu_\ell$ |  |
| `Rtaul(B+->omegalnu)` | $R_{\tau \ell}(B^+\to \omega \ell^+\nu)$ | Ratio of total branching ratios of $B^+\to \omega \tau^+ \nu_\tau$ and $B^+\to \omega \ell^+ \nu_\ell$ |  |
| `dBR/dcV(B+->omegalnu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to \omega \ell^+\nu_\ell)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `cV` |
| `dBR/dcl(B+->omegalnu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to \omega \ell^+\nu_\ell)$ | $\cos\theta_l$-differential branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `cl` |
| `dBR/dphi(B+->omegalnu)` | $\frac{d\text{BR}}{d\phi}(B^+\to \omega \ell^+\nu_\ell)$ | $\phi$-differential branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `phi` |
| `dBR/dq2(B+->omegalnu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \omega \ell^+\nu_\ell)$ | $q^2$-differential branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `q2` |
| `dBR_L/dq2(B+->omegalnu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to \omega \ell^+\nu_\ell)$ | Differential longitudinal branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `q2` |
| `dBR_T/dq2(B+->omegalnu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to \omega \ell^+\nu_\ell)$ | Differential transverse branching ratio of $B^+\to \omega \ell^+\nu_\ell$ | `q2` |


### $B^+\to \omega \mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->omegamunu)` | $\langle\text{BR}\rangle(B^+\to \omega \mu^+\nu_\mu)$ | $q^2$-binned branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->omegamunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to \omega \mu^+\nu_\mu)$ | $\cos\theta_V$-binned branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->omegamunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to \omega \mu^+\nu_\mu)$ | $\cos\theta_l$-binned branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->omegamunu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to \omega \mu^+\nu_\mu)$ | $\phi$-binned branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `phimin`, `phimax` |
| `<BR_L>(B+->omegamunu)` | $\langle\text{BR}_L\rangle(B^+\to \omega \mu^+\nu_\mu)$ | Binned longitudinal branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR_T>(B+->omegamunu)` | $\langle\text{BR}_T\rangle(B^+\to \omega \mu^+\nu_\mu)$ | Binned transverse branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<FL>(B+->omegamunu)` | $\langle F_L\rangle(B^+\to \omega \mu^+\nu_\mu)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(B+->omegalnu)` | $\langle R_{\mu e} \rangle(B^+\to \omega \ell^+\nu)$ | Ratio of partial branching ratios of $B^+\to \omega \mu^+ \nu_\mu$ and $B^+\to \omega e^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(B+->omegalnu)` | $\langle R_{\tau \mu} \rangle(B^+\to \omega \ell^+\nu)$ | Ratio of partial branching ratios of $B^+\to \omega \tau^+ \nu_\tau$ and $B^+\to \omega \mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B+->omegamunu)` | $A_\text{FB}(B^+\to \omega \mu^+\nu_\mu)$ | Total forward-backward asymmetry branching ratio of $B^+\to \omega \mu^+\nu_\mu$ |  |
| `BR(B+->omegamunu)` | $\text{BR}(B^+\to \omega \mu^+\nu_\mu)$ | Total branching ratio of $B^+\to \omega \mu^+\nu_\mu$ |  |
| `BR_L(B+->omegamunu)` | $\text{BR}_L(B^+\to \omega \mu^+\nu_\mu)$ | Total longitudinal branching ratio of $B^+\to \omega \mu^+\nu_\mu$ |  |
| `BR_T(B+->omegamunu)` | $\text{BR}_T(B^+\to \omega \mu^+\nu_\mu)$ | Total transverse branching ratio of $B^+\to \omega \mu^+\nu_\mu$ |  |
| `FL(B+->omegamunu)` | $F_L(B^+\to \omega \mu^+\nu_\mu)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `q2` |
| `FLtot(B+->omegamunu)` | $F_L(B^+\to \omega \mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \omega \mu^+\nu_\mu$ |  |
| `FLttot(B+->omegamunu)` | $\widetilde{F}_L(B^+\to \omega \mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \omega \mu^+\nu_\mu$ |  |
| `I3tot(B+->omegamunu)` | $I_3(B^+\to \omega \mu^+\nu_\mu)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to \omega \mu^+\nu_\mu$ |  |
| `Rmue(B+->omegalnu)` | $R_{\mu e}(B^+\to \omega \ell^+\nu)$ | Ratio of total branching ratios of $B^+\to \omega \mu^+ \nu_\mu$ and $B^+\to \omega e^+ \nu_e$ |  |
| `Rtaumu(B+->omegalnu)` | $R_{\tau \mu}(B^+\to \omega \ell^+\nu)$ | Ratio of total branching ratios of $B^+\to \omega \tau^+ \nu_\tau$ and $B^+\to \omega \mu^+ \nu_\mu$ |  |
| `dBR/dcV(B+->omegamunu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to \omega \mu^+\nu_\mu)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `cV` |
| `dBR/dcl(B+->omegamunu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to \omega \mu^+\nu_\mu)$ | $\cos\theta_l$-differential branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `cl` |
| `dBR/dphi(B+->omegamunu)` | $\frac{d\text{BR}}{d\phi}(B^+\to \omega \mu^+\nu_\mu)$ | $\phi$-differential branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `phi` |
| `dBR/dq2(B+->omegamunu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \omega \mu^+\nu_\mu)$ | $q^2$-differential branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `q2` |
| `dBR_L/dq2(B+->omegamunu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to \omega \mu^+\nu_\mu)$ | Differential longitudinal branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `q2` |
| `dBR_T/dq2(B+->omegamunu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to \omega \mu^+\nu_\mu)$ | Differential transverse branching ratio of $B^+\to \omega \mu^+\nu_\mu$ | `q2` |


### $B^+\to \omega \tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->omegataunu)` | $\langle\text{BR}\rangle(B^+\to \omega \tau^+\nu_\tau)$ | $q^2$-binned branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->omegataunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to \omega \tau^+\nu_\tau)$ | $\cos\theta_V$-binned branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->omegataunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to \omega \tau^+\nu_\tau)$ | $\cos\theta_l$-binned branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->omegataunu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to \omega \tau^+\nu_\tau)$ | $\phi$-binned branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `phimin`, `phimax` |
| `<BR_L>(B+->omegataunu)` | $\langle\text{BR}_L\rangle(B^+\to \omega \tau^+\nu_\tau)$ | Binned longitudinal branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR_T>(B+->omegataunu)` | $\langle\text{BR}_T\rangle(B^+\to \omega \tau^+\nu_\tau)$ | Binned transverse branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<FL>(B+->omegataunu)` | $\langle F_L\rangle(B^+\to \omega \tau^+\nu_\tau)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(B+->omegalnu)` | $\langle R_{\tau \ell} \rangle(B^+\to \omega \ell^+\nu)$ | Ratio of partial branching ratios of $B^+\to \omega \tau^+ \nu_\tau$ and $B^+\to \omega \ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(B+->omegalnu)` | $\langle R_{\tau \mu} \rangle(B^+\to \omega \ell^+\nu)$ | Ratio of partial branching ratios of $B^+\to \omega \tau^+ \nu_\tau$ and $B^+\to \omega \mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B+->omegataunu)` | $A_\text{FB}(B^+\to \omega \tau^+\nu_\tau)$ | Total forward-backward asymmetry branching ratio of $B^+\to \omega \tau^+\nu_\tau$ |  |
| `BR(B+->omegataunu)` | $\text{BR}(B^+\to \omega \tau^+\nu_\tau)$ | Total branching ratio of $B^+\to \omega \tau^+\nu_\tau$ |  |
| `BR_L(B+->omegataunu)` | $\text{BR}_L(B^+\to \omega \tau^+\nu_\tau)$ | Total longitudinal branching ratio of $B^+\to \omega \tau^+\nu_\tau$ |  |
| `BR_T(B+->omegataunu)` | $\text{BR}_T(B^+\to \omega \tau^+\nu_\tau)$ | Total transverse branching ratio of $B^+\to \omega \tau^+\nu_\tau$ |  |
| `FL(B+->omegataunu)` | $F_L(B^+\to \omega \tau^+\nu_\tau)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `q2` |
| `FLtot(B+->omegataunu)` | $F_L(B^+\to \omega \tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \omega \tau^+\nu_\tau$ |  |
| `FLttot(B+->omegataunu)` | $\widetilde{F}_L(B^+\to \omega \tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \omega \tau^+\nu_\tau$ |  |
| `I3tot(B+->omegataunu)` | $I_3(B^+\to \omega \tau^+\nu_\tau)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to \omega \tau^+\nu_\tau$ |  |
| `Rtaul(B+->omegalnu)` | $R_{\tau \ell}(B^+\to \omega \ell^+\nu)$ | Ratio of total branching ratios of $B^+\to \omega \tau^+ \nu_\tau$ and $B^+\to \omega \ell^+ \nu_\ell$ |  |
| `Rtaumu(B+->omegalnu)` | $R_{\tau \mu}(B^+\to \omega \ell^+\nu)$ | Ratio of total branching ratios of $B^+\to \omega \tau^+ \nu_\tau$ and $B^+\to \omega \mu^+ \nu_\mu$ |  |
| `dBR/dcV(B+->omegataunu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to \omega \tau^+\nu_\tau)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `cV` |
| `dBR/dcl(B+->omegataunu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to \omega \tau^+\nu_\tau)$ | $\cos\theta_l$-differential branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `cl` |
| `dBR/dphi(B+->omegataunu)` | $\frac{d\text{BR}}{d\phi}(B^+\to \omega \tau^+\nu_\tau)$ | $\phi$-differential branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `phi` |
| `dBR/dq2(B+->omegataunu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \omega \tau^+\nu_\tau)$ | $q^2$-differential branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `q2` |
| `dBR_L/dq2(B+->omegataunu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to \omega \tau^+\nu_\tau)$ | Differential longitudinal branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `q2` |
| `dBR_T/dq2(B+->omegataunu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to \omega \tau^+\nu_\tau)$ | Differential transverse branching ratio of $B^+\to \omega \tau^+\nu_\tau$ | `q2` |


### $B^+\to \omega e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->omegaenu)` | $\langle\text{BR}\rangle(B^+\to \omega e^+\nu_e)$ | $q^2$-binned branching ratio of $B^+\to \omega e^+\nu_e$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->omegaenu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to \omega e^+\nu_e)$ | $\cos\theta_V$-binned branching ratio of $B^+\to \omega e^+\nu_e$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->omegaenu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to \omega e^+\nu_e)$ | $\cos\theta_l$-binned branching ratio of $B^+\to \omega e^+\nu_e$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->omegaenu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to \omega e^+\nu_e)$ | $\phi$-binned branching ratio of $B^+\to \omega e^+\nu_e$ | `phimin`, `phimax` |
| `<BR_L>(B+->omegaenu)` | $\langle\text{BR}_L\rangle(B^+\to \omega e^+\nu_e)$ | Binned longitudinal branching ratio of $B^+\to \omega e^+\nu_e$ | `q2min`, `q2max` |
| `<BR_T>(B+->omegaenu)` | $\langle\text{BR}_T\rangle(B^+\to \omega e^+\nu_e)$ | Binned transverse branching ratio of $B^+\to \omega e^+\nu_e$ | `q2min`, `q2max` |
| `<FL>(B+->omegaenu)` | $\langle F_L\rangle(B^+\to \omega e^+\nu_e)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to \omega e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(B+->omegalnu)` | $\langle R_{\mu e} \rangle(B^+\to \omega \ell^+\nu)$ | Ratio of partial branching ratios of $B^+\to \omega \mu^+ \nu_\mu$ and $B^+\to \omega e^+ \nu_e$ | `q2min`, `q2max` |
| `AFBtot(B+->omegaenu)` | $A_\text{FB}(B^+\to \omega e^+\nu_e)$ | Total forward-backward asymmetry branching ratio of $B^+\to \omega e^+\nu_e$ |  |
| `BR(B+->omegaenu)` | $\text{BR}(B^+\to \omega e^+\nu_e)$ | Total branching ratio of $B^+\to \omega e^+\nu_e$ |  |
| `BR_L(B+->omegaenu)` | $\text{BR}_L(B^+\to \omega e^+\nu_e)$ | Total longitudinal branching ratio of $B^+\to \omega e^+\nu_e$ |  |
| `BR_T(B+->omegaenu)` | $\text{BR}_T(B^+\to \omega e^+\nu_e)$ | Total transverse branching ratio of $B^+\to \omega e^+\nu_e$ |  |
| `FL(B+->omegaenu)` | $F_L(B^+\to \omega e^+\nu_e)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to \omega e^+\nu_e$ | `q2` |
| `FLtot(B+->omegaenu)` | $F_L(B^+\to \omega e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \omega e^+\nu_e$ |  |
| `FLttot(B+->omegaenu)` | $\widetilde{F}_L(B^+\to \omega e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \omega e^+\nu_e$ |  |
| `I3tot(B+->omegaenu)` | $I_3(B^+\to \omega e^+\nu_e)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to \omega e^+\nu_e$ |  |
| `Rmue(B+->omegalnu)` | $R_{\mu e}(B^+\to \omega \ell^+\nu)$ | Ratio of total branching ratios of $B^+\to \omega \mu^+ \nu_\mu$ and $B^+\to \omega e^+ \nu_e$ |  |
| `dBR/dcV(B+->omegaenu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to \omega e^+\nu_e)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to \omega e^+\nu_e$ | `cV` |
| `dBR/dcl(B+->omegaenu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to \omega e^+\nu_e)$ | $\cos\theta_l$-differential branching ratio of $B^+\to \omega e^+\nu_e$ | `cl` |
| `dBR/dphi(B+->omegaenu)` | $\frac{d\text{BR}}{d\phi}(B^+\to \omega e^+\nu_e)$ | $\phi$-differential branching ratio of $B^+\to \omega e^+\nu_e$ | `phi` |
| `dBR/dq2(B+->omegaenu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \omega e^+\nu_e)$ | $q^2$-differential branching ratio of $B^+\to \omega e^+\nu_e$ | `q2` |
| `dBR_L/dq2(B+->omegaenu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to \omega e^+\nu_e)$ | Differential longitudinal branching ratio of $B^+\to \omega e^+\nu_e$ | `q2` |
| `dBR_T/dq2(B+->omegaenu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to \omega e^+\nu_e)$ | Differential transverse branching ratio of $B^+\to \omega e^+\nu_e$ | `q2` |


### $B^+\to \rho^0\ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->rholnu)` | $\langle\text{BR}\rangle(B^+\to \rho^0\ell^+\nu_\ell)$ | $q^2$-binned branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->rholnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to \rho^0\ell^+\nu_\ell)$ | $\cos\theta_V$-binned branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->rholnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to \rho^0\ell^+\nu_\ell)$ | $\cos\theta_l$-binned branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->rholnu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to \rho^0\ell^+\nu_\ell)$ | $\phi$-binned branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `phimin`, `phimax` |
| `<BR_L>(B+->rholnu)` | $\langle\text{BR}_L\rangle(B^+\to \rho^0\ell^+\nu_\ell)$ | Binned longitudinal branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR_T>(B+->rholnu)` | $\langle\text{BR}_T\rangle(B^+\to \rho^0\ell^+\nu_\ell)$ | Binned transverse branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<FL>(B+->rholnu)` | $\langle F_L\rangle(B^+\to \rho^0\ell^+\nu_\ell)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(B->rholnu)` | $\langle R_{\tau \ell} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `AFBtot(B+->rholnu)` | $A_\text{FB}(B^+\to \rho^0\ell^+\nu_\ell)$ | Total forward-backward asymmetry branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ |  |
| `BR(B+->rholnu)` | $\text{BR}(B^+\to \rho^0\ell^+\nu_\ell)$ | Total branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ |  |
| `BR_L(B+->rholnu)` | $\text{BR}_L(B^+\to \rho^0\ell^+\nu_\ell)$ | Total longitudinal branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ |  |
| `BR_T(B+->rholnu)` | $\text{BR}_T(B^+\to \rho^0\ell^+\nu_\ell)$ | Total transverse branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ |  |
| `FL(B+->rholnu)` | $F_L(B^+\to \rho^0\ell^+\nu_\ell)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `q2` |
| `FLtot(B+->rholnu)` | $F_L(B^+\to \rho^0\ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ |  |
| `FLttot(B+->rholnu)` | $\widetilde{F}_L(B^+\to \rho^0\ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ |  |
| `I3tot(B+->rholnu)` | $I_3(B^+\to \rho^0\ell^+\nu_\ell)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ |  |
| `Rtaul(B->rholnu)` | $R_{\tau \ell}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\ell^+ \nu_\ell$ |  |
| `dBR/dcV(B+->rholnu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to \rho^0\ell^+\nu_\ell)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `cV` |
| `dBR/dcl(B+->rholnu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to \rho^0\ell^+\nu_\ell)$ | $\cos\theta_l$-differential branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `cl` |
| `dBR/dphi(B+->rholnu)` | $\frac{d\text{BR}}{d\phi}(B^+\to \rho^0\ell^+\nu_\ell)$ | $\phi$-differential branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `phi` |
| `dBR/dq2(B+->rholnu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \rho^0\ell^+\nu_\ell)$ | $q^2$-differential branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `q2` |
| `dBR_L/dq2(B+->rholnu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to \rho^0\ell^+\nu_\ell)$ | Differential longitudinal branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `q2` |
| `dBR_T/dq2(B+->rholnu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to \rho^0\ell^+\nu_\ell)$ | Differential transverse branching ratio of $B^+\to \rho^0\ell^+\nu_\ell$ | `q2` |


### $B^+\to \rho^0\mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->rhomunu)` | $\langle\text{BR}\rangle(B^+\to \rho^0\mu^+\nu_\mu)$ | $q^2$-binned branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->rhomunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to \rho^0\mu^+\nu_\mu)$ | $\cos\theta_V$-binned branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->rhomunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to \rho^0\mu^+\nu_\mu)$ | $\cos\theta_l$-binned branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->rhomunu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to \rho^0\mu^+\nu_\mu)$ | $\phi$-binned branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `phimin`, `phimax` |
| `<BR_L>(B+->rhomunu)` | $\langle\text{BR}_L\rangle(B^+\to \rho^0\mu^+\nu_\mu)$ | Binned longitudinal branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR_T>(B+->rhomunu)` | $\langle\text{BR}_T\rangle(B^+\to \rho^0\mu^+\nu_\mu)$ | Binned transverse branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<FL>(B+->rhomunu)` | $\langle F_L\rangle(B^+\to \rho^0\mu^+\nu_\mu)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(B->rholnu)` | $\langle R_{\mu e} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\mu^+ \nu_\mu$ and $B\to \rhoe^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(B->rholnu)` | $\langle R_{\tau \mu} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B+->rhomunu)` | $A_\text{FB}(B^+\to \rho^0\mu^+\nu_\mu)$ | Total forward-backward asymmetry branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ |  |
| `BR(B+->rhomunu)` | $\text{BR}(B^+\to \rho^0\mu^+\nu_\mu)$ | Total branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ |  |
| `BR_L(B+->rhomunu)` | $\text{BR}_L(B^+\to \rho^0\mu^+\nu_\mu)$ | Total longitudinal branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ |  |
| `BR_T(B+->rhomunu)` | $\text{BR}_T(B^+\to \rho^0\mu^+\nu_\mu)$ | Total transverse branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ |  |
| `FL(B+->rhomunu)` | $F_L(B^+\to \rho^0\mu^+\nu_\mu)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `q2` |
| `FLtot(B+->rhomunu)` | $F_L(B^+\to \rho^0\mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ |  |
| `FLttot(B+->rhomunu)` | $\widetilde{F}_L(B^+\to \rho^0\mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ |  |
| `I3tot(B+->rhomunu)` | $I_3(B^+\to \rho^0\mu^+\nu_\mu)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ |  |
| `Rmue(B->rholnu)` | $R_{\mu e}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\mu^+ \nu_\mu$ and $B\to \rhoe^+ \nu_e$ |  |
| `Rtaumu(B->rholnu)` | $R_{\tau \mu}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\mu^+ \nu_\mu$ |  |
| `dBR/dcV(B+->rhomunu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to \rho^0\mu^+\nu_\mu)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `cV` |
| `dBR/dcl(B+->rhomunu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to \rho^0\mu^+\nu_\mu)$ | $\cos\theta_l$-differential branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `cl` |
| `dBR/dphi(B+->rhomunu)` | $\frac{d\text{BR}}{d\phi}(B^+\to \rho^0\mu^+\nu_\mu)$ | $\phi$-differential branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `phi` |
| `dBR/dq2(B+->rhomunu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \rho^0\mu^+\nu_\mu)$ | $q^2$-differential branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `q2` |
| `dBR_L/dq2(B+->rhomunu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to \rho^0\mu^+\nu_\mu)$ | Differential longitudinal branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `q2` |
| `dBR_T/dq2(B+->rhomunu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to \rho^0\mu^+\nu_\mu)$ | Differential transverse branching ratio of $B^+\to \rho^0\mu^+\nu_\mu$ | `q2` |


### $B^+\to \rho^0\tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->rhotaunu)` | $\langle\text{BR}\rangle(B^+\to \rho^0\tau^+\nu_\tau)$ | $q^2$-binned branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->rhotaunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to \rho^0\tau^+\nu_\tau)$ | $\cos\theta_V$-binned branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->rhotaunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to \rho^0\tau^+\nu_\tau)$ | $\cos\theta_l$-binned branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->rhotaunu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to \rho^0\tau^+\nu_\tau)$ | $\phi$-binned branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `phimin`, `phimax` |
| `<BR_L>(B+->rhotaunu)` | $\langle\text{BR}_L\rangle(B^+\to \rho^0\tau^+\nu_\tau)$ | Binned longitudinal branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR_T>(B+->rhotaunu)` | $\langle\text{BR}_T\rangle(B^+\to \rho^0\tau^+\nu_\tau)$ | Binned transverse branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<FL>(B+->rhotaunu)` | $\langle F_L\rangle(B^+\to \rho^0\tau^+\nu_\tau)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(B->rholnu)` | $\langle R_{\tau \ell} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(B->rholnu)` | $\langle R_{\tau \mu} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B+->rhotaunu)` | $A_\text{FB}(B^+\to \rho^0\tau^+\nu_\tau)$ | Total forward-backward asymmetry branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ |  |
| `BR(B+->rhotaunu)` | $\text{BR}(B^+\to \rho^0\tau^+\nu_\tau)$ | Total branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ |  |
| `BR_L(B+->rhotaunu)` | $\text{BR}_L(B^+\to \rho^0\tau^+\nu_\tau)$ | Total longitudinal branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ |  |
| `BR_T(B+->rhotaunu)` | $\text{BR}_T(B^+\to \rho^0\tau^+\nu_\tau)$ | Total transverse branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ |  |
| `FL(B+->rhotaunu)` | $F_L(B^+\to \rho^0\tau^+\nu_\tau)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `q2` |
| `FLtot(B+->rhotaunu)` | $F_L(B^+\to \rho^0\tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ |  |
| `FLttot(B+->rhotaunu)` | $\widetilde{F}_L(B^+\to \rho^0\tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ |  |
| `I3tot(B+->rhotaunu)` | $I_3(B^+\to \rho^0\tau^+\nu_\tau)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ |  |
| `Rtaul(B->rholnu)` | $R_{\tau \ell}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\ell^+ \nu_\ell$ |  |
| `Rtaumu(B->rholnu)` | $R_{\tau \mu}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\mu^+ \nu_\mu$ |  |
| `dBR/dcV(B+->rhotaunu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to \rho^0\tau^+\nu_\tau)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `cV` |
| `dBR/dcl(B+->rhotaunu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to \rho^0\tau^+\nu_\tau)$ | $\cos\theta_l$-differential branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `cl` |
| `dBR/dphi(B+->rhotaunu)` | $\frac{d\text{BR}}{d\phi}(B^+\to \rho^0\tau^+\nu_\tau)$ | $\phi$-differential branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `phi` |
| `dBR/dq2(B+->rhotaunu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \rho^0\tau^+\nu_\tau)$ | $q^2$-differential branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `q2` |
| `dBR_L/dq2(B+->rhotaunu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to \rho^0\tau^+\nu_\tau)$ | Differential longitudinal branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `q2` |
| `dBR_T/dq2(B+->rhotaunu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to \rho^0\tau^+\nu_\tau)$ | Differential transverse branching ratio of $B^+\to \rho^0\tau^+\nu_\tau$ | `q2` |


### $B^+\to \rho^0e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B+->rhoenu)` | $\langle\text{BR}\rangle(B^+\to \rho^0e^+\nu_e)$ | $q^2$-binned branching ratio of $B^+\to \rho^0e^+\nu_e$ | `q2min`, `q2max` |
| `<BR>/<cV>(B+->rhoenu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^+\to \rho^0e^+\nu_e)$ | $\cos\theta_V$-binned branching ratio of $B^+\to \rho^0e^+\nu_e$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B+->rhoenu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^+\to \rho^0e^+\nu_e)$ | $\cos\theta_l$-binned branching ratio of $B^+\to \rho^0e^+\nu_e$ | `clmin`, `clmax` |
| `<BR>/<phi>(B+->rhoenu)` | $\langle\text{BR}\rangle/\Delta\phi(B^+\to \rho^0e^+\nu_e)$ | $\phi$-binned branching ratio of $B^+\to \rho^0e^+\nu_e$ | `phimin`, `phimax` |
| `<BR_L>(B+->rhoenu)` | $\langle\text{BR}_L\rangle(B^+\to \rho^0e^+\nu_e)$ | Binned longitudinal branching ratio of $B^+\to \rho^0e^+\nu_e$ | `q2min`, `q2max` |
| `<BR_T>(B+->rhoenu)` | $\langle\text{BR}_T\rangle(B^+\to \rho^0e^+\nu_e)$ | Binned transverse branching ratio of $B^+\to \rho^0e^+\nu_e$ | `q2min`, `q2max` |
| `<FL>(B+->rhoenu)` | $\langle F_L\rangle(B^+\to \rho^0e^+\nu_e)$ | Binned longitudinal polarization fraction branching ratio of $B^+\to \rho^0e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(B->rholnu)` | $\langle R_{\mu e} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\mu^+ \nu_\mu$ and $B\to \rhoe^+ \nu_e$ | `q2min`, `q2max` |
| `AFBtot(B+->rhoenu)` | $A_\text{FB}(B^+\to \rho^0e^+\nu_e)$ | Total forward-backward asymmetry branching ratio of $B^+\to \rho^0e^+\nu_e$ |  |
| `BR(B+->rhoenu)` | $\text{BR}(B^+\to \rho^0e^+\nu_e)$ | Total branching ratio of $B^+\to \rho^0e^+\nu_e$ |  |
| `BR_L(B+->rhoenu)` | $\text{BR}_L(B^+\to \rho^0e^+\nu_e)$ | Total longitudinal branching ratio of $B^+\to \rho^0e^+\nu_e$ |  |
| `BR_T(B+->rhoenu)` | $\text{BR}_T(B^+\to \rho^0e^+\nu_e)$ | Total transverse branching ratio of $B^+\to \rho^0e^+\nu_e$ |  |
| `FL(B+->rhoenu)` | $F_L(B^+\to \rho^0e^+\nu_e)$ | Differential longitudinal polarization fraction branching ratio of $B^+\to \rho^0e^+\nu_e$ | `q2` |
| `FLtot(B+->rhoenu)` | $F_L(B^+\to \rho^0e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \rho^0e^+\nu_e$ |  |
| `FLttot(B+->rhoenu)` | $\widetilde{F}_L(B^+\to \rho^0e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^+\to \rho^0e^+\nu_e$ |  |
| `I3tot(B+->rhoenu)` | $I_3(B^+\to \rho^0e^+\nu_e)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^+\to \rho^0e^+\nu_e$ |  |
| `Rmue(B->rholnu)` | $R_{\mu e}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\mu^+ \nu_\mu$ and $B\to \rhoe^+ \nu_e$ |  |
| `dBR/dcV(B+->rhoenu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^+\to \rho^0e^+\nu_e)$ | $\cos\theta_V$-differential  branching ratio of $B^+\to \rho^0e^+\nu_e$ | `cV` |
| `dBR/dcl(B+->rhoenu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^+\to \rho^0e^+\nu_e)$ | $\cos\theta_l$-differential branching ratio of $B^+\to \rho^0e^+\nu_e$ | `cl` |
| `dBR/dphi(B+->rhoenu)` | $\frac{d\text{BR}}{d\phi}(B^+\to \rho^0e^+\nu_e)$ | $\phi$-differential branching ratio of $B^+\to \rho^0e^+\nu_e$ | `phi` |
| `dBR/dq2(B+->rhoenu)` | $\frac{d\text{BR}}{dq^2}(B^+\to \rho^0e^+\nu_e)$ | $q^2$-differential branching ratio of $B^+\to \rho^0e^+\nu_e$ | `q2` |
| `dBR_L/dq2(B+->rhoenu)` | $\frac{d\text{BR}_L}{dq^2}(B^+\to \rho^0e^+\nu_e)$ | Differential longitudinal branching ratio of $B^+\to \rho^0e^+\nu_e$ | `q2` |
| `dBR_T/dq2(B+->rhoenu)` | $\frac{d\text{BR}_T}{dq^2}(B^+\to \rho^0e^+\nu_e)$ | Differential transverse branching ratio of $B^+\to \rho^0e^+\nu_e$ | `q2` |


### $B^0\to D^{\ast -}\ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->D*lnu)` | $\langle\text{BR}\rangle(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | $q^2$-binned branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR>/<cV>(B0->D*lnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | $\cos\theta_V$-binned branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B0->D*lnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | $\cos\theta_l$-binned branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `clmin`, `clmax` |
| `<BR>/<phi>(B0->D*lnu)` | $\langle\text{BR}\rangle/\Delta\phi(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | $\phi$-binned branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `phimin`, `phimax` |
| `<BR_L>(B0->D*lnu)` | $\langle\text{BR}_L\rangle(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Binned longitudinal branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR_T>(B0->D*lnu)` | $\langle\text{BR}_T\rangle(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Binned transverse branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<FL>(B0->D*lnu)` | $\langle F_L\rangle(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Binned longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(B->D*lnu)` | $\langle R_{\tau \ell} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `AFBtot(B0->D*lnu)` | $A_\text{FB}(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Total forward-backward asymmetry branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ |  |
| `BR(B0->D*lnu)` | $\text{BR}(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Total branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ |  |
| `BR_L(B0->D*lnu)` | $\text{BR}_L(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Total longitudinal branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ |  |
| `BR_T(B0->D*lnu)` | $\text{BR}_T(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Total transverse branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ |  |
| `FL(B0->D*lnu)` | $F_L(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Differential longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `q2` |
| `FLtot(B0->D*lnu)` | $F_L(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ |  |
| `FLttot(B0->D*lnu)` | $\widetilde{F}_L(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ |  |
| `I3tot(B0->D*lnu)` | $I_3(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ |  |
| `Rtaul(B->D*lnu)` | $R_{\tau \ell}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\ell^+ \nu_\ell$ |  |
| `dBR/dcV(B0->D*lnu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | $\cos\theta_V$-differential  branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `cV` |
| `dBR/dcl(B0->D*lnu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | $\cos\theta_l$-differential branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `cl` |
| `dBR/dphi(B0->D*lnu)` | $\frac{d\text{BR}}{d\phi}(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | $\phi$-differential branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `phi` |
| `dBR/dq2(B0->D*lnu)` | $\frac{d\text{BR}}{dq^2}(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | $q^2$-differential branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `q2` |
| `dBR_L/dq2(B0->D*lnu)` | $\frac{d\text{BR}_L}{dq^2}(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Differential longitudinal branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `q2` |
| `dBR_T/dq2(B0->D*lnu)` | $\frac{d\text{BR}_T}{dq^2}(B^0\to D^{\ast -}\ell^+\nu_\ell)$ | Differential transverse branching ratio of $B^0\to D^{\ast -}\ell^+\nu_\ell$ | `q2` |


### $B^0\to D^{\ast -}\mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->D*munu)` | $\langle\text{BR}\rangle(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | $q^2$-binned branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR>/<cV>(B0->D*munu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | $\cos\theta_V$-binned branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B0->D*munu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | $\cos\theta_l$-binned branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `clmin`, `clmax` |
| `<BR>/<phi>(B0->D*munu)` | $\langle\text{BR}\rangle/\Delta\phi(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | $\phi$-binned branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `phimin`, `phimax` |
| `<BR_L>(B0->D*munu)` | $\langle\text{BR}_L\rangle(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Binned longitudinal branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR_T>(B0->D*munu)` | $\langle\text{BR}_T\rangle(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Binned transverse branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<FL>(B0->D*munu)` | $\langle F_L\rangle(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Binned longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(B->D*lnu)` | $\langle R_{\mu e} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\mu^+ \nu_\mu$ and $B\to D^{\ast}e^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(B->D*lnu)` | $\langle R_{\tau \mu} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B0->D*munu)` | $A_\text{FB}(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Total forward-backward asymmetry branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ |  |
| `BR(B0->D*munu)` | $\text{BR}(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Total branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ |  |
| `BR_L(B0->D*munu)` | $\text{BR}_L(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Total longitudinal branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ |  |
| `BR_T(B0->D*munu)` | $\text{BR}_T(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Total transverse branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ |  |
| `FL(B0->D*munu)` | $F_L(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Differential longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `q2` |
| `FLtot(B0->D*munu)` | $F_L(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ |  |
| `FLttot(B0->D*munu)` | $\widetilde{F}_L(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ |  |
| `I3tot(B0->D*munu)` | $I_3(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ |  |
| `Rmue(B->D*lnu)` | $R_{\mu e}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\mu^+ \nu_\mu$ and $B\to D^{\ast}e^+ \nu_e$ |  |
| `Rtaumu(B->D*lnu)` | $R_{\tau \mu}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\mu^+ \nu_\mu$ |  |
| `dBR/dcV(B0->D*munu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | $\cos\theta_V$-differential  branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `cV` |
| `dBR/dcl(B0->D*munu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | $\cos\theta_l$-differential branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `cl` |
| `dBR/dphi(B0->D*munu)` | $\frac{d\text{BR}}{d\phi}(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | $\phi$-differential branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `phi` |
| `dBR/dq2(B0->D*munu)` | $\frac{d\text{BR}}{dq^2}(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | $q^2$-differential branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `q2` |
| `dBR_L/dq2(B0->D*munu)` | $\frac{d\text{BR}_L}{dq^2}(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Differential longitudinal branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `q2` |
| `dBR_T/dq2(B0->D*munu)` | $\frac{d\text{BR}_T}{dq^2}(B^0\to D^{\ast -}\mu^+\nu_\mu)$ | Differential transverse branching ratio of $B^0\to D^{\ast -}\mu^+\nu_\mu$ | `q2` |


### $B^0\to D^{\ast -}\tau^+\nu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>/BR(B->D*taunu)` | $\frac{\langle \text{BR} \rangle}{\text{BR}}(B\to D^\ast\tau^+\nu)$ | Relative partial branching ratio of $B\to D^\ast\tau^+\nu$ | `q2min`, `q2max` |


### $B^0\to D^{\ast -}\tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->D*taunu)` | $\langle\text{BR}\rangle(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | $q^2$-binned branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR>/<cV>(B0->D*taunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | $\cos\theta_V$-binned branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B0->D*taunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | $\cos\theta_l$-binned branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `clmin`, `clmax` |
| `<BR>/<phi>(B0->D*taunu)` | $\langle\text{BR}\rangle/\Delta\phi(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | $\phi$-binned branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `phimin`, `phimax` |
| `<BR_L>(B0->D*taunu)` | $\langle\text{BR}_L\rangle(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Binned longitudinal branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR_T>(B0->D*taunu)` | $\langle\text{BR}_T\rangle(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Binned transverse branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<FL>(B0->D*taunu)` | $\langle F_L\rangle(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Binned longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(B->D*lnu)` | $\langle R_{\tau \ell} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(B->D*lnu)` | $\langle R_{\tau \mu} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B0->D*taunu)` | $A_\text{FB}(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Total forward-backward asymmetry branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ |  |
| `BR(B0->D*taunu)` | $\text{BR}(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Total branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ |  |
| `BR_L(B0->D*taunu)` | $\text{BR}_L(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Total longitudinal branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ |  |
| `BR_T(B0->D*taunu)` | $\text{BR}_T(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Total transverse branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ |  |
| `FL(B0->D*taunu)` | $F_L(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Differential longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `q2` |
| `FLtot(B0->D*taunu)` | $F_L(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ |  |
| `FLttot(B0->D*taunu)` | $\widetilde{F}_L(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ |  |
| `I3tot(B0->D*taunu)` | $I_3(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ |  |
| `Rtaul(B->D*lnu)` | $R_{\tau \ell}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\ell^+ \nu_\ell$ |  |
| `Rtaumu(B->D*lnu)` | $R_{\tau \mu}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\tau^+ \nu_\tau$ and $B\to D^{\ast}\mu^+ \nu_\mu$ |  |
| `dBR/dcV(B0->D*taunu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | $\cos\theta_V$-differential  branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `cV` |
| `dBR/dcl(B0->D*taunu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | $\cos\theta_l$-differential branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `cl` |
| `dBR/dphi(B0->D*taunu)` | $\frac{d\text{BR}}{d\phi}(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | $\phi$-differential branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `phi` |
| `dBR/dq2(B0->D*taunu)` | $\frac{d\text{BR}}{dq^2}(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | $q^2$-differential branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `q2` |
| `dBR_L/dq2(B0->D*taunu)` | $\frac{d\text{BR}_L}{dq^2}(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Differential longitudinal branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `q2` |
| `dBR_T/dq2(B0->D*taunu)` | $\frac{d\text{BR}_T}{dq^2}(B^0\to D^{\ast -}\tau^+\nu_\tau)$ | Differential transverse branching ratio of $B^0\to D^{\ast -}\tau^+\nu_\tau$ | `q2` |


### $B^0\to D^{\ast -}e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->D*enu)` | $\langle\text{BR}\rangle(B^0\to D^{\ast -}e^+\nu_e)$ | $q^2$-binned branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `q2min`, `q2max` |
| `<BR>/<cV>(B0->D*enu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^0\to D^{\ast -}e^+\nu_e)$ | $\cos\theta_V$-binned branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B0->D*enu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^0\to D^{\ast -}e^+\nu_e)$ | $\cos\theta_l$-binned branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `clmin`, `clmax` |
| `<BR>/<phi>(B0->D*enu)` | $\langle\text{BR}\rangle/\Delta\phi(B^0\to D^{\ast -}e^+\nu_e)$ | $\phi$-binned branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `phimin`, `phimax` |
| `<BR_L>(B0->D*enu)` | $\langle\text{BR}_L\rangle(B^0\to D^{\ast -}e^+\nu_e)$ | Binned longitudinal branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `q2min`, `q2max` |
| `<BR_T>(B0->D*enu)` | $\langle\text{BR}_T\rangle(B^0\to D^{\ast -}e^+\nu_e)$ | Binned transverse branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `q2min`, `q2max` |
| `<FL>(B0->D*enu)` | $\langle F_L\rangle(B^0\to D^{\ast -}e^+\nu_e)$ | Binned longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(B->D*lnu)` | $\langle R_{\mu e} \rangle(B\to D^{\ast}\ell^+\nu)$ | Ratio of partial branching ratios of $B\to D^{\ast}\mu^+ \nu_\mu$ and $B\to D^{\ast}e^+ \nu_e$ | `q2min`, `q2max` |
| `AFBtot(B0->D*enu)` | $A_\text{FB}(B^0\to D^{\ast -}e^+\nu_e)$ | Total forward-backward asymmetry branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ |  |
| `BR(B0->D*enu)` | $\text{BR}(B^0\to D^{\ast -}e^+\nu_e)$ | Total branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ |  |
| `BR_L(B0->D*enu)` | $\text{BR}_L(B^0\to D^{\ast -}e^+\nu_e)$ | Total longitudinal branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ |  |
| `BR_T(B0->D*enu)` | $\text{BR}_T(B^0\to D^{\ast -}e^+\nu_e)$ | Total transverse branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ |  |
| `FL(B0->D*enu)` | $F_L(B^0\to D^{\ast -}e^+\nu_e)$ | Differential longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `q2` |
| `FLtot(B0->D*enu)` | $F_L(B^0\to D^{\ast -}e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ |  |
| `FLttot(B0->D*enu)` | $\widetilde{F}_L(B^0\to D^{\ast -}e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ |  |
| `I3tot(B0->D*enu)` | $I_3(B^0\to D^{\ast -}e^+\nu_e)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ |  |
| `Rmue(B->D*lnu)` | $R_{\mu e}(B\to D^{\ast}\ell^+\nu)$ | Ratio of total branching ratios of $B\to D^{\ast}\mu^+ \nu_\mu$ and $B\to D^{\ast}e^+ \nu_e$ |  |
| `dBR/dcV(B0->D*enu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^0\to D^{\ast -}e^+\nu_e)$ | $\cos\theta_V$-differential  branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `cV` |
| `dBR/dcl(B0->D*enu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^0\to D^{\ast -}e^+\nu_e)$ | $\cos\theta_l$-differential branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `cl` |
| `dBR/dphi(B0->D*enu)` | $\frac{d\text{BR}}{d\phi}(B^0\to D^{\ast -}e^+\nu_e)$ | $\phi$-differential branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `phi` |
| `dBR/dq2(B0->D*enu)` | $\frac{d\text{BR}}{dq^2}(B^0\to D^{\ast -}e^+\nu_e)$ | $q^2$-differential branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `q2` |
| `dBR_L/dq2(B0->D*enu)` | $\frac{d\text{BR}_L}{dq^2}(B^0\to D^{\ast -}e^+\nu_e)$ | Differential longitudinal branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `q2` |
| `dBR_T/dq2(B0->D*enu)` | $\frac{d\text{BR}_T}{dq^2}(B^0\to D^{\ast -}e^+\nu_e)$ | Differential transverse branching ratio of $B^0\to D^{\ast -}e^+\nu_e$ | `q2` |


### $B^0\to \rho^-\ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->rholnu)` | $\langle\text{BR}\rangle(B^0\to \rho^-\ell^+\nu_\ell)$ | $q^2$-binned branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR>/<cV>(B0->rholnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^0\to \rho^-\ell^+\nu_\ell)$ | $\cos\theta_V$-binned branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B0->rholnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^0\to \rho^-\ell^+\nu_\ell)$ | $\cos\theta_l$-binned branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `clmin`, `clmax` |
| `<BR>/<phi>(B0->rholnu)` | $\langle\text{BR}\rangle/\Delta\phi(B^0\to \rho^-\ell^+\nu_\ell)$ | $\phi$-binned branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `phimin`, `phimax` |
| `<BR_L>(B0->rholnu)` | $\langle\text{BR}_L\rangle(B^0\to \rho^-\ell^+\nu_\ell)$ | Binned longitudinal branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR_T>(B0->rholnu)` | $\langle\text{BR}_T\rangle(B^0\to \rho^-\ell^+\nu_\ell)$ | Binned transverse branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<FL>(B0->rholnu)` | $\langle F_L\rangle(B^0\to \rho^-\ell^+\nu_\ell)$ | Binned longitudinal polarization fraction branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(B->rholnu)` | $\langle R_{\tau \ell} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `AFBtot(B0->rholnu)` | $A_\text{FB}(B^0\to \rho^-\ell^+\nu_\ell)$ | Total forward-backward asymmetry branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ |  |
| `BR(B0->rholnu)` | $\text{BR}(B^0\to \rho^-\ell^+\nu_\ell)$ | Total branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ |  |
| `BR_L(B0->rholnu)` | $\text{BR}_L(B^0\to \rho^-\ell^+\nu_\ell)$ | Total longitudinal branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ |  |
| `BR_T(B0->rholnu)` | $\text{BR}_T(B^0\to \rho^-\ell^+\nu_\ell)$ | Total transverse branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ |  |
| `FL(B0->rholnu)` | $F_L(B^0\to \rho^-\ell^+\nu_\ell)$ | Differential longitudinal polarization fraction branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `q2` |
| `FLtot(B0->rholnu)` | $F_L(B^0\to \rho^-\ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ |  |
| `FLttot(B0->rholnu)` | $\widetilde{F}_L(B^0\to \rho^-\ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ |  |
| `I3tot(B0->rholnu)` | $I_3(B^0\to \rho^-\ell^+\nu_\ell)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ |  |
| `Rtaul(B->rholnu)` | $R_{\tau \ell}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\ell^+ \nu_\ell$ |  |
| `dBR/dcV(B0->rholnu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^0\to \rho^-\ell^+\nu_\ell)$ | $\cos\theta_V$-differential  branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `cV` |
| `dBR/dcl(B0->rholnu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^0\to \rho^-\ell^+\nu_\ell)$ | $\cos\theta_l$-differential branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `cl` |
| `dBR/dphi(B0->rholnu)` | $\frac{d\text{BR}}{d\phi}(B^0\to \rho^-\ell^+\nu_\ell)$ | $\phi$-differential branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `phi` |
| `dBR/dq2(B0->rholnu)` | $\frac{d\text{BR}}{dq^2}(B^0\to \rho^-\ell^+\nu_\ell)$ | $q^2$-differential branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `q2` |
| `dBR_L/dq2(B0->rholnu)` | $\frac{d\text{BR}_L}{dq^2}(B^0\to \rho^-\ell^+\nu_\ell)$ | Differential longitudinal branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `q2` |
| `dBR_T/dq2(B0->rholnu)` | $\frac{d\text{BR}_T}{dq^2}(B^0\to \rho^-\ell^+\nu_\ell)$ | Differential transverse branching ratio of $B^0\to \rho^-\ell^+\nu_\ell$ | `q2` |


### $B^0\to \rho^-\mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->rhomunu)` | $\langle\text{BR}\rangle(B^0\to \rho^-\mu^+\nu_\mu)$ | $q^2$-binned branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR>/<cV>(B0->rhomunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^0\to \rho^-\mu^+\nu_\mu)$ | $\cos\theta_V$-binned branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B0->rhomunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^0\to \rho^-\mu^+\nu_\mu)$ | $\cos\theta_l$-binned branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `clmin`, `clmax` |
| `<BR>/<phi>(B0->rhomunu)` | $\langle\text{BR}\rangle/\Delta\phi(B^0\to \rho^-\mu^+\nu_\mu)$ | $\phi$-binned branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `phimin`, `phimax` |
| `<BR_L>(B0->rhomunu)` | $\langle\text{BR}_L\rangle(B^0\to \rho^-\mu^+\nu_\mu)$ | Binned longitudinal branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR_T>(B0->rhomunu)` | $\langle\text{BR}_T\rangle(B^0\to \rho^-\mu^+\nu_\mu)$ | Binned transverse branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<FL>(B0->rhomunu)` | $\langle F_L\rangle(B^0\to \rho^-\mu^+\nu_\mu)$ | Binned longitudinal polarization fraction branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(B->rholnu)` | $\langle R_{\mu e} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\mu^+ \nu_\mu$ and $B\to \rhoe^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(B->rholnu)` | $\langle R_{\tau \mu} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B0->rhomunu)` | $A_\text{FB}(B^0\to \rho^-\mu^+\nu_\mu)$ | Total forward-backward asymmetry branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ |  |
| `BR(B0->rhomunu)` | $\text{BR}(B^0\to \rho^-\mu^+\nu_\mu)$ | Total branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ |  |
| `BR_L(B0->rhomunu)` | $\text{BR}_L(B^0\to \rho^-\mu^+\nu_\mu)$ | Total longitudinal branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ |  |
| `BR_T(B0->rhomunu)` | $\text{BR}_T(B^0\to \rho^-\mu^+\nu_\mu)$ | Total transverse branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ |  |
| `FL(B0->rhomunu)` | $F_L(B^0\to \rho^-\mu^+\nu_\mu)$ | Differential longitudinal polarization fraction branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `q2` |
| `FLtot(B0->rhomunu)` | $F_L(B^0\to \rho^-\mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ |  |
| `FLttot(B0->rhomunu)` | $\widetilde{F}_L(B^0\to \rho^-\mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ |  |
| `I3tot(B0->rhomunu)` | $I_3(B^0\to \rho^-\mu^+\nu_\mu)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ |  |
| `Rmue(B->rholnu)` | $R_{\mu e}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\mu^+ \nu_\mu$ and $B\to \rhoe^+ \nu_e$ |  |
| `Rtaumu(B->rholnu)` | $R_{\tau \mu}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\mu^+ \nu_\mu$ |  |
| `dBR/dcV(B0->rhomunu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^0\to \rho^-\mu^+\nu_\mu)$ | $\cos\theta_V$-differential  branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `cV` |
| `dBR/dcl(B0->rhomunu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^0\to \rho^-\mu^+\nu_\mu)$ | $\cos\theta_l$-differential branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `cl` |
| `dBR/dphi(B0->rhomunu)` | $\frac{d\text{BR}}{d\phi}(B^0\to \rho^-\mu^+\nu_\mu)$ | $\phi$-differential branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `phi` |
| `dBR/dq2(B0->rhomunu)` | $\frac{d\text{BR}}{dq^2}(B^0\to \rho^-\mu^+\nu_\mu)$ | $q^2$-differential branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `q2` |
| `dBR_L/dq2(B0->rhomunu)` | $\frac{d\text{BR}_L}{dq^2}(B^0\to \rho^-\mu^+\nu_\mu)$ | Differential longitudinal branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `q2` |
| `dBR_T/dq2(B0->rhomunu)` | $\frac{d\text{BR}_T}{dq^2}(B^0\to \rho^-\mu^+\nu_\mu)$ | Differential transverse branching ratio of $B^0\to \rho^-\mu^+\nu_\mu$ | `q2` |


### $B^0\to \rho^-\tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->rhotaunu)` | $\langle\text{BR}\rangle(B^0\to \rho^-\tau^+\nu_\tau)$ | $q^2$-binned branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR>/<cV>(B0->rhotaunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^0\to \rho^-\tau^+\nu_\tau)$ | $\cos\theta_V$-binned branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B0->rhotaunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^0\to \rho^-\tau^+\nu_\tau)$ | $\cos\theta_l$-binned branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `clmin`, `clmax` |
| `<BR>/<phi>(B0->rhotaunu)` | $\langle\text{BR}\rangle/\Delta\phi(B^0\to \rho^-\tau^+\nu_\tau)$ | $\phi$-binned branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `phimin`, `phimax` |
| `<BR_L>(B0->rhotaunu)` | $\langle\text{BR}_L\rangle(B^0\to \rho^-\tau^+\nu_\tau)$ | Binned longitudinal branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR_T>(B0->rhotaunu)` | $\langle\text{BR}_T\rangle(B^0\to \rho^-\tau^+\nu_\tau)$ | Binned transverse branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<FL>(B0->rhotaunu)` | $\langle F_L\rangle(B^0\to \rho^-\tau^+\nu_\tau)$ | Binned longitudinal polarization fraction branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(B->rholnu)` | $\langle R_{\tau \ell} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(B->rholnu)` | $\langle R_{\tau \mu} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(B0->rhotaunu)` | $A_\text{FB}(B^0\to \rho^-\tau^+\nu_\tau)$ | Total forward-backward asymmetry branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ |  |
| `BR(B0->rhotaunu)` | $\text{BR}(B^0\to \rho^-\tau^+\nu_\tau)$ | Total branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ |  |
| `BR_L(B0->rhotaunu)` | $\text{BR}_L(B^0\to \rho^-\tau^+\nu_\tau)$ | Total longitudinal branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ |  |
| `BR_T(B0->rhotaunu)` | $\text{BR}_T(B^0\to \rho^-\tau^+\nu_\tau)$ | Total transverse branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ |  |
| `FL(B0->rhotaunu)` | $F_L(B^0\to \rho^-\tau^+\nu_\tau)$ | Differential longitudinal polarization fraction branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `q2` |
| `FLtot(B0->rhotaunu)` | $F_L(B^0\to \rho^-\tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ |  |
| `FLttot(B0->rhotaunu)` | $\widetilde{F}_L(B^0\to \rho^-\tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ |  |
| `I3tot(B0->rhotaunu)` | $I_3(B^0\to \rho^-\tau^+\nu_\tau)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ |  |
| `Rtaul(B->rholnu)` | $R_{\tau \ell}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\ell^+ \nu_\ell$ |  |
| `Rtaumu(B->rholnu)` | $R_{\tau \mu}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\tau^+ \nu_\tau$ and $B\to \rho\mu^+ \nu_\mu$ |  |
| `dBR/dcV(B0->rhotaunu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^0\to \rho^-\tau^+\nu_\tau)$ | $\cos\theta_V$-differential  branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `cV` |
| `dBR/dcl(B0->rhotaunu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^0\to \rho^-\tau^+\nu_\tau)$ | $\cos\theta_l$-differential branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `cl` |
| `dBR/dphi(B0->rhotaunu)` | $\frac{d\text{BR}}{d\phi}(B^0\to \rho^-\tau^+\nu_\tau)$ | $\phi$-differential branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `phi` |
| `dBR/dq2(B0->rhotaunu)` | $\frac{d\text{BR}}{dq^2}(B^0\to \rho^-\tau^+\nu_\tau)$ | $q^2$-differential branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `q2` |
| `dBR_L/dq2(B0->rhotaunu)` | $\frac{d\text{BR}_L}{dq^2}(B^0\to \rho^-\tau^+\nu_\tau)$ | Differential longitudinal branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `q2` |
| `dBR_T/dq2(B0->rhotaunu)` | $\frac{d\text{BR}_T}{dq^2}(B^0\to \rho^-\tau^+\nu_\tau)$ | Differential transverse branching ratio of $B^0\to \rho^-\tau^+\nu_\tau$ | `q2` |


### $B^0\to \rho^-e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(B0->rhoenu)` | $\langle\text{BR}\rangle(B^0\to \rho^-e^+\nu_e)$ | $q^2$-binned branching ratio of $B^0\to \rho^-e^+\nu_e$ | `q2min`, `q2max` |
| `<BR>/<cV>(B0->rhoenu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B^0\to \rho^-e^+\nu_e)$ | $\cos\theta_V$-binned branching ratio of $B^0\to \rho^-e^+\nu_e$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(B0->rhoenu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B^0\to \rho^-e^+\nu_e)$ | $\cos\theta_l$-binned branching ratio of $B^0\to \rho^-e^+\nu_e$ | `clmin`, `clmax` |
| `<BR>/<phi>(B0->rhoenu)` | $\langle\text{BR}\rangle/\Delta\phi(B^0\to \rho^-e^+\nu_e)$ | $\phi$-binned branching ratio of $B^0\to \rho^-e^+\nu_e$ | `phimin`, `phimax` |
| `<BR_L>(B0->rhoenu)` | $\langle\text{BR}_L\rangle(B^0\to \rho^-e^+\nu_e)$ | Binned longitudinal branching ratio of $B^0\to \rho^-e^+\nu_e$ | `q2min`, `q2max` |
| `<BR_T>(B0->rhoenu)` | $\langle\text{BR}_T\rangle(B^0\to \rho^-e^+\nu_e)$ | Binned transverse branching ratio of $B^0\to \rho^-e^+\nu_e$ | `q2min`, `q2max` |
| `<FL>(B0->rhoenu)` | $\langle F_L\rangle(B^0\to \rho^-e^+\nu_e)$ | Binned longitudinal polarization fraction branching ratio of $B^0\to \rho^-e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(B->rholnu)` | $\langle R_{\mu e} \rangle(B\to \rho\ell^+\nu)$ | Ratio of partial branching ratios of $B\to \rho\mu^+ \nu_\mu$ and $B\to \rhoe^+ \nu_e$ | `q2min`, `q2max` |
| `AFBtot(B0->rhoenu)` | $A_\text{FB}(B^0\to \rho^-e^+\nu_e)$ | Total forward-backward asymmetry branching ratio of $B^0\to \rho^-e^+\nu_e$ |  |
| `BR(B0->rhoenu)` | $\text{BR}(B^0\to \rho^-e^+\nu_e)$ | Total branching ratio of $B^0\to \rho^-e^+\nu_e$ |  |
| `BR_L(B0->rhoenu)` | $\text{BR}_L(B^0\to \rho^-e^+\nu_e)$ | Total longitudinal branching ratio of $B^0\to \rho^-e^+\nu_e$ |  |
| `BR_T(B0->rhoenu)` | $\text{BR}_T(B^0\to \rho^-e^+\nu_e)$ | Total transverse branching ratio of $B^0\to \rho^-e^+\nu_e$ |  |
| `FL(B0->rhoenu)` | $F_L(B^0\to \rho^-e^+\nu_e)$ | Differential longitudinal polarization fraction branching ratio of $B^0\to \rho^-e^+\nu_e$ | `q2` |
| `FLtot(B0->rhoenu)` | $F_L(B^0\to \rho^-e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^0\to \rho^-e^+\nu_e$ |  |
| `FLttot(B0->rhoenu)` | $\widetilde{F}_L(B^0\to \rho^-e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B^0\to \rho^-e^+\nu_e$ |  |
| `I3tot(B0->rhoenu)` | $I_3(B^0\to \rho^-e^+\nu_e)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B^0\to \rho^-e^+\nu_e$ |  |
| `Rmue(B->rholnu)` | $R_{\mu e}(B\to \rho\ell^+\nu)$ | Ratio of total branching ratios of $B\to \rho\mu^+ \nu_\mu$ and $B\to \rhoe^+ \nu_e$ |  |
| `dBR/dcV(B0->rhoenu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B^0\to \rho^-e^+\nu_e)$ | $\cos\theta_V$-differential  branching ratio of $B^0\to \rho^-e^+\nu_e$ | `cV` |
| `dBR/dcl(B0->rhoenu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B^0\to \rho^-e^+\nu_e)$ | $\cos\theta_l$-differential branching ratio of $B^0\to \rho^-e^+\nu_e$ | `cl` |
| `dBR/dphi(B0->rhoenu)` | $\frac{d\text{BR}}{d\phi}(B^0\to \rho^-e^+\nu_e)$ | $\phi$-differential branching ratio of $B^0\to \rho^-e^+\nu_e$ | `phi` |
| `dBR/dq2(B0->rhoenu)` | $\frac{d\text{BR}}{dq^2}(B^0\to \rho^-e^+\nu_e)$ | $q^2$-differential branching ratio of $B^0\to \rho^-e^+\nu_e$ | `q2` |
| `dBR_L/dq2(B0->rhoenu)` | $\frac{d\text{BR}_L}{dq^2}(B^0\to \rho^-e^+\nu_e)$ | Differential longitudinal branching ratio of $B^0\to \rho^-e^+\nu_e$ | `q2` |
| `dBR_T/dq2(B0->rhoenu)` | $\frac{d\text{BR}_T}{dq^2}(B^0\to \rho^-e^+\nu_e)$ | Differential transverse branching ratio of $B^0\to \rho^-e^+\nu_e$ | `q2` |


### $B_s\to K^{* -} \ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(Bs->K*lnu)` | $\langle\text{BR}\rangle(B_s\to K^{* -} \ell^+\nu_\ell)$ | $q^2$-binned branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR>/<cV>(Bs->K*lnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B_s\to K^{* -} \ell^+\nu_\ell)$ | $\cos\theta_V$-binned branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(Bs->K*lnu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B_s\to K^{* -} \ell^+\nu_\ell)$ | $\cos\theta_l$-binned branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `clmin`, `clmax` |
| `<BR>/<phi>(Bs->K*lnu)` | $\langle\text{BR}\rangle/\Delta\phi(B_s\to K^{* -} \ell^+\nu_\ell)$ | $\phi$-binned branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `phimin`, `phimax` |
| `<BR_L>(Bs->K*lnu)` | $\langle\text{BR}_L\rangle(B_s\to K^{* -} \ell^+\nu_\ell)$ | Binned longitudinal branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<BR_T>(Bs->K*lnu)` | $\langle\text{BR}_T\rangle(B_s\to K^{* -} \ell^+\nu_\ell)$ | Binned transverse branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<FL>(Bs->K*lnu)` | $\langle F_L\rangle(B_s\to K^{* -} \ell^+\nu_\ell)$ | Binned longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `q2min`, `q2max` |
| `<Rtaul>(Bs->K*lnu)` | $\langle R_{\tau \ell} \rangle(B_s\to K^{* -} \ell^+\nu)$ | Ratio of partial branching ratios of $B_s\to K^{* -} \tau^+ \nu_\tau$ and $B_s\to K^{* -} \ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `AFBtot(Bs->K*lnu)` | $A_\text{FB}(B_s\to K^{* -} \ell^+\nu_\ell)$ | Total forward-backward asymmetry branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ |  |
| `BR(Bs->K*lnu)` | $\text{BR}(B_s\to K^{* -} \ell^+\nu_\ell)$ | Total branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ |  |
| `BR_L(Bs->K*lnu)` | $\text{BR}_L(B_s\to K^{* -} \ell^+\nu_\ell)$ | Total longitudinal branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ |  |
| `BR_T(Bs->K*lnu)` | $\text{BR}_T(B_s\to K^{* -} \ell^+\nu_\ell)$ | Total transverse branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ |  |
| `FL(Bs->K*lnu)` | $F_L(B_s\to K^{* -} \ell^+\nu_\ell)$ | Differential longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `q2` |
| `FLtot(Bs->K*lnu)` | $F_L(B_s\to K^{* -} \ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ |  |
| `FLttot(Bs->K*lnu)` | $\widetilde{F}_L(B_s\to K^{* -} \ell^+\nu_\ell)$ | Total longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ |  |
| `I3tot(Bs->K*lnu)` | $I_3(B_s\to K^{* -} \ell^+\nu_\ell)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ |  |
| `Rtaul(Bs->K*lnu)` | $R_{\tau \ell}(B_s\to K^{* -} \ell^+\nu)$ | Ratio of total branching ratios of $B_s\to K^{* -} \tau^+ \nu_\tau$ and $B_s\to K^{* -} \ell^+ \nu_\ell$ |  |
| `dBR/dcV(Bs->K*lnu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B_s\to K^{* -} \ell^+\nu_\ell)$ | $\cos\theta_V$-differential  branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `cV` |
| `dBR/dcl(Bs->K*lnu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B_s\to K^{* -} \ell^+\nu_\ell)$ | $\cos\theta_l$-differential branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `cl` |
| `dBR/dphi(Bs->K*lnu)` | $\frac{d\text{BR}}{d\phi}(B_s\to K^{* -} \ell^+\nu_\ell)$ | $\phi$-differential branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `phi` |
| `dBR/dq2(Bs->K*lnu)` | $\frac{d\text{BR}}{dq^2}(B_s\to K^{* -} \ell^+\nu_\ell)$ | $q^2$-differential branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `q2` |
| `dBR_L/dq2(Bs->K*lnu)` | $\frac{d\text{BR}_L}{dq^2}(B_s\to K^{* -} \ell^+\nu_\ell)$ | Differential longitudinal branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `q2` |
| `dBR_T/dq2(Bs->K*lnu)` | $\frac{d\text{BR}_T}{dq^2}(B_s\to K^{* -} \ell^+\nu_\ell)$ | Differential transverse branching ratio of $B_s\to K^{* -} \ell^+\nu_\ell$ | `q2` |


### $B_s\to K^{* -} \mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(Bs->K*munu)` | $\langle\text{BR}\rangle(B_s\to K^{* -} \mu^+\nu_\mu)$ | $q^2$-binned branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR>/<cV>(Bs->K*munu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B_s\to K^{* -} \mu^+\nu_\mu)$ | $\cos\theta_V$-binned branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(Bs->K*munu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B_s\to K^{* -} \mu^+\nu_\mu)$ | $\cos\theta_l$-binned branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `clmin`, `clmax` |
| `<BR>/<phi>(Bs->K*munu)` | $\langle\text{BR}\rangle/\Delta\phi(B_s\to K^{* -} \mu^+\nu_\mu)$ | $\phi$-binned branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `phimin`, `phimax` |
| `<BR_L>(Bs->K*munu)` | $\langle\text{BR}_L\rangle(B_s\to K^{* -} \mu^+\nu_\mu)$ | Binned longitudinal branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<BR_T>(Bs->K*munu)` | $\langle\text{BR}_T\rangle(B_s\to K^{* -} \mu^+\nu_\mu)$ | Binned transverse branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<FL>(Bs->K*munu)` | $\langle F_L\rangle(B_s\to K^{* -} \mu^+\nu_\mu)$ | Binned longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `q2min`, `q2max` |
| `<Rmue>(Bs->K*lnu)` | $\langle R_{\mu e} \rangle(B_s\to K^{* -} \ell^+\nu)$ | Ratio of partial branching ratios of $B_s\to K^{* -} \mu^+ \nu_\mu$ and $B_s\to K^{* -} e^+ \nu_e$ | `q2min`, `q2max` |
| `<Rtaumu>(Bs->K*lnu)` | $\langle R_{\tau \mu} \rangle(B_s\to K^{* -} \ell^+\nu)$ | Ratio of partial branching ratios of $B_s\to K^{* -} \tau^+ \nu_\tau$ and $B_s\to K^{* -} \mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(Bs->K*munu)` | $A_\text{FB}(B_s\to K^{* -} \mu^+\nu_\mu)$ | Total forward-backward asymmetry branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ |  |
| `BR(Bs->K*munu)` | $\text{BR}(B_s\to K^{* -} \mu^+\nu_\mu)$ | Total branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ |  |
| `BR_L(Bs->K*munu)` | $\text{BR}_L(B_s\to K^{* -} \mu^+\nu_\mu)$ | Total longitudinal branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ |  |
| `BR_T(Bs->K*munu)` | $\text{BR}_T(B_s\to K^{* -} \mu^+\nu_\mu)$ | Total transverse branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ |  |
| `FL(Bs->K*munu)` | $F_L(B_s\to K^{* -} \mu^+\nu_\mu)$ | Differential longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `q2` |
| `FLtot(Bs->K*munu)` | $F_L(B_s\to K^{* -} \mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ |  |
| `FLttot(Bs->K*munu)` | $\widetilde{F}_L(B_s\to K^{* -} \mu^+\nu_\mu)$ | Total longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ |  |
| `I3tot(Bs->K*munu)` | $I_3(B_s\to K^{* -} \mu^+\nu_\mu)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ |  |
| `Rmue(Bs->K*lnu)` | $R_{\mu e}(B_s\to K^{* -} \ell^+\nu)$ | Ratio of total branching ratios of $B_s\to K^{* -} \mu^+ \nu_\mu$ and $B_s\to K^{* -} e^+ \nu_e$ |  |
| `Rtaumu(Bs->K*lnu)` | $R_{\tau \mu}(B_s\to K^{* -} \ell^+\nu)$ | Ratio of total branching ratios of $B_s\to K^{* -} \tau^+ \nu_\tau$ and $B_s\to K^{* -} \mu^+ \nu_\mu$ |  |
| `dBR/dcV(Bs->K*munu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B_s\to K^{* -} \mu^+\nu_\mu)$ | $\cos\theta_V$-differential  branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `cV` |
| `dBR/dcl(Bs->K*munu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B_s\to K^{* -} \mu^+\nu_\mu)$ | $\cos\theta_l$-differential branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `cl` |
| `dBR/dphi(Bs->K*munu)` | $\frac{d\text{BR}}{d\phi}(B_s\to K^{* -} \mu^+\nu_\mu)$ | $\phi$-differential branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `phi` |
| `dBR/dq2(Bs->K*munu)` | $\frac{d\text{BR}}{dq^2}(B_s\to K^{* -} \mu^+\nu_\mu)$ | $q^2$-differential branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `q2` |
| `dBR_L/dq2(Bs->K*munu)` | $\frac{d\text{BR}_L}{dq^2}(B_s\to K^{* -} \mu^+\nu_\mu)$ | Differential longitudinal branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `q2` |
| `dBR_T/dq2(Bs->K*munu)` | $\frac{d\text{BR}_T}{dq^2}(B_s\to K^{* -} \mu^+\nu_\mu)$ | Differential transverse branching ratio of $B_s\to K^{* -} \mu^+\nu_\mu$ | `q2` |


### $B_s\to K^{* -} \tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(Bs->K*taunu)` | $\langle\text{BR}\rangle(B_s\to K^{* -} \tau^+\nu_\tau)$ | $q^2$-binned branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR>/<cV>(Bs->K*taunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B_s\to K^{* -} \tau^+\nu_\tau)$ | $\cos\theta_V$-binned branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(Bs->K*taunu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B_s\to K^{* -} \tau^+\nu_\tau)$ | $\cos\theta_l$-binned branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `clmin`, `clmax` |
| `<BR>/<phi>(Bs->K*taunu)` | $\langle\text{BR}\rangle/\Delta\phi(B_s\to K^{* -} \tau^+\nu_\tau)$ | $\phi$-binned branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `phimin`, `phimax` |
| `<BR_L>(Bs->K*taunu)` | $\langle\text{BR}_L\rangle(B_s\to K^{* -} \tau^+\nu_\tau)$ | Binned longitudinal branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<BR_T>(Bs->K*taunu)` | $\langle\text{BR}_T\rangle(B_s\to K^{* -} \tau^+\nu_\tau)$ | Binned transverse branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<FL>(Bs->K*taunu)` | $\langle F_L\rangle(B_s\to K^{* -} \tau^+\nu_\tau)$ | Binned longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `q2min`, `q2max` |
| `<Rtaul>(Bs->K*lnu)` | $\langle R_{\tau \ell} \rangle(B_s\to K^{* -} \ell^+\nu)$ | Ratio of partial branching ratios of $B_s\to K^{* -} \tau^+ \nu_\tau$ and $B_s\to K^{* -} \ell^+ \nu_\ell$ | `q2min`, `q2max` |
| `<Rtaumu>(Bs->K*lnu)` | $\langle R_{\tau \mu} \rangle(B_s\to K^{* -} \ell^+\nu)$ | Ratio of partial branching ratios of $B_s\to K^{* -} \tau^+ \nu_\tau$ and $B_s\to K^{* -} \mu^+ \nu_\mu$ | `q2min`, `q2max` |
| `AFBtot(Bs->K*taunu)` | $A_\text{FB}(B_s\to K^{* -} \tau^+\nu_\tau)$ | Total forward-backward asymmetry branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ |  |
| `BR(Bs->K*taunu)` | $\text{BR}(B_s\to K^{* -} \tau^+\nu_\tau)$ | Total branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ |  |
| `BR_L(Bs->K*taunu)` | $\text{BR}_L(B_s\to K^{* -} \tau^+\nu_\tau)$ | Total longitudinal branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ |  |
| `BR_T(Bs->K*taunu)` | $\text{BR}_T(B_s\to K^{* -} \tau^+\nu_\tau)$ | Total transverse branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ |  |
| `FL(Bs->K*taunu)` | $F_L(B_s\to K^{* -} \tau^+\nu_\tau)$ | Differential longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `q2` |
| `FLtot(Bs->K*taunu)` | $F_L(B_s\to K^{* -} \tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ |  |
| `FLttot(Bs->K*taunu)` | $\widetilde{F}_L(B_s\to K^{* -} \tau^+\nu_\tau)$ | Total longitudinal polarization fraction branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ |  |
| `I3tot(Bs->K*taunu)` | $I_3(B_s\to K^{* -} \tau^+\nu_\tau)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ |  |
| `Rtaul(Bs->K*lnu)` | $R_{\tau \ell}(B_s\to K^{* -} \ell^+\nu)$ | Ratio of total branching ratios of $B_s\to K^{* -} \tau^+ \nu_\tau$ and $B_s\to K^{* -} \ell^+ \nu_\ell$ |  |
| `Rtaumu(Bs->K*lnu)` | $R_{\tau \mu}(B_s\to K^{* -} \ell^+\nu)$ | Ratio of total branching ratios of $B_s\to K^{* -} \tau^+ \nu_\tau$ and $B_s\to K^{* -} \mu^+ \nu_\mu$ |  |
| `dBR/dcV(Bs->K*taunu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B_s\to K^{* -} \tau^+\nu_\tau)$ | $\cos\theta_V$-differential  branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `cV` |
| `dBR/dcl(Bs->K*taunu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B_s\to K^{* -} \tau^+\nu_\tau)$ | $\cos\theta_l$-differential branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `cl` |
| `dBR/dphi(Bs->K*taunu)` | $\frac{d\text{BR}}{d\phi}(B_s\to K^{* -} \tau^+\nu_\tau)$ | $\phi$-differential branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `phi` |
| `dBR/dq2(Bs->K*taunu)` | $\frac{d\text{BR}}{dq^2}(B_s\to K^{* -} \tau^+\nu_\tau)$ | $q^2$-differential branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `q2` |
| `dBR_L/dq2(Bs->K*taunu)` | $\frac{d\text{BR}_L}{dq^2}(B_s\to K^{* -} \tau^+\nu_\tau)$ | Differential longitudinal branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `q2` |
| `dBR_T/dq2(Bs->K*taunu)` | $\frac{d\text{BR}_T}{dq^2}(B_s\to K^{* -} \tau^+\nu_\tau)$ | Differential transverse branching ratio of $B_s\to K^{* -} \tau^+\nu_\tau$ | `q2` |


### $B_s\to K^{* -} e^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `<BR>(Bs->K*enu)` | $\langle\text{BR}\rangle(B_s\to K^{* -} e^+\nu_e)$ | $q^2$-binned branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `q2min`, `q2max` |
| `<BR>/<cV>(Bs->K*enu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_V(B_s\to K^{* -} e^+\nu_e)$ | $\cos\theta_V$-binned branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `cVmin`, `cVmax` |
| `<BR>/<cl>(Bs->K*enu)` | $\langle\text{BR}\rangle/\Delta\cos\theta_l(B_s\to K^{* -} e^+\nu_e)$ | $\cos\theta_l$-binned branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `clmin`, `clmax` |
| `<BR>/<phi>(Bs->K*enu)` | $\langle\text{BR}\rangle/\Delta\phi(B_s\to K^{* -} e^+\nu_e)$ | $\phi$-binned branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `phimin`, `phimax` |
| `<BR_L>(Bs->K*enu)` | $\langle\text{BR}_L\rangle(B_s\to K^{* -} e^+\nu_e)$ | Binned longitudinal branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `q2min`, `q2max` |
| `<BR_T>(Bs->K*enu)` | $\langle\text{BR}_T\rangle(B_s\to K^{* -} e^+\nu_e)$ | Binned transverse branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `q2min`, `q2max` |
| `<FL>(Bs->K*enu)` | $\langle F_L\rangle(B_s\to K^{* -} e^+\nu_e)$ | Binned longitudinal polarization fraction branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `q2min`, `q2max` |
| `<Rmue>(Bs->K*lnu)` | $\langle R_{\mu e} \rangle(B_s\to K^{* -} \ell^+\nu)$ | Ratio of partial branching ratios of $B_s\to K^{* -} \mu^+ \nu_\mu$ and $B_s\to K^{* -} e^+ \nu_e$ | `q2min`, `q2max` |
| `AFBtot(Bs->K*enu)` | $A_\text{FB}(B_s\to K^{* -} e^+\nu_e)$ | Total forward-backward asymmetry branching ratio of $B_s\to K^{* -} e^+\nu_e$ |  |
| `BR(Bs->K*enu)` | $\text{BR}(B_s\to K^{* -} e^+\nu_e)$ | Total branching ratio of $B_s\to K^{* -} e^+\nu_e$ |  |
| `BR_L(Bs->K*enu)` | $\text{BR}_L(B_s\to K^{* -} e^+\nu_e)$ | Total longitudinal branching ratio of $B_s\to K^{* -} e^+\nu_e$ |  |
| `BR_T(Bs->K*enu)` | $\text{BR}_T(B_s\to K^{* -} e^+\nu_e)$ | Total transverse branching ratio of $B_s\to K^{* -} e^+\nu_e$ |  |
| `FL(Bs->K*enu)` | $F_L(B_s\to K^{* -} e^+\nu_e)$ | Differential longitudinal polarization fraction branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `q2` |
| `FLtot(Bs->K*enu)` | $F_L(B_s\to K^{* -} e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B_s\to K^{* -} e^+\nu_e$ |  |
| `FLttot(Bs->K*enu)` | $\widetilde{F}_L(B_s\to K^{* -} e^+\nu_e)$ | Total longitudinal polarization fraction branching ratio of $B_s\to K^{* -} e^+\nu_e$ |  |
| `I3tot(Bs->K*enu)` | $I_3(B_s\to K^{* -} e^+\nu_e)$ | $q^2$-integrated angular coefficient $I_3$ branching ratio of $B_s\to K^{* -} e^+\nu_e$ |  |
| `Rmue(Bs->K*lnu)` | $R_{\mu e}(B_s\to K^{* -} \ell^+\nu)$ | Ratio of total branching ratios of $B_s\to K^{* -} \mu^+ \nu_\mu$ and $B_s\to K^{* -} e^+ \nu_e$ |  |
| `dBR/dcV(Bs->K*enu)` | $\frac{d\text{BR}}{d\cos\theta_V}(B_s\to K^{* -} e^+\nu_e)$ | $\cos\theta_V$-differential  branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `cV` |
| `dBR/dcl(Bs->K*enu)` | $\frac{d\text{BR}}{d\cos\theta_l}(B_s\to K^{* -} e^+\nu_e)$ | $\cos\theta_l$-differential branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `cl` |
| `dBR/dphi(Bs->K*enu)` | $\frac{d\text{BR}}{d\phi}(B_s\to K^{* -} e^+\nu_e)$ | $\phi$-differential branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `phi` |
| `dBR/dq2(Bs->K*enu)` | $\frac{d\text{BR}}{dq^2}(B_s\to K^{* -} e^+\nu_e)$ | $q^2$-differential branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `q2` |
| `dBR_L/dq2(Bs->K*enu)` | $\frac{d\text{BR}_L}{dq^2}(B_s\to K^{* -} e^+\nu_e)$ | Differential longitudinal branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `q2` |
| `dBR_T/dq2(Bs->K*enu)` | $\frac{d\text{BR}_T}{dq^2}(B_s\to K^{* -} e^+\nu_e)$ | Differential transverse branching ratio of $B_s\to K^{* -} e^+\nu_e$ | `q2` |


## $B\to X\ell\nu$

### $B\to X_c\ell^+\nu_\ell$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `BR(B->Xclnu)` | $\text{BR}(B\to X_c\ell^+\nu_\ell)$ | Total branching ratio of $B\to X_c\ell^+\nu_\ell$ |  |
| `Rtaul(B->Xclnu)` | $R_{\tau \ell}(B\to X_c\ell^+\nu)$ | Ratio of total branching ratios of $B\to X_c\tau^+\nu_\tau$ and $B\to X_c\ell^+\nu_\ell$ |  |


### $B\to X_c\mu^+\nu_\mu$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `BR(B->Xcmunu)` | $\text{BR}(B\to X_c\mu^+\nu_\mu)$ | Total branching ratio of $B\to X_c\mu^+\nu_\mu$ |  |
| `Rmue(B->Xclnu)` | $R_{\mu e}(B\to X_c\ell^+\nu)$ | Ratio of total branching ratios of $B\to X_c\mu^+\nu_\mu$ and $B\to X_ce^+\nu_e$ |  |
| `Rtaumu(B->Xclnu)` | $R_{\tau \mu}(B\to X_c\ell^+\nu)$ | Ratio of total branching ratios of $B\to X_c\tau^+\nu_\tau$ and $B\to X_c\mu^+\nu_\mu$ |  |


### $B\to X_c\tau^+\nu_\tau$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `BR(B->Xctaunu)` | $\text{BR}(B\to X_c\tau^+\nu_\tau)$ | Total branching ratio of $B\to X_c\tau^+\nu_\tau$ |  |
| `Rtaul(B->Xclnu)` | $R_{\tau \ell}(B\to X_c\ell^+\nu)$ | Ratio of total branching ratios of $B\to X_c\tau^+\nu_\tau$ and $B\to X_c\ell^+\nu_\ell$ |  |
| `Rtaumu(B->Xclnu)` | $R_{\tau \mu}(B\to X_c\ell^+\nu)$ | Ratio of total branching ratios of $B\to X_c\tau^+\nu_\tau$ and $B\to X_c\mu^+\nu_\mu$ |  |


### $B\to X_ce^+\nu_e$

{: class="table"}
| Name | Symbol | Description | Arguments |
|------|--------|-------------|-----------|
| `BR(B->Xcenu)` | $\text{BR}(B\to X_ce^+\nu_e)$ | Total branching ratio of $B\to X_ce^+\nu_e$ |  |
| `Rmue(B->Xclnu)` | $R_{\mu e}(B\to X_c\ell^+\nu)$ | Ratio of total branching ratios of $B\to X_c\mu^+\nu_\mu$ and $B\to X_ce^+\nu_e$ |  |


