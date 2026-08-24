# Dashboard Power BI — Projeto 2

## Medidas DAX criadas
- `Taxa Conversao Engajamento %`: DIVIDE(Total Engajamentos, Total Impressões, 0)
- `Taxa Conversao Seguidores %`: DIVIDE(Novos Seguidores, Visitas ao Perfil, 0)

## Estrutura do dashboard
- **KPIs**: Total de Impressões, Total de Engajamentos, Taxa de Engajamento, Taxa de Conversão
- **Volume de Impressões por Dia da Semana**: responde à Pergunta 1
- **Taxa de Engajamento por Quartil de Alcance**: responde à Pergunta 2
- **Evolução da Taxa de Conversão por Mês**: responde à Pergunta 3

## Filtros
- **Teve Jogo** (Sim/Não): filtra os dados por dias com ou sem jogo
- **Mês**: filtro de período

## Observação técnica
A coluna `MesAno` (formato YYYY-MM) foi criada via DAX para garantir 
ordenação cronológica correta no eixo X do gráfico de evolução mensal, 
c