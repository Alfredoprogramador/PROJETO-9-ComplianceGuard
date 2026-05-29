# ComplianceGuard

Plataforma automatizada de conformidade regulatória e privacidade para centralizar controles, evidências e auditoria contínua.

## Problema que resolve
Empresas lidam com múltiplas regulações (LGPD, GDPR, AI Act, ISO 27001, SOX e normas setoriais). O acompanhamento manual aumenta custo, risco operacional e exposição a multas.

## Objetivo
Disponibilizar uma plataforma centralizada para automatizar:
- Gestão de conformidade regulatória
- Proteção de dados e privacidade
- Auditoria contínua
- Workflows de aprovação e evidências
- Monitoramento proativo de riscos

## Stack tecnológica (enterprise grade)
- **Frontend:** Next.js 15 + TypeScript + Tailwind + shadcn/ui + React Flow
- **Backend:** Python + FastAPI
- **Governança:** Open Policy Agent (OPA) + Rego + Temporal.io
- **Criptografia:** HashiCorp Vault + ferramentas criptográficas
- **Dados:** PostgreSQL + Redis + MongoDB (evidências)
- **IA e automação:** LangChain + LangGraph + Llama 3
- **Auditoria:** Merkle Trees + ledger imutável opcional
- **Infra:** Kubernetes + Terraform + ArgoCD
- **Observabilidade:** OpenTelemetry + Grafana + Sentry

## Arquitetura de alto nível
- **Data Discovery Layer:** identificação de PII/PHI/PCI
- **Policy Engine:** validação de políticas em tempo real
- **Workflow Engine:** processos de aprovação e DSAR
- **Evidence Repository:** armazenamento auditável
- **Risk Intelligence:** priorização de risco com IA
- **Reporting Layer:** relatórios para auditorias e reguladores

Padrões adotados:
- Privacy by Design
- DPIA / PIA
- RoPA
- Continuous Compliance

## Roadmap funcional
### Fase 1 (MVP – 8 semanas)
- Cadastro de regulamentos e mapeamento de controles
- Scanner de dados sensíveis
- Gestão de consentimentos
- Atendimento de solicitações de titulares (DSAR)
- Dashboard de conformidade
- Relatórios básicos

### Fase 2 (Avançado – 12 semanas)
- PIA gerado por IA
- Classificação automática de dados
- Workflow de aprovação de novos projetos
- Retenção e deleção automatizadas
- Integrações com sistemas corporativos
- Detecção de violações em tempo real

### Fase 3 (Enterprise – 12 semanas)
- Multi-tenancy e múltiplas jurisdições
- Auditoria imutável completa
- Integrações com ferramentas de DPO
- Risk heatmap por área
- Evidências automatizadas para auditorias externas
- Monitoramento regulatório automatizado
- Integração com ServiceNow/Collibra

## Estrutura do monorepo
```text
complianceguard/
├── apps/
│   ├── frontend/
│   ├── backend/
│   └── scanner-engine/
├── packages/
│   ├── shared/
│   ├── policy-engine/
│   ├── ai-compliance/
│   └── evidence-ledger/
├── infra/
│   ├── terraform/
│   └── kubernetes/
├── policies/
├── docs/
│   ├── lgpd-gdpr-mapping.md
│   └── audit-process.md
├── docker-compose.yml
└── .github/workflows/
```

## Desenvolvimento com VS Code
1. Inicialize/expanda o monorepo com Turborepo.
2. Utilize agentes para acelerar:
   - Políticas OPA (LGPD/GDPR/AI Act)
   - Agentes de IA para PIA e classificação
   - Workflows de DSAR
   - Templates de relatórios regulatórios
   - Sugestões de mapeamento de controles
3. Extensões recomendadas:
   - Python, TypeScript
   - OPA/Rego syntax
   - Docker, Kubernetes, Terraform
   - GitLens

## Execução local de dependências
> **Obrigatório:** o arquivo `.env` deve existir antes de executar o Docker Compose.

1. Copie `.env.example` para `.env` (`cp .env.example .env`) e ajuste as credenciais obrigatoriamente.
2. Inicie os serviços de apoio com `docker compose up -d`.
