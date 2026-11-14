# 🤖 Model Context Protocol (MCP) DevSecOps Agent

[![MCP Protocol](https://img.shields.io/badge/Protocol-MCP_v1.0-00D2FF?style=for-the-badge&logo=anthropic&logoColor=white)](#)
[![Python](https://img.shields.io/badge/Python-3.11+-3776AB?style=for-the-badge&logo=python&logoColor=white)](#)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Triage_Engine-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)](#)
[![Security Auditing](https://img.shields.io/badge/Security-Trivy_%26_CIS_Benchmark-critical?style=for-the-badge&logo=shield&logoColor=white)](#)

> **Enterprise Model Context Protocol (MCP) server & autonomous agent system** engineered to empower AI agents with real-time Kubernetes cluster introspection, container vulnerability scanning, Policy-as-Code linting, and automated incident triage.

---

## 🏛️ Architecture: Agentic DevSecOps Fabric

```mermaid
flowchart LR
    subgraph ClientLayer["AI Agent Host / Client"]
        Client["Claude Desktop / Cursor / Antigravity Agent"]
    end

    subgraph MCPLayer["MCP DevSecOps Server (JSON-RPC)"]
        direction TB
        Server["FastMCP Protocol Server"]
        Tool1["scan_container_vulnerabilities"]
        Tool2["inspect_kubernetes_health"]
        Tool3["audit_terraform_plan"]
        Resource1["get_architecture_standards"]
        Server --> Tool1 & Tool2 & Tool3 & Resource1
    end

    subgraph CloudInfra["Target Infrastructure"]
        direction TB
        K8s["Kubernetes Clusters\n(AKS / EKS Pods & Events)"]
        Scanner["Container Security Engine\n(Trivy CVE Database)"]
        IaC["Cloud IaC\n(Azure CAF / Terraform)"]
    end

    Client <== "MCP Stdio / SSE" ==> Server
    Tool1 --> Scanner
    Tool2 --> K8s
    Tool3 --> IaC
```

---

## 🛠️ MCP Tools & Resources Exposed

| Name | Type | Description |
| :--- | :--- | :--- |
| `scan_container_vulnerabilities` | **Tool** | Scans container images for CVEs, classifies severity, and asserts compliance policies |
| `inspect_kubernetes_health` | **Tool** | Queries live pod states, OOMKilled events, restart counts, and generates remediation recommendations |
| `audit_terraform_plan` | **Tool** | Audits Terraform plan configurations against CIS benchmarks and network security policies |
| `devops://architecture/standards` | **Resource** | Exposes zero-trust Azure CAF landing zone and Kubernetes hardening standards directly into LLM context |

---

## 🚀 Quickstart & Setup

### 1. Installation
```bash
git clone https://github.com/Ashu02412/mcp-devops-agent.git
cd mcp-devops-agent
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

### 2. Configure with your AI IDE / Client (Claude, Cursor, Antigravity)
Add the following to your MCP client configuration (`mcp_config.json`):
```json
{
  "mcpServers": {
    "devops-security-agent": {
      "command": "python",
      "args": ["-m", "src.server"],
      "env": {
        "PYTHONPATH": "."
      }
    }
  }
}
```

### 3. Run Autonomous Triage Agent
```bash
python src/agent.py
```

---

## 👨💻 Author

**Ashu Dixit (Ashu02412)**  
*Senior DevSecOps & AI Platform Engineer*  
- GitHub: [@Ashu02412](https://github.com/Ashu02412)  
- Email: [ashu05.dixit@gmail.com](mailto:ashu05.dixit@gmail.com)
