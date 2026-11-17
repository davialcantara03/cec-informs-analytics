### Pergunta 2: Qualidade do Alcance — Dias de alto alcance geram conversão real ou "alcance vazio"?

Para responder, os 365 dias do dataset foram divididos em quartis de alcance 
(impressões) usando NTILE(4), e comparada a taxa de conversão média 
(engajamento / impressões) entre eles.

**Resultado:**

| Quartil (alcance) | Taxa de conversão média | Dias |
|---|---|---|
| 1 (menor alcance) | 2,77% | 92 |
| 2 | 2,76% | 91 |
| 3 | **3,02%** | 91 |
| 4 (maior alcance) | 2,71% | 91 |

**Insight:** o quartil de maior alcance (Q4) apresenta a *menor* taxa de 
conversão entre os quatro grupos — evidência de "alcance vazio": volume alto 
de impressões não se traduz proporcionalmente em engajamento. O quartil 3 
se destaca como o ponto de maior eficiência, sugerindo que existe uma faixa 
de alcance "saudável" além da qual a qualidade da audiência atingida cai 
(possivelmente por distribuição via compartilhamento/replicação de baixo 
engajamento, e não alcance orgânico direto).

**Limitação:** o dataset não distingue a origem do alcance (orgânico, 
compartilhamento, hashtag, etc.), então a causa exata da queda no Q4 é 
hipótese, não confirmação.