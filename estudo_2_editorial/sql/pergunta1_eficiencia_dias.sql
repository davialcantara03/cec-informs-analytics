-- =============================================================================
-- PROJETO 2: Análise de Engajamento e Conversão em Redes Sociais (CEC Informs)
-- PERGUNTA 1: Quais dias da semana geram mais consumo e engajamento por post?
-- OBJETIVO: Avaliar o consumo (impressões) e eficiência (engajamento) por publicação.
-- INSIGHTS:
-- - Segunda-feira domina em volume bruto e eficiência média (1.127 engajamentos/post).
-- - Terça-feira é a "jóia escondida": menor volume bruto, mas 2ª maior eficiência (950/post).
-- - Domingo apresenta "gargalo de eficiência": alto volume de posts (650), mas menor entrega/post.
-- =============================================================================

SELECT 
    TO_CHAR(data, 'Day') AS dia_semana,
    COUNT(posts_criados) AS total_posts,
    SUM(impressoes) AS total_impressoes,
    SUM(engajamentos) AS total_engajamentos,
    
    -- Média de engajamento por post
    SUM(engajamentos)::NUMERIC / NULLIF(SUM(posts_criados), 0) AS engajamento_por_post,
    
    -- Média de impressões por post
    SUM(impressoes)::NUMERIC / NULLIF(SUM(posts_criados), 0) AS impressoes_por_post
FROM dataset_cecinforms
GROUP BY TO_CHAR(data, 'Day'), EXTRACT(DOW FROM data)
ORDER BY engajamento_por_post DESC;