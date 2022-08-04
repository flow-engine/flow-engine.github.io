---
layout: default
title: Operators
---

# Operator bases

New physics contributions are always defined as contributions to dimension-6
operators in an effective field theory (EFT) in the $\overline{\text{MS}}$ renormalization scheme with naive dimensional regularization.

flavio follows the conventions of the [Wilson coefficient exchange format (WCxf)](https://wcxf.github.io) that facilitates the exchange of Wilson coefficient values between different codes. New physics contributions in flavio can be specified in the weak effective theory (WET) for processes below
the electroweak scale and the Standard Model effective field theory (SMEFT) for processes at or above the electroweak scale. Internally, the `flavio` basis is used for WET and the `Warsaw` basis for SMEFT. The full list of operators can be found in these PDF files:

- [List of operators in the flavio WET basis (PDF)](https://wcxf.github.io/assets/pdf/WET.flavio.pdf)
- [List of operators in the Warsaw SMEFT basis (PDF)](https://wcxf.github.io/assets/pdf/SMEFT.Warsaw.pdf)
