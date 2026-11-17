# Research Paper Pipeline

## Priority order

| Priority | Research line | Evidence maturity | Publication path |
|---|---|---|---|
| 1 | Evidence-Gated Autonomy | **Strongest** — executable benchmark, v5 threat matrix/results, adversarial/provenance experiments, manuscript + LaTeX | freeze reproducibility → independent prior-art/manuscript review → submit only if evidence and claims survive review |
| 2 | Agent Evidence Probes | Executable benchmark; narrower contribution | strengthen experiments → manuscript |
| 3 | Memory Governance | Executable retention/provenance policy | benchmark + threat model → manuscript |
| 4 | One-step Safety Action Gate | Executable deterministic state-constraint gate | add uncertainty, disturbances, model-mismatch evaluation before any robust-safety claim |
| 5 | Multilingual Reliability | Executable paired benchmark | expand languages/metrics → manuscript |
| 6 | EXIM Document Truth | Executable synthetic benchmark | consolidate with EXIM evidence line or separate paper |
| 7 | Residual Control with Linear Priors | deterministic scalar residual-control scaffold + protocol | implement/train a residual policy and run matched control benchmarks |
| 8 | Koopman-Lifted Prediction | scalar EDMD-style prediction lab + protocol | extend systems, baselines and out-of-range experiments before attempting control |
| 9 | Bayesian Uncertainty Gates | scalar Gaussian posterior action gate + protocol | evaluate calibration, false-allow/false-block trade-offs and shift |
| 10 | Hybrid Linear Feedback + Fixed Residual | scalar proportional baseline and fixed residual + protocol | implement a valid LQR design and trained residual policy before using LQR/Deep-RL claims |
| 11 | Cargo Multimodal Framework | architecture manuscript + synthetic evaluation protocol | strengthen with reproducible document/cargo benchmarks; no physical scanner claim |

## Publication rule

A repository becomes an arXiv candidate only when the contribution, methodology, results, limitations, references and reproducibility package are sufficiently complete.

A research idea or manuscript scaffold is **not** automatically a paper.

## Current control / robotics manuscript set

Four companion manuscripts are in preparation and have LaTeX source, foundational references, experiment protocols, results schemas, and CI compilation. Only the Koopman companion currently reports a completed synthetic prediction experiment; the residual, Bayesian-gating and hybrid-control manuscripts remain protocol/scaffold papers with no empirical results:

- [Residual Control with Linear Statistical Priors: A Research Protocol for Robotics](https://github.com/Hafiz-IIT/residual-rl-linear-priors-paper)
- [Koopman-Lifted Prediction of Scalar Nonlinear Dynamics: A Reproducible Synthetic Benchmark](https://github.com/Hafiz-IIT/koopman-control-paper)
- [Bayesian Uncertainty Gates for Conservative Action Authorization: A Scalar Prototype](https://github.com/Hafiz-IIT/bayesian-safe-rl-paper)
- [Hybrid Linear Feedback with a Fixed Residual: A Research Protocol for Robotic Control](https://github.com/Hafiz-IIT/hybrid-lqr-rl-paper)

These are **not publication-ready yet**. The Koopman paper reports a synthetic scalar prediction pilot; the other three remain research protocols without trained RL or comparative empirical results. None establishes physical-robot performance or formal safety guarantees.

## EGA — current v5 submission candidate

Current priority candidate:

**Evidence-Gated Autonomy: A Synthetic Benchmark for Consequential Action Authorization Under Uncertain and Compromised Evidence**

The EGA repository contains the strongest evidence package and the current v5 manuscript/results. It remains an arXiv candidate pending a final reproducibility freeze, independent manuscript/prior-art review, and author approval.

## Research-paper standard

Every paper should have:

1. precise research question;
2. novelty/positioning against prior work;
3. formal problem definition;
4. reproducible methodology;
5. baselines;
6. metrics;
7. ablations/negative results where applicable;
8. threats to validity;
9. limitations;
10. claim/evidence ledger;
11. searchable PDF;
12. machine-readable bibliography;
13. reproducibility instructions;
14. clear distinction between demonstrated and proposed work.

## Release sequence

**GitHub artifact → manuscript audit → literature/prior-art audit → reproducibility freeze → PDF compilation → author review → arXiv submission → public arXiv identifier → Google Scholar discovery/profile → later journal/conference submission where appropriate.**

Do not reverse this order by creating publication claims before the underlying artifact is frozen.
