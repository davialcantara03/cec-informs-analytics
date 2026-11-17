# Análise de Performance, Engajamento e Conversão de Conteúdo — CEC Informs

Este projeto investiga a eficiência da distribuição de conteúdo da página @cec_informs_ no X. O objetivo não é apenas medir volume, e sim entender **quais dias e faixas de alcance geram consumo de qualidade** e **quando a audiência realmente converte**.

A análise usa o dataset real da página (métricas diárias extraídas via X Premium ao longo de 12 meses) e complementa o Projeto 1: enquanto aquele quantificou o impacto dos jogos e das janelas de transferência, este avalia a operação editorial no dia a dia.

## Perguntas de Negócio

1. **Atração** — Quais dias da semana geram mais consumo e engajamento de qualidade por post?
2. **Qualidade do Alcance** — Dias de alto alcance realmente convertem em interações reais ou geram “alcance vazio”?
3. **Conversão** — Como a taxa de conversão evolui ao longo dos meses e onde estão os ciclos de alta e baixa?

## Metodologia

- **SQL (PostgreSQL via DBeaver):** agregação por dia da semana, cálculo de eficiência por post, segmentação por quartis de alcance e evolução mensal da taxa de conversão.
- **Power BI:** dashboard interativo com KPIs, comparativos por dia da semana, análise de quartis e série temporal mensal.
- **Git/GitHub:** versionamento e documentação.

As queries SQL funcionaram como gabarito. As medidas DAX do dashboard foram conferidas contra os resultados do PostgreSQL.

## Principais Insights

### Pergunta 1 — Atração por dia da semana

A eficiência não acompanha o volume.

- **Segunda-feira** lidera em volume bruto e também em eficiência média: **1.127 engajamentos por post**.
- **Terça-feira** é a “joia escondida”: menor volume bruto, mas a **segunda maior eficiência** (950 engajamentos por post).
- **Domingo** apresenta gargalo de eficiência: alto volume de posts (650), porém a menor entrega por publicação.

**Interpretação:** aumentar a quantidade de posts no domingo não garante melhor resultado. A alocação editorial deve priorizar Segunda e Terça, que entregam mais retorno por conteúdo publicado.

### Pergunta 2 — Qualidade do alcance

Alto alcance não significa alto engajamento.

- O quartil de maior alcance (**Q4**) apresenta a **menor taxa de conversão** entre os quatro grupos.
- O **quartil 3** é o ponto de maior eficiência.

Isso indica existência de **alcance vazio**: um volume alto de impressões não se traduz proporcionalmente em interação. A hipótese é que, acima de determinado patamar, parte do alcance vem de distribuição menos qualificada (compartilhamento/replicação), e não de consumo orgânico direto.

**Limitação:** o dataset não distingue a origem do alcance (orgânico, compartilhamento, hashtag etc.). A causa da queda no Q4 permanece como hipótese.

### Pergunta 3 — Conversão ao longo do tempo

A taxa de conversão não cresce nem cai em linha reta. Ela oscila em ciclos.

- **Vale:** dezembro/2025, com **1,92%** — menor valor da série.
- **Pico:** abril/2026, com **4,33%** — mais que o dobro do vale.

Entre esses extremos houve recuperação gradual (jan–abr/2026) e nova queda (mai–jul/2026).

**Hipótese:** o vale de dezembro coincide com o recesso do futebol brasileiro. O pico de abril pode estar ligado à retomada da temporada e a eventos de maior relevância do clube.

**Limitação:** a base não marca eventos específicos (contratações, jogos decisivos etc.). A explicação dos picos e vales é contextual, não causal confirmada.

## Recomendações

1. Priorizar Segunda e Terça para os conteúdos de maior esforço editorial.
2. Revisar a estratégia de volume no domingo: mais posts não estão gerando mais eficiência.
3. Monitorar picos de alcance no Q4 e testar formatos que peçam interação, para reduzir alcance vazio.
4. Acompanhar a taxa de conversão mensal como indicador de sazonalidade da audiência, não apenas impressões.

## Limitações Gerais

- Parte das métricas está agregada no nível diário, sem granularidade por post em todas as análises.
- Fatores externos simultâneos não foram isolados por completo.
- A origem do alcance e a marcação de eventos específicos não estão disponíveis na base.

## Estrutura do Repositório

- `sql/` — queries das três perguntas de negócio
- `dashboard/` — arquivo Power BI, medidas DAX e screenshots
- `README.md` — documentação e interpretação dos resultados

## Relação com o Projeto 1

Os dois projetos contam uma história única:

- **Projeto 1** mede o impacto de eventos externos (jogos, resultados e janelas de transferência).
- **Projeto 2** mede a eficiência da operação editorial (dia da semana, qualidade do alcance e conversão ao longo do tempo).

Juntos, demonstram capacidade de formular perguntas de negócio, tratar dados reais, validar métricas em SQL e comunicar achados em dashboard.