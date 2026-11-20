# GitHub Repository Audit — 20 November 2026

## Scope and method

The linked GitHub account exposes **34 repositories**: 33 project repositories and one profile/portfolio repository. The audit excluded every `README.md` file, as requested.

This pass:
- inventoried repository trees and identified the purpose of each project from its source, tests and project documentation;
- reviewed primary implementation modules, benchmark/data files, research protocols, claims/limitations ledgers and manuscript sources;
- inspected default-branch GitHub Actions results and the active audit/research pull-request checks;
- corrected concrete code, data, test and research-framing defects on dedicated branches;
- left all changes in open draft pull requests. **Nothing was merged into `main`.**

This is a substantial engineering and research audit, not a claim of formal verification or line-by-line proof of all 34 codebases. CI success means the repository's configured tests passed; it does not prove scientific validity, production readiness, security, or deployment.

## Repository inventory and audit status

| # | Repository | What it is / why it exists | Audit finding or work completed | Validation |
|---:|---|---|---|---|
| 1 | [resturant-order-management](https://github.com/Hafiz-IIT/resturant-order-management) | Node/Express restaurant menu, ordering, feedback and admin workflow. | Case-sensitive imports and route wiring were corrected. Admin authentication, password hashing, authorization and runtime boot coverage remain security priorities; do not use with real customer data yet. | Main CI and current audit PR checks passed. |
| 2 | [Smart-City-Management-Management](https://github.com/Hafiz-IIT/Smart-City-Management-Management) | Python smart-city incident and operations dashboard. | Import/template paths and CI smoke-test setup were corrected. Sensor values are synthetic/random and incident categorization is heuristic, not a validated prediction system. | Main CI and audit PR checks passed. |
| 3 | [EXIM-AI-Evidence-Gated-Autonomy](https://github.com/Hafiz-IIT/EXIM-AI-Evidence-Gated-Autonomy) | Flagship research testbed for evidence-grounded action authorization under flawed, stale, forged or compromised evidence. | Tier 1 synthetic experiments and v2–v5 research extensions are preserved on stacked branches. The v3 honest-baseline false-block rate of 50% remains an important unresolved usability issue; historical outputs and reconstructed experiments must not be conflated. | Main CI and checked v2/v3/v4/v5/Experiment 3/Tier 2 PR checks passed at the latest inspected heads. |
| 4 | [agent-evidence-probes](https://github.com/Hafiz-IIT/agent-evidence-probes) | Evidence sufficiency, freshness, conflict and provenance boundary tests for agents. | Tier 2 60-case dataset and unified provider runner added. An unsupported OpenAI/Groq request field was removed; provider payload tests and conditional-rate documentation were added. | Main CI, Tier 2 runner PR and freshness PR passed. A stacked Tier 1 PR has passing PR-merge checks; its standalone push job fails when run without its prerequisite base branch. |
| 5 | [memory-governor](https://github.com/Hafiz-IIT/memory-governor) | Memory lifecycle, expiry, supersession and authorization-state governance. | Atomic supersession and temporal validity hardening added on an audit branch. Tier 2 has 15 constructed cases with explicit context, retrieved-memory and current-request transcript events. The shared runner presents this transcript in one API request; it does not simulate persistent hidden state across separate model calls. | Main CI, atomic-supersession PR and Tier 2 PR passed. |
| 6 | [safe-rl-action-gate](https://github.com/Hafiz-IIT/safe-rl-action-gate) | Conservative action authorization prototype combining simple control and uncertainty ideas. | Input validation and fail-closed handling for constraint errors were strengthened. Discrete next-state checks are not continuous-trajectory safety proofs. | Main CI and audit PR checks passed. |
| 7 | [multilingual-reliability-bench](https://github.com/Hafiz-IIT/multilingual-reliability-bench) | Paired multilingual model-reliability and disparity benchmark. | Unsupported-language coverage is separated from supported-language accuracy; paired sample validation was added. Exact-match scoring remains a limited metric and does not capture semantic equivalence. | Main CI and audit PR checks passed. |
| 8 | [exim-document-truth-bench](https://github.com/Hafiz-IIT/exim-document-truth-bench) | EXIM document consistency, chronology and evidence-integrity benchmark. | Duplicate document kinds and chronology/input validation were made explicit; future-dated or contradictory evidence must not be treated as valid. | Main CI and audit PR checks passed. |
| 9 | [exim-copilot-core](https://github.com/Hafiz-IIT/exim-copilot-core) | Role-aware core workflow for EXIM document review and approvals. | Evidence mutation and uploader/reviewer separation are treated as trust-boundary requirements. Current workflow state is still a prototype, not a production identity or durable audit service. | Main CI and audit PR checks passed. |
| 10 | [secure-doc-rag-agent](https://github.com/Hafiz-IIT/secure-doc-rag-agent) | Document-grounded retrieval and response generation with tenant/owner boundaries. | Tenant and owner isolation tests were added. Lexical retrieval is not semantic vector RAG; caller-provided sensitivity labels are not a complete access-control system. | Main CI and audit PR checks passed. |
| 11 | [cargo-scan-consistency-lab](https://github.com/Hafiz-IIT/cargo-scan-consistency-lab) | Synthetic comparison of cargo observations and document evidence. | Sensor input validation and correlated disagreement handling were strengthened. It is not a physical scanner, calibrated sensor fusion system or field-validated cargo inspection product. | Main CI and audit PR checks passed. |
| 12 | [hafs-os-core](https://github.com/Hafiz-IIT/hafs-os-core) | Core of the personal agent operating-system prototype: tasks, permissions, evidence, approvals and audit events. | Evidence submitter/verifier separation, legacy-attribution fail-closed behavior, task state and graph invariants were strengthened. Caller-supplied identities and source labels are not authenticated identities or cryptographic independence. | Main CI and audit PR checks passed. |
| 13 | [agency-qa-orchestrator](https://github.com/Hafiz-IIT/agency-qa-orchestrator) | Requirements-to-artifact traceability and release-readiness workflow. | Strict boolean verification, duplicate identifiers, non-empty criteria, unmapped artifacts and packaging were identified as release-gate requirements. Artifact content is not automatically proven to satisfy a requirement. | Main CI and current audit PR checks passed. |
| 14 | [logistics-optimization-lab](https://github.com/Hafiz-IIT/logistics-optimization-lab) | Route optimization with time/cost/risk trade-offs. | Dijkstra weight validation and blocked-edge handling were strengthened. The method remains a graph prototype, not a live logistics optimizer. | Main CI and audit PR checks passed. |
| 15 | [cold-chain-digital-twin](https://github.com/Hafiz-IIT/cold-chain-digital-twin) | Thermal excursion simulation and basic intervention/control study. | Thermal inputs and partial threshold-crossing estimates were hardened. The simplified model is not calibrated to a specific physical cold-chain asset. | Main CI and audit PR checks passed. |
| 16 | [port-operations-simulator](https://github.com/Hafiz-IIT/port-operations-simulator) | Berth scheduling and vessel-priority simulation. | Vessel time, berth and priority inputs were validated. The scheduler is a simplified simulation, not a full port digital twin. | Main CI and audit PR checks passed. |
| 17 | [multi-agent-logistics-sim](https://github.com/Hafiz-IIT/multi-agent-logistics-sim) | Capacity-aware task allocation across logistics agents. | Allocation invariants, malformed capacity/task inputs and caller-state mutation were addressed. Greedy sequential allocation is not globally optimal multi-agent planning. | Main CI and audit PR checks passed. |
| 18 | [traffic-incident-routing-lab](https://github.com/Hafiz-IIT/traffic-incident-routing-lab) | Time-dependent routing under road incidents. | Earliest-arrival routing was implemented and validated; time-dependent edge availability must be evaluated at each edge's actual arrival time, not only at initial departure. | Main CI and audit PR checks passed. |
| 19 | [college-ops-copilot-core](https://github.com/Hafiz-IIT/college-ops-copilot-core) | Institutional service-ticket and campus-operations assistant core. | Ticket and service-catalog invariants were tightened. It has no live institutional-system integration or authenticated production workflow. | Main CI and audit PR checks passed. |
| 20 | [hospital-ops-helpdesk](https://github.com/Hafiz-IIT/hospital-ops-helpdesk) | Administrative hospital helpdesk request routing. | Emergency-language escalation and request validation were hardened. It is not a clinical triage or diagnostic system. | Main CI and audit PR checks passed. |
| 21 | [predictive-intelligence-platform](https://github.com/Hafiz-IIT/predictive-intelligence-platform) | Time-series forecasting and anomaly-detection prototype. | Finite series inputs, configuration validation and zero-variance anomaly cases were addressed. Moving-average/smoothing baselines are not evidence of a production predictive model. | Main CI and audit PR checks passed. |
| 22 | [privacy-aware-recommender-lab](https://github.com/Hafiz-IIT/privacy-aware-recommender-lab) | Explicit-preference recommender with cohort-support suppression. | CI found that threshold 1 was accepted despite a documented minimum of 2. The code now enforces the minimum; item and preference validation remains covered by tests. Caller-supplied cohort support is not differential privacy or a formal privacy guarantee. | Main CI passed; the corrected audit branch now passes CI. |
| 23 | [underwater-lifi-simulator](https://github.com/Hafiz-IIT/underwater-lifi-simulator) | Underwater optical-link attenuation, SNR/BER and range simulator. | Finite optical-link inputs and range-search validation were strengthened. The simplified channel assumptions need comparison with established physical channel models and measurement data. | Main CI and audit PR checks passed. |
| 24 | [institutional-evidence-tracker](https://github.com/Hafiz-IIT/institutional-evidence-tracker) | Evidence packet and institutional case-completion tracking. | Premature completion and evidence separation-of-duties paths were hardened. Mutable verification flags and ordinary hashes are not signatures or tamper-evident audit storage. | Main CI and audit PR checks passed. |
| 25 | [Hafiz-IIT](https://github.com/Hafiz-IIT/Hafiz-IIT) | Portfolio landing repository and research-paper pipeline documentation. | Research pipeline titles and EGA maturity statements were corrected in a draft PR. No README/profile education or biography text was edited. | Documentation-only; no CI workflow configured. |
| 26 | [residual-rl-linear-priors](https://github.com/Hafiz-IIT/residual-rl-linear-priors) | Scalar linear-feedback baseline plus bounded fixed residual-control prototype. | Numerical input and rollout validation were strengthened. It does not yet implement a trained RL policy or statistical prior. | Main CI and audit PR checks passed. |
| 27 | [residual-rl-linear-priors-paper](https://github.com/Hafiz-IIT/residual-rl-linear-priors-paper) | Research protocol for residual control with a fixed linear baseline. | Title and claims were aligned with the implementation; current evidence is a scalar deterministic prototype, not trained residual RL or robotics validation. | Manuscript integrity/LaTeX CI passed. |
| 28 | [koopman-control-lab](https://github.com/Hafiz-IIT/koopman-control-lab) | Scalar polynomial lifting and ridge-regularized EDMD-style synthetic prediction lab. | Numerical validation, shape checks and overflow detection were strengthened. Pilot evidence covers five synthetic maps and fixed seeds; it does not establish Koopman invariance or control/MPC utility. | Main CI and corrected audit PR checks passed. |
| 29 | [koopman-control-paper](https://github.com/Hafiz-IIT/koopman-control-paper) | Manuscript for the scalar synthetic Koopman-lifted prediction benchmark. | Prediction scope and limitations were made explicit; literature citations were expanded and citation keys resolve. The work is not a control/MPC result. | Manuscript integrity/LaTeX CI passed. |
| 30 | [bayesian-safe-rl-lab](https://github.com/Hafiz-IIT/bayesian-safe-rl-lab) | Scalar Gaussian posterior and interval-based ALLOW/VERIFY/BLOCK gate. | Stable variance-ratio posterior updates and finite-input validation were added. This is not a complete Bayesian RL algorithm, calibrated risk model or safety certificate. | Main CI and audit PR checks passed. |
| 31 | [bayesian-safe-rl-paper](https://github.com/Hafiz-IIT/bayesian-safe-rl-paper) | Research protocol for Bayesian uncertainty gates in action authorization. | Title and abstract were aligned with the scalar prototype; formal safety guarantees and RL performance are not claimed. | Manuscript integrity/LaTeX CI passed. |
| 32 | [hybrid-lqr-rl-control](https://github.com/Hafiz-IIT/hybrid-lqr-rl-control) | Scalar linear feedback plus fixed cubic residual simulation. | Numerical input and rollout validation were strengthened. It does not solve a Riccati equation, train deep RL or prove robustness/stability. | Main CI and audit PR checks passed. |
| 33 | [hybrid-lqr-rl-paper](https://github.com/Hafiz-IIT/hybrid-lqr-rl-paper) | Research protocol for hybrid linear feedback with a fixed residual. | Unsupported LQR/deep-RL title claims were removed; the manuscript now describes the actual scalar prototype. | Manuscript integrity/LaTeX CI passed. |
| 34 | [exim-multimodal-cargo-framework-paper](https://github.com/Hafiz-IIT/exim-multimodal-cargo-framework-paper) | Proposed evidence-centered multimodal cargo scanning and EXIM compliance architecture. | Customs-risk references and scope statements were strengthened. It remains an architecture proposal; no physical scanner, certified integration, production customs link or operational validation exists. | Manuscript integrity/LaTeX CI passed. |

## Cross-repository findings and repairs

### Safety, authorization and data-integrity defects

The highest-impact recurring problems were:
- caller-controlled verification state and missing submitter/verifier separation;
- evidence mutation that could leave stale verification state;
- missing, duplicate or temporally impossible documents;
- malformed numeric inputs, booleans accepted as integers, non-finite values and arithmetic overflow;
- incomplete release criteria and requirements with no acceptance evidence;
- silent acceptance of malformed identifiers, empty constraints or unsupported configuration;
- mismatches between code, tests, documentation and the scientific claims made by manuscript titles.

These were addressed on dedicated audit branches with regression tests. The fixes remain draft PRs for review; they have not been merged.

### Tier 2 empirical LLM suite

The three datasets contain exactly **60 + 25 + 15 = 100 constructed scenarios**. They are fictional test fixtures, not real records. The runner sends each case to one configured provider in baseline and prompt-level evidence-gated conditions (200 calls total), records raw outputs and errors, and reports unsafe-action rate, false-block rate, coverage and unscored cases.

Two concrete defects found in audit were corrected:
1. An unsupported request-body field was being sent to OpenAI/Groq, which could cause API rejection.
2. EXIM expiry cases contained impossible issuance-after-expiry chronology and mismatched document-type labels.

The memory suite now contains three-event context/memory/current-request transcripts. The shared runner still evaluates each transcript in a single model API request; it does not yet test a persistent agent across separate turns.

**No real LLM API evaluation has been run in this audit.** It requires an API key supplied by the user and may incur provider charges. No results or accuracy numbers have been fabricated.

### Research and citation quality

- The four scalar control/robotics labs now validate inputs more strictly and their companion manuscript titles/abstracts have been aligned with implemented scope.
- The Koopman paper's claims are limited to synthetic scalar prediction, not control or invariant-subspace proof.
- The EXIM cargo paper remains a proposed architecture, not a deployed customs or scanning system.
- Citation keys in the five companion manuscripts resolve against their in-document bibliographies. The current bibliographies are still small (roughly 3–4 sources each); a serious novelty/prior-art review and broader source coverage remain necessary before submission.
- EGA has the strongest empirical package, but its v3 honest-baseline false-block result remains a major usability warning. Full manuscript readiness requires per-family error analysis, threshold sensitivity, dependency-aware threat analysis, source verification, and reproducibility reconciliation.

## CI and execution summary

- All 33 project repositories had a successful latest default-branch workflow in the inventory pass.
- The audit branches checked in this pass also had successful PR checks, including the corrected privacy-aware recommender branch.
- One stacked Agent Evidence Probes branch had a failing standalone push workflow because it depends on a prerequisite audit branch; its pull-request merge checks passed. This is recorded rather than hidden.
- The profile repository is documentation-only and has no CI workflow.
- CI execution is not a substitute for running a live LLM API evaluation, validating a physical system, or conducting external peer review.

## Remaining work, in priority order

1. Review and eventually merge the audit PRs individually only after reviewing their diffs; do not merge stacked research PRs out of order.
2. Run the 100-case Tier 2 suite with a user-supplied API key, archive raw traces, and report provider/model/date/coverage. Do not claim results until that run exists.
3. Investigate EGA's honest-baseline false-block rate and perform error-family/threshold analysis before any preprint decision.
4. Expand literature review and novelty positioning for the four control manuscripts and the EXIM framework; verify every reference and connect citations to specific claims.
5. Add stronger integration tests and packaging/runtime tests where the current CI only runs unit tests or syntax checks.
6. Keep deployment, physical validation, formal guarantees and peer-reviewed publication as future milestones unless new evidence is produced.

**Release rule:** retain the evidence ladder — concept → architecture → implementation → tested → reproducible → deployed → externally validated. A passing test suite is one rung, not the finish line.
