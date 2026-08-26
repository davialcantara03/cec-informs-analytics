# 🚀 Projeto 3 — Anatomia de um Dia Viral: Análise Estatística de Eventos Extremos (CEC Informs)

Este projeto investiga os fatores determinantes por trás dos picos atípicos de alcance na página **@cec_informs_** no X/Twitter, avaliando se esses "Dias Monstro" geram valor e crescimento sustentado de audiência ou apenas picos passageiros.

Este estudo conclui a trilogia de projetos do ecossistema CEC Informs:
- **Projeto 1:** Impacto de eventos externos (jogos e janelas de transferência).
- **Projeto 2:** Eficiência da operação editorial diária e conversão.
- **Projeto 3:** Análise estatística de eventos extremos ($\mu + 2\sigma$), sustentabilidade do crescimento e efeito de arrasto ($\pm 3$ dias).

---

## 🎯 Perguntas de Negócio

1. **Identificação & Fatores Determinantes:** O que caracteriza um "Dia Monstro" estatisticamente? Quais variáveis (jogo, vitória, dia da semana, volume de posts) estão mais presentes nesses picos?
2. **Sustentabilidade do Crescimento:** Picos de alto alcance convertem em novos seguidores de forma duradoura ou geram apenas atenção passageira?
3. **Efeito de Arrasto (*Spillover Effect*):** O impacto positivo de um dia viral se estende para os dias imediatamente anteriores e posteriores ($\pm 3$ dias)?

---

## 🛠️ Tecnologias & Metodologia

- **Python (Pandas & NumPy):** Limpeza de dados, cálculo de métricas estatísticas (média, desvio-padrão) e criação de janelas temporais (`.shift()`).
- **Power BI & DAX:** Construção de dashboard interativo focado no storytelling dos cases virais.
- **Git & GitHub:** Versionamento de código e documentação técnica.

### Criterion Estatístico:
Foi adotado o critério de **Média + 2 Desvios-Padrão ($\mu + 2\sigma$)** sobre o volume diário de impressões para isolar os 5% dias mais atípicos do ano (16 "Dias Monstro" identificados em 365 dias).

---

## 📂 Estrutura do Repositório

- `notebooks/`: Jupyter Notebooks contendo a Análise Exploratória de Dados (EDA) em Pandas.
- `dashboard/`: Arquivo Power BI (.pbix) e capturas de tela das visões construídas.
- `data/`: Datasets utilizados na análise.