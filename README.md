# CEC Informs — Análise de Performance, Engajamento e Eficiência de Conteúdo

Estudos sobre a página [@cec_informs_](https://x.com/cec_informs_) no X (Twitter), cruzando **métricas diárias da operação** com o **calendário de jogos do Cruzeiro**. O objetivo é entender quando e como a audiência engaja e transformar os achados em recomendações editoriais práticas.

**Stack:** Python (Pandas, NumPy) · SQL (PostgreSQL) · Power BI  

**Período da base:** agosto/2025 – agosto/2026 (365 dias)

---

## Contexto e base de dados

| Fonte | Conteúdo |
|---|---|
| **Métricas** | Exportação diária via X Premium: impressões, engajamentos, curtidas, seguidores |
| **Calendário** | Jogos do Cruzeiro (FBref), alinhados às datas da série de métricas |

**Limitação geral da base:** não há origem das impressões (orgânico, compartilhamento, recomendação) nem marcação estruturada de eventos pontuais (contratações, clássicos, crises). Interpretações de picos são contextuais, não relações causais isoladas.

---

## Os três estudos

Os estudos formam uma sequência: o primeiro mede o efeito de **eventos externos**, o segundo avalia a **operação editorial** no dia a dia e o terceiro analisa **picos extremos** de alcance.

| # | Estudo | Pergunta central | Ferramentas | Pasta |
|---|---|---|---|---|
| 1 | Impacto dos jogos | Como dias de jogo, resultados e janelas de transferência afetam o engajamento? | Python, PostgreSQL, Power BI | [estudo_1_impacto_jogos/](./estudo_1_impacto_jogos/) |
| 2 | Eficiência editorial | Quais dias geram mais retorno por post? Alto alcance converte em interação? | PostgreSQL, Power BI | [estudo_2_editorial/](./estudo_2_editorial/) |
| 3 | Dias virais | O que caracteriza um “Dia Monstro” e o alcance se sustenta depois? | Python, Power BI | [estudo_3_dias_virais/](./estudo_3_dias_virais/) |

---

## Principais resultados

### Estudo 1 — Impacto dos jogos

- **Dia do jogo vs. dia seguinte:** nos 57 jogos com dados, o engajamento no dia seguinte é, em média, **176,20%** maior que no dia da partida (“efeito ressaca”).
  - Após **vitórias:** +**305,68%**
  - Após **empates:** +**158,13%**
  - Após **derrotas:** o engajamento no próprio dia do jogo é o maior da amostra; o crescimento no dia seguinte é o menor (**+23,49%**)
- **Dias sem jogo** têm, em média, mais engajamento do que dias com jogo (+40% engajamentos, +42% curtidas, +77% impressões) — o pico relevante costuma aparecer no *dia seguinte* ao evento, não no dia do jogo.
- **Janela de transferências:** +44,90% de impressões vs. temporada de jogos; na temporada, engajamento e curtidas são ligeiramente maiores (+7% e +14%).
- **Volume de posts:** janeiro/2026 teve a maior média de engajamento por post (20.488), bem acima de junho/2026 (3.263). Meses com mais posts coincidiram com picos de interesse — relação de **coincidência**, não causa confirmada.

### Estudo 2 — Eficiência editorial

- **Segunda e terça** lideram em engajamentos por post (1.127 e 950), com menor volume bruto.
- **Domingo** concentra o maior volume de posts (650), mas tem a menor entrega por publicação.
- **“Alcance vazio”:** o quartil de maior alcance (Q4) tem a **menor** taxa de conversão; o Q3 é o mais eficiente. Hipótese: parte do alcance extremo vem de distribuição menos qualificada (a base não permite confirmar a origem).
- **Conversão no tempo:** oscila em ciclos (vale em dez/2025: 1,92%; pico em abr/2026: 4,33%), com contexto de recesso do futebol brasileiro no vale.

### Estudo 3 — Dias virais

- **Critério:** impressões > μ + 2σ (média 320.933; desvio-padrão 347.901; corte ≈ 1.016.736). Isolou **16 dias** em 365.
- **Gatilhos recorrentes:** crises e desempenho em campo (derrotas decisivas, mudanças de comissão) e mercado da bola (especulações/negociações de alto impacto). Segunda-feira aparece em 4 dos 16 picos.
- **Diluição:** nos dias virais, impressões sobem ~459%, mas a taxa de engajamento cai (2,84% → 2,31%) e seguidores por mil impressões caem 46,2% — o conteúdo alcança público menos propenso a interagir ou seguir.
- **Efeito de arrasto (±3 dias):** o dia seguinte ao pico fica ~2,4× um dia normal; +2 e +3 dias seguem elevados (~2,3× e ~2,2×). O dia anterior ao pico também fica acima do normal.

---

## Metodologia

| Etapa | Ferramenta | Uso |
|---|---|---|
| Limpeza e feature engineering | Python (Pandas, NumPy) | Datas, cruzamento com calendário, μ/σ, janelas com `.shift()` |
| Consultas analíticas | PostgreSQL (DBeaver) | CTEs, window functions (LAG, LEAD, NTILE), quartis, agregações |
| Visualização | Power BI | KPIs, comparativos, séries temporais e leitura para decisão editorial |

As queries SQL serviram de referência para validar medidas DAX nos dashboards.

---

## Limitações

- Parte das métricas é agregada por dia (nem todas as análises têm granularidade por post).
- Fatores externos simultâneos não foram isolados por completo.
- Origem do alcance e marcação formal de eventos não existem na base.
- Janelas (efeito ressaca de 1 dia; arrasto de ±3 dias) foram definidas de forma exploratória.

Essas limitações estão registradas para evitar superinterpretação dos resultados.

---

## Estrutura do repositório

```text
cec-informs-analytics/
├── estudo_1_impacto_jogos/    # pipeline Python, SQL e dashboard
├── estudo_2_editorial/        # SQL, dashboard e README do estudo
├── estudo_3_dias_virais/      # notebooks, dashboard e dados
└── README.md

## Autor

**Davi Aguiar**  
[LinkedIn](https://www.linkedin.com/in/davi-aguiar/) · [GitHub](https://github.com/davialcantara03)
