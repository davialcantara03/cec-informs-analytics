### Pergunta 3: Sazonalidade — Existe padrão mensal/trimestral na conversão? Está crescendo ou caindo?

Para responder, os dados foram agrupados por mês (`TO_CHAR(data, 'YYYY-MM')`) e 
calculada a taxa de conversão mensal (engajamento/impressões), permitindo 
visualizar a evolução ao longo de 12 meses (ago/2025 a ago/2026).

**Resultado:**

A taxa de conversão não segue uma tendência linear de crescimento ou queda — 
ela oscila em ciclos, com dois pontos de inflexão claros:

- **Vale em dezembro/2025** (1,92%), o menor valor do período.
- **Pico em abril/2026** (4,33%), o maior valor do período — mais que o dobro do vale.

Entre esses extremos, há uma recuperação gradual (jan a abr/2026) seguida de 
nova queda (mai a jul/2026), sugerindo um padrão cíclico em vez de uma 
tendência única e constante.

**Hipótese:** a queda de dezembro coincide com o recesso do calendário do 
futebol brasileiro (fim de temporada, sem jogos), reduzindo tanto o volume 
quanto a relevância do conteúdo postado. Já o pico de abril pode estar 
relacionado à volta da temporada e/ou eventos específicos do clube nesse 
período (ex: contratações, início de competições relevantes).

**Limitação:** o dataset não tem uma coluna que marque eventos específicos 
(contratações, jogos decisivos, etc.), então a causa exata de cada pico/vale 
é hipótese com base no calendário do futebol, não confirmação direta pelos dados.