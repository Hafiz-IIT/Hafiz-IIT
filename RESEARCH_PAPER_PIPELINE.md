# Research Paper Pipeline

## Priority order and evidence maturity

| Priority | Research line | What currently exists | Next publication-grade requirement |
|---|---|---|---|
| 1 | Evidence-Gated Autonomy | Versioned synthetic benchmarks, reconstruction runners, adversarial/provenance experiments, v2-v5 extensions, manuscript and CI compilation | Resolve historical-versus-reconstructed result lineage, strengthen OOD/sensitivity analysis, complete real-model Experiment 3, independent review and final claim reconciliation |
| 2 | Agent Evidence Probes | Executable evidence-sufficiency benchmark and tests | Broaden benchmark families, quantify failure modes and establish a distinct contribution |
| 3 | Memory Governance | Implemented memory lifecycle/provenance policy prototype | Formal threat model, adversarial retention/retrieval benchmark and measured trade-offs |
| 4 | Safe RL Action Gate | Executable deterministic action-gating prototype | Matched control baselines, dynamic constraints, disturbance/uncertainty sweeps and clearly bounded safety claims |
| 5 | Multilingual Reliability | Paired multilingual benchmark scaffold | Document language coverage, dataset provenance, native-speaker validation, model/version freeze and statistical analysis |
| 6 | EXIM Document Truth | Synthetic cross-document consistency benchmark | Expand realistic document variation, independent data review and per-family error analysis |
| 7 | Koopman prediction | Completed scalar synthetic EDMD-style prediction pilot across five maps and ten seeds | Ridge/sample-size/noise sensitivity, paired uncertainty analysis, higher-dimensional systems and a separate control/MPC study if claimed |
| 8 | EXIM multimodal cargo framework | Proposed evidence-centered architecture and research protocol | Executable end-to-end benchmark, lawful real/de-identified data, physical sensor validation and operational integration |
| 9 | Residual control | Scalar linear baseline plus fixed deterministic residual | Implement and train an actual residual policy; do not claim RL or statistical priors before they exist |
| 10 | Bayesian uncertainty gate | Scalar Normal-Normal posterior and interval decision gate | Calibration, prior-misspecification, distribution-shift and sequential-control experiments; no formal safety guarantee currently |
| 11 | Hybrid control | Scalar linear feedback plus fixed cubic residual | Implement a genuine Riccati-derived LQR controller and a trained residual policy; measure stability and robustness |

## Publication rule

A repository becomes a preprint candidate only when the contribution, methodology, results, limitations, references and reproducibility package are sufficiently complete. A research idea, manuscript scaffold or successful LaTeX build is **not** automatically a paper.

Use the evidence ladder consistently:

**concept → architecture → implementation → tested → reproducible → experimentally validated → externally validated → deployed**

Only claim the highest state supported by inspectable repository evidence.

## Current control / robotics manuscript set

The companion manuscripts compile in GitHub Actions, but their scientific maturity differs:

- [Residual Control with a Fixed Linear Baseline: A Research Protocol for Robotics](https://github.com/Hafiz-IIT/residual-rl-linear-priors-paper) — protocol/scaffold; no trained RL policy or empirical superiority result.
- [Koopman-Lifted Prediction of Scalar Nonlinear Dynamics: A Reproducible Synthetic Benchmark](https://github.com/Hafiz-IIT/koopman-control-paper) — completed scalar synthetic prediction pilot; not a control/MPC or physical robotics result.
- [Bayesian Uncertainty Gates for Conservative Action Authorization: A Scalar Prototype](https://github.com/Hafiz-IIT/bayesian-safe-rl-paper) — scalar Bayesian decision-gate prototype; not a complete Bayesian RL algorithm or safety certificate.
- [Hybrid Linear Feedback with a Fixed Residual: A Research Protocol for Robotic Control](https://github.com/Hafiz-IIT/hybrid-lqr-rl-paper) — scalar fixed-residual protocol; not a Riccati-solved LQR or deep-RL implementation.

A successful manuscript workflow confirms source-file checks and LaTeX compilation only. It does not imply empirical results, peer review, formal safety, or publication readiness.

## Evidence-Gated Autonomy

**Current manuscript:** *Evidence-Gated Autonomy: A Synthetic Benchmark for Consequential Action Authorization Under Uncertain and Compromised Evidence.*

EGA remains the strongest research line and the first preprint candidate, but it is **not ready for submission**. The repository now separates:
- historical v0.3 reported results whose exact original experiment source was not fully recovered;
- newly versioned reconstruction v1/v2 studies, which are not exact historical reproductions;
- later synthetic extensions for document-root attestation and Evidence-Trust v2/v3, Evidence-Provenance v4 and Dependency-Graph v5;
- Experiment 3's blinded real-model harness, for which no external model/API results are yet claimed.

The literature boundary is narrow: do not claim invention of AI control, scalable oversight, cryptographic provenance, separation of duties, independent corroboration or graph-aware quorum admission. The defensible contribution is an EXIM-inspired synthetic benchmark and empirical comparison of evidence-chain failure modes and authorization policies. The prior-art review must be refreshed immediately before manuscript freeze.

## Research-paper standard

Every paper should have:

1. a precise research question and falsifiable hypotheses;
2. novelty positioning against current prior work;
3. formal problem definition and explicit assumptions;
4. reproducible methodology and frozen configurations;
5. meaningful baselines and ablations;
6. appropriate metrics and uncertainty analysis;
7. negative results and per-family error analysis where applicable;
8. threats to validity and limitations;
9. a claim/evidence ledger linking every quantitative claim to source outputs;
10. searchable PDF and machine-readable bibliography;
11. reproducibility instructions and immutable output hashes;
12. a clear distinction between demonstrated and proposed work.

## Release sequence

**Frozen implementation and data → experiment rerun → results/claim audit → literature/prior-art audit → reproducibility freeze → PDF compilation → independent review → author review → preprint submission.**

Do not create publication claims before the underlying evidence package is frozen.
