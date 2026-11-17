# Projeto 3 — Anatomia de um Dia Viral: Análise Estatística de Eventos Extremos (CEC Informs)

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

### Critério Estatístico

Foi adotado o critério de **Média + 2 Desvios-Padrão (μ + 2σ)** sobre o volume diário de impressões para isolar os dias mais atípicos do ano, evitando um corte arbitrário (como um simples `WHERE impressoes > 500000`):

- Média (μ): 320.933 impressões
- Desvio-Padrão (σ): 347.901 impressões
- Corte Estatístico (μ + 2σ): 1.016.736 impressões

Essa abordagem isolou **16 "Dias Monstro"** em 365 dias (~5% dos dias mais atípicos do ano).

---

## 📊 Principais Descobertas

### 1. Fatores Determinantes e Dias da Semana

- **Segunda-feira** é o dia mais dominante (4 dos 16 picos), impulsionada pelas repercussões da rodada de fim de semana e movimentações de início de semana.
- Os dois grandes gatilhos de viralidade identificados são:
  - **Crises e desempenho em campo** — derrotas decisivas e trocas de comissão técnica.
  - **Mercado da bola** — especulações e negociações de alto impacto financeiro.

**Top 5 maiores dias do ano**

| Posição | Data | Dia | Impressões | Fator Determinante / Contexto |
|---|---|---|---|---|
| 1º | 15/12/2025 | Segunda | 3.063.304 | Eliminação na Copa do Brasil (pênalti do Gabigol) + Demissão de L. Jardim |
| 2º | 08/01/2026 | Quinta | 1.842.732 | Mercado: anúncio da contratação de Gerson (27M EUR) |
| 3º | 16/12/2025 | Terça | 1.750.149 | Efeito arrasto pós-crise: especulações de novo técnico |
| 4º | 09/01/2026 | Sexta | 1.649.526 | Mercado: recusa da proposta do Flamengo por Kaio Jorge (30M EUR) |
| 5º | 01/12/2025 | Segunda | 1.600.985 | Comunicação de mudanças no departamento de futebol |

### 2. Sustentabilidade do Crescimento: o Efeito da Diluição

Comparando Dias Normais com Dias Monstro, observa-se uma redução relativa na eficiência das métricas percentuais, mesmo com o volume absoluto disparando:

| Métrica | Dias Normais | Dias Monstro | Variação |
|---|---|---|---|
| Impressões Médias | 267.162 | 1.493.804 | +459% |
| Engajamento Médio | 7.523 | 34.652 | +360% |
| Taxa de Engajamento (%) | 2,84% | 2,31% | -18,7% |
| Seguidores / 1k Impressões | 0,13 | 0,07 | -46,2% |

**Interpretação:** nos dias virais, o conteúdo é entregue para fora da bolha tradicional de seguidores (abas de exploração e recomendação do algoritmo), atraindo um público menos propenso a interagir ou seguir a página de imediato. O volume absoluto imenso compensa a queda percentual em termos de resultado bruto, mas o crescimento de audiência não é proporcional ao alcance — é diluído.

### 3. Efeito de Arrasto (*Spillover Effect*) — Janela de 72 Horas

A análise da janela temporal (±3 dias do pico) mostra que a audiência não cai imediatamente após o encerramento do evento viral:

- **1 dia antes (-1):** 846.340 impressões (aquecimento do tema / expectativa)
- **Dia do pico (0):** 1.493.804 impressões
- **1 dia depois (+1):** 782.513 impressões (2,4x maior que o dia normal)
- **2 dias depois (+2):** 762.436 impressões (2,3x maior que o dia normal)
- **3 dias depois (+3):** 710.955 impressões (2,2x maior que o dia normal)

> **Recomendação Estratégica:** os 3 dias seguintes a um Dia Monstro representam a janela ideal para monetização, postagens patrocinadas e lançamentos de produtos, devido ao tráfego residual elevado.

---

## ⚠️ Limitações

- O critério de μ + 2σ isola os dias estatisticamente mais extremos, mas a causa exata de cada pico foi atribuída manualmente com base em contexto do calendário do clube — não há marcação estruturada de eventos no dataset.
- A janela de spillover (±3 dias) foi definida de forma exploratória; não foi testado se a queda de engajamento pós-pico continua além desse período.

---

## 📂 Estrutura do Repositório

- `notebooks/`: Jupyter Notebooks contendo a Análise Exploratória de Dados (EDA) em Pandas.
- `dashboard/`: Arquivo Power BI (.pbix) e capturas de tela das visões construídas.
- `data/`: Datasets utilizados na análise.