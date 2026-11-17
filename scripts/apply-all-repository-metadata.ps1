param([switch]$Apply)

$ErrorActionPreference = "Stop"

# Requires GitHub CLI authentication:
# gh auth status

$owner = "Hafiz-IIT"

$metadata = @{
"agent-evidence-probes" = @{d="Evidence-gated agent benchmark for freshness, independence, conflict and action support.";t="ai-agents,ai-safety,evidence,benchmark,research"}
"memory-governor" = @{d="Governed persistent memory for AI agents with provenance, scope, expiry and explicit forgetting.";t="ai-agents,memory,privacy,security,research"}
"safe-rl-action-gate" = @{d="One-step deterministic action gate for explicit state constraints; not a robust safety proof under model error or disturbances.";t="reinforcement-learning,safe-rl,control,ai-safety,research"}
"multilingual-reliability-bench" = @{d="Paired benchmark for reliability, abstention and unsupported-answer gaps across languages.";t="multilingual-ai,benchmark,reliability,nlp,research"}
"exim-document-truth-bench" = @{d="Synthetic EXIM benchmark for document consistency, missing evidence and stale authorization.";t="exim,document-ai,benchmark,evidence,research"}
"exim-copilot-core" = @{d="Governed workflow core for AI-assisted export-import operations and auditable verification.";t="exim,logistics,document-ai,workflow,ai"}
"secure-doc-rag-agent" = @{d="Tenant- and owner-scoped lexical document-RAG prototype with sensitivity filters; principal identity must come from a trusted authentication layer.";t="rag,document-ai,privacy,provenance,ai-agents"}
"cargo-scan-consistency-lab" = @{d="Synthetic cargo-evidence lab for comparing declarations with structured observation streams.";t="multimodal-ai,exim,computer-vision,sensor-fusion,research"}
"hafs-os-core" = @{d="Governance and task-orchestration spine for ~haf.s__ OS.";t="ai-agents,orchestration,governance,automation,research"}
"agency-qa-orchestrator" = @{d="QA and release-evidence gate for AI-assisted software delivery.";t="ai-agents,software-quality,traceability,automation,research"}
"logistics-optimization-lab" = @{d="Multi-objective logistics routing sandbox balancing cost, time and operational risk.";t="logistics,optimization,operations-research,simulation"}
"cold-chain-digital-twin" = @{d="Simplified software thermal model for temperature-control and excursion experiments; not a calibrated physical digital twin.";t="digital-twin,logistics,control-systems,simulation"}
"port-operations-simulator" = @{d="Discrete berth-allocation simulator for vessel queues, service times and utilization.";t="ports,logistics,simulation,operations-research"}
"multi-agent-logistics-sim" = @{d="Greedy multi-agent logistics allocation simulator with capacity checks; auction routine is a sequential heuristic, not a global optimum.";t="multi-agent-systems,logistics,simulation,optimization"}
"traffic-incident-routing-lab" = @{d="Incident-aware routing simulator for closures, delays and dynamic rerouting.";t="routing,transportation,simulation,optimization"}
"college-ops-copilot-core" = @{d="Administrative college-operations copilot for evidence-aware routing and SLA hints.";t="education,ai-agents,workflow,operations"}
"hospital-ops-helpdesk" = @{d="Administrative hospital-helpdesk router with explicit emergency escalation boundaries.";t="healthcare,workflow,ai-agents,operations"}
"predictive-intelligence-platform" = @{d="Transparent baseline forecasting and anomaly-detection toolkit for time-series intelligence.";t="forecasting,time-series,machine-learning,research"}
"privacy-aware-recommender-lab" = @{d="Consent-constrained preference recommender prototype; supplied cohort-support counts do not establish differential privacy or verified k-anonymity.";t="recommender-systems,privacy,consent,machine-learning"}
"underwater-lifi-simulator" = @{d="Illustrative Beer-Lambert underwater optical-link model with SNR and OOK BER; omits several physical link-budget effects and is not hardware-validated.";t="underwater-communications,lifi,simulation,optical-communications"}
"institutional-evidence-tracker" = @{d="Evidence and dependency tracker for multi-step institutional processes and decisions.";t="evidence,workflow,accountability,governance"}
"EXIM-AI-Evidence-Gated-Autonomy" = @{d="Flagship EXIM research system for evidence-gated AI decisions under verification uncertainty.";t="exim,ai-safety,evidence,provenance,research"}
"resturant-order-management" = @{d="Full-stack restaurant operations backend for menus, orders, feedback and authentication.";t="nodejs,express,mongodb,jwt,full-stack"}
"Smart-City-Management-Management" = @{d="Earlier smart-city software prototype for incidents, operations and spatial monitoring.";t="smart-city,python,software-engineering,urban-computing"}
"Hafiz-IIT" = @{d="Syed Hafiz Ali's GitHub portfolio: AI reliability, EXIM intelligence, logistics and research.";t="portfolio,artificial-intelligence,data-science,research"}
"residual-rl-linear-priors" = @{d="Deterministic scalar residual-control prototype layered on a transparent linear baseline; no trained RL policy yet.";t="reinforcement-learning,control,residual-rl,research"}
"residual-rl-linear-priors-paper" = @{d="Manuscript and reproducibility protocol for residual control with linear priors; no trained RL policy or empirical superiority claim.";t="research-paper,reinforcement-learning,control"}
"koopman-control-lab" = @{d="Scalar polynomial EDMD prediction experiments; current artifacts do not implement a controller or MPC.";t="koopman,control-systems,dynamical-systems,research"}
"koopman-control-paper" = @{d="Manuscript and reproducibility package for scalar Koopman/EDMD prediction experiments, not a control study.";t="research-paper,koopman,control-systems"}
"bayesian-safe-rl-lab" = @{d="Scalar Normal-Normal posterior and interval-based action-authorization prototype; no policy learning or formal safety guarantee.";t="safe-rl,bayesian,uncertainty,control,research"}
"bayesian-safe-rl-paper" = @{d="Manuscript and reproducibility protocol for scalar Bayesian uncertainty gates, not a complete safe-RL algorithm.";t="research-paper,safe-rl,bayesian,ai-safety"}
"hybrid-lqr-rl-control" = @{d="Scalar proportional-feedback baseline with a fixed cubic residual; no LQR Riccati solver or trained RL policy.";t="lqr,reinforcement-learning,control,research"}
"hybrid-lqr-rl-paper" = @{d="Manuscript and reproducibility protocol for hybrid linear feedback with a fixed residual; no deep-RL implementation.";t="research-paper,lqr,reinforcement-learning,control"}
"exim-multimodal-cargo-framework-paper" = @{d="Research manuscript scaffold for multimodal EXIM cargo evidence and provenance.";t="exim,multimodal-ai,sensor-fusion,research-paper"}
}

