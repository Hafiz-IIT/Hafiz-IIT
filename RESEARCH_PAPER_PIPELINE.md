# Research Paper Pipeline

## Priority order

| Priority | Research line | Evidence maturity | Publication path |
|---|---|---|---|
| 1 | Evidence-Gated Autonomy | **Strongest** — executable benchmark, results, adversarial/provenance experiments, manuscript + LaTeX | arXiv v1 first |
| 2 | Agent Evidence Probes | Executable benchmark; narrower contribution | strengthen experiments → manuscript |
| 3 | Memory Governance | Executable retention/provenance policy | benchmark + threat model → manuscript |
| 4 | Safe RL Action Gate | Executable control research + staged protocols | expand empirical evaluation → manuscript |
| 5 | Multilingual Reliability | Executable paired benchmark | expand languages/metrics → manuscript |
| 6 | EXIM Document Truth | Executable synthetic benchmark | consolidate with EXIM evidence line or separate paper |
| 7 | Residual RL with Linear Priors | deterministic residual-control scaffold + protocol | implement/train a residual policy and run matched robotic/control benchmarks |
| 8 | Koopman-Based Linear Embeddings | scalar EDMD-style lab + protocol | extend systems, baselines and out-of-range experiments |
| 9 | Bayesian Priors for Safe RL | scalar Gaussian posterior gate + protocol | evaluate calibration, false-allow/false-block trade-offs and shift |
| 10 | Hybrid LQR + Deep RL | scalar fixed-residual simulator + protocol | implement a valid LQR design and trained residual policy |
| 11 | Cargo Multimodal Framework | architecture manuscript + synthetic evaluation protocol | strengthen with reproducible document/cargo benchmarks; no physical scanner claim |

## Publication rule

A repository becomes an arXiv candidate only when the contribution, methodology, results, limitations, references and reproducibility package are sufficiently complete.

A research idea or manuscript scaffold is **not** automatically a paper.

## Current control / robotics manuscript set

Four companion manuscripts are in preparation and have LaTeX source, verified foundational references, experiment protocols, results schemas, and CI compilation:

- [Residual Reinforcement Learning with Linear Statistical Priors for Robotic Automation](https://github.com/Hafiz-IIT/residual-rl-linear-priors-paper)
- [Koopman-Based Linear Embeddings for Control of Automated Agents](https://github.com/Hafiz-IIT/koopman-control-paper)
- [Bayesian Linear Models as Priors for Safe Reinforcement Learning in Robotics](https://github.com/Hafiz-IIT/bayesian-safe-rl-paper)
- [Hybrid Control Architectures: Merging LQR and Deep RL for Robust Robot Autonomy](https://github.com/Hafiz-IIT/hybrid-lqr-rl-paper)

These are **not publication-ready yet**: current companion implementations are deliberately small scalar prototypes, and the result manifests remain marked not_run. Their titles preserve the research directions; they do not imply that trained RL, physical robotics, or formal safety guarantees are already implemented.

## EGA v1

Current first submission candidate:

**Evidence-Gated Autonomy: A Synthetic Benchmark for Consequential Action Authorization Under Uncertain and Compromised Evidence**

The EGA repository already contains the strongest evidence package and the arXiv-ready LaTeX manuscript.

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
