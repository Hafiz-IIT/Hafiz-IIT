$ErrorActionPreference = "Stop"

# Requires GitHub CLI authentication:
# gh auth status

$owner = "Hafiz-IIT"

$metadata = @{
"agent-evidence-probes" = @{d="Evidence-gated agent benchmark for freshness, independence, conflict and action support.";t="ai-agents,ai-safety,evidence,benchmark,research"}
"memory-governor" = @{d="Governed persistent memory for AI agents with provenance, scope, expiry and explicit forgetting.";t="ai-agents,memory,privacy,security,research"}
"safe-rl-action-gate" = @{d="Inspectable action gate for sequential decision systems under explicit safety constraints.";t="reinforcement-learning,safe-rl,control,ai-safety,research"}
"multilingual-reliability-bench" = @{d="Paired benchmark for reliability, abstention and unsupported-answer gaps across languages.";t="multilingual-ai,benchmark,reliability,nlp,research"}
"exim-document-truth-bench" = @{d="Synthetic EXIM benchmark for document consistency, missing evidence and stale authorization.";t="exim,document-ai,benchmark,evidence,research"}
"exim-copilot-core" = @{d="Governed workflow core for AI-assisted export-import operations and auditable verification.";t="exim,logistics,document-ai,workflow,ai"}
"secure-doc-rag-agent" = @{d="Traceable document-RAG prototype with provenance, sensitivity filters and evidence gating.";t="rag,document-ai,privacy,provenance,ai-agents"}
"cargo-scan-consistency-lab" = @{d="Synthetic cargo-evidence lab for comparing declarations with structured observation streams.";t="multimodal-ai,exim,computer-vision,sensor-fusion,research"}
"hafs-os-core" = @{d="Governance and task-orchestration spine for ~haf.s__ OS.";t="ai-agents,orchestration,governance,automation,research"}
"agency-qa-orchestrator" = @{d="QA and release-evidence gate for AI-assisted software delivery.";t="ai-agents,software-quality,traceability,automation,research"}
"logistics-optimization-lab" = @{d="Multi-objective logistics routing sandbox balancing cost, time and operational risk.";t="logistics,optimization,operations-research,simulation"}
"cold-chain-digital-twin" = @{d="Software-only cold-chain digital twin for temperature control and excursion analysis.";t="digital-twin,logistics,control-systems,simulation"}
"port-operations-simulator" = @{d="Discrete berth-allocation simulator for vessel queues, service times and utilization.";t="ports,logistics,simulation,operations-research"}
"multi-agent-logistics-sim" = @{d="Transparent multi-agent logistics allocation simulator with capacity and feasibility constraints.";t="multi-agent-systems,logistics,simulation,optimization"}
"traffic-incident-routing-lab" = @{d="Incident-aware routing simulator for closures, delays and dynamic rerouting.";t="routing,transportation,simulation,optimization"}
"college-ops-copilot-core" = @{d="Administrative college-operations copilot for evidence-aware routing and SLA hints.";t="education,ai-agents,workflow,operations"}
"hospital-ops-helpdesk" = @{d="Administrative hospital-helpdesk router with explicit emergency escalation boundaries.";t="healthcare,workflow,ai-agents,operations"}
"predictive-intelligence-platform" = @{d="Transparent baseline forecasting and anomaly-detection toolkit for time-series intelligence.";t="forecasting,time-series,machine-learning,research"}
"privacy-aware-recommender-lab" = @{d="Consent-constrained recommendation lab for explicit preferences and minimum cohort support.";t="recommender-systems,privacy,consent,machine-learning"}
"underwater-lifi-simulator" = @{d="Simplified underwater optical-communication simulator covering attenuation, SNR and OOK BER.";t="underwater-communications,lifi,simulation,optical-communications"}
"institutional-evidence-tracker" = @{d="Evidence and dependency tracker for multi-step institutional processes and decisions.";t="evidence,workflow,accountability,governance"}
"EXIM-AI-Evidence-Gated-Autonomy" = @{d="Flagship EXIM research system for evidence-gated AI decisions under verification uncertainty.";t="exim,ai-safety,evidence,provenance,research"}
"resturant-order-management" = @{d="Full-stack restaurant operations backend for menus, orders, feedback and authentication.";t="nodejs,express,mongodb,jwt,full-stack"}
"Smart-City-Management-Management" = @{d="Earlier smart-city software prototype for incidents, operations and spatial monitoring.";t="smart-city,python,software-engineering,urban-computing"}
"Hafiz-IIT" = @{d="Syed Hafiz Ali's GitHub portfolio: AI reliability, EXIM intelligence, logistics and research.";t="portfolio,artificial-intelligence,data-science,research"}
"residual-rl-linear-priors" = @{d="Research prototype studying residual corrections layered on transparent linear control priors.";t="reinforcement-learning,control,residual-rl,research"}
"residual-rl-linear-priors-paper" = @{d="Manuscript and reproducibility scaffold for residual RL with linear priors.";t="research-paper,reinforcement-learning,control"}
"koopman-control-lab" = @{d="Transparent lifted-state control experiments inspired by Koopman representations.";t="koopman,control-systems,dynamical-systems,research"}
"koopman-control-paper" = @{d="Manuscript and reproducibility scaffold for Koopman-inspired control.";t="research-paper,koopman,control-systems"}
"bayesian-safe-rl-lab" = @{d="Uncertainty-aware action-authorization prototype for safe-RL research.";t="safe-rl,bayesian,uncertainty,control,research"}
"bayesian-safe-rl-paper" = @{d="Manuscript and reproducibility scaffold for uncertainty-aware safe RL.";t="research-paper,safe-rl,bayesian,ai-safety"}
"hybrid-lqr-rl-control" = @{d="Research prototype combining a linear-control prior with a residual correction layer.";t="lqr,reinforcement-learning,control,research"}
"hybrid-lqr-rl-paper" = @{d="Manuscript and reproducibility scaffold for hybrid LQR plus residual control.";t="research-paper,lqr,reinforcement-learning,control"}
"exim-multimodal-cargo-framework-paper" = @{d="Research manuscript scaffold for multimodal EXIM cargo evidence and provenance.";t="exim,multimodal-ai,sensor-fusion,research-paper"}
}

foreach ($repo in $metadata.Keys) {
  $m = $metadata[$repo]
  gh repo edit "$owner/$repo" --description $m.d --add-topic ($m.t -split ",") | Out-Null
  Write-Host "Updated $repo"
}