# Default behaviour is a dry run. Pass -Apply only after reviewing the output.
if ($Apply) {
  & gh auth status | Out-Null
  if ($LASTEXITCODE -ne 0) { throw "GitHub CLI authentication failed." }
}

foreach ($repo in ($metadata.Keys | Sort-Object)) {
  $m = $metadata[$repo]
  $topics = @($m.t -split "," | Where-Object { $_ } | Select-Object -Unique)

  if (-not $Apply) {
    Write-Host "[DRY RUN] $owner/$repo"
    Write-Host "  Description: $($m.d)"
    Write-Host "  Topics: $($topics -join ', ')"
    continue
  }

  & gh repo view "$owner/$repo" --json name --jq .name | Out-Null
  if ($LASTEXITCODE -ne 0) { throw "Repository preflight failed: $owner/$repo" }

  & gh repo edit "$owner/$repo" --description $m.d | Out-Null
  if ($LASTEXITCODE -ne 0) { throw "Description update failed: $owner/$repo" }

  foreach ($topic in $topics) {
    & gh repo edit "$owner/$repo" --add-topic $topic | Out-Null
    if ($LASTEXITCODE -ne 0) { throw "Topic update failed: $owner/$repo ($topic)" }
  }
  Write-Host "Updated $owner/$repo"
}
