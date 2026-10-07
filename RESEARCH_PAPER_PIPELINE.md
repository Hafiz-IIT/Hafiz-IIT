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
| 7 | Cargo Multimodal Framework | manuscript scaffold + supporting prototype | only after stronger empirical grounding |

## Publication rule

A repository becomes an arXiv candidate only when the contribution, methodology, results, limitations, references and reproducibility package are sufficiently complete.

A research idea or manuscript scaffold is **not** automatically a paper.

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
