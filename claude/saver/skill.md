Triagem Metodológica de Artigos em Lote
Skill para avaliar muitos artigos científicos de uma vez e classificá-los em três categorias de confiabilidade metodológica, com base no framework de Ioannidis (2005, "Why Most Published Research Findings Are False") e em cinco eixos adicionais pedidos pelo usuário: estatística, conduta, delineamento experimental, concordância objetivo-resultado-conclusão, e repetibilidade.
Antes de qualquer coisa, leia references/rubrica-avaliacao.md E references/adaptacoes-por-tipo-de-estudo.md por completo. O primeiro contém os guias de nota (0–10) para cada uma das 6 dimensões, os pesos, a fórmula do índice composto (ICM) e os cortes de classificação. O segundo adapta o que procurar dentro de cada dimensão conforme o tipo de estudo (bioinformática/ômicas, inibidores/pequenas moléculas, reprodução animal in vivo, reprodução humana clínica, meta-análise, revisão sistemática, revisão narrativa) — os artigos deste usuário costumam ser dessas categorias, e os critérios genéricos da rubrica principal não são suficientes sozinhos, especialmente para RNA-seq/ChIP-seq/DNA-seq (onde a correção de múltiplos testes é obrigatória, não opcional) e para inibidores (onde controle de especificidade off-target é o ponto mais frequentemente negligenciado). Não invente critérios fora desses dois arquivos — eles já foram calibrados com o usuário.
Quando NÃO usar

Se o pedido é só "resuma este artigo" ou "extraia os dados desta tabela" (sem pedido de classificação/ranking) — isso é uma tarefa direta, não esta skill.
Se o pedido é sobre formatação de citação/referência bibliográfica.

Fluxo de trabalho
Passo 1 — Coletar os artigos
Aceite qualquer formato de entrada que o usuário fornecer:

PDFs individuais ou pasta com múltiplos PDFs → use a skill pdf-reading (ou file-reading como roteador) para extrair o texto completo de cada um. Não analise apenas o abstract quando o PDF completo está disponível — o usuário pediu análise completa, com evidências extraídas do texto inteiro (métodos, resultados, discussão), não só do resumo.
Planilha com metadados/abstracts → leia a planilha (skill xlsx), trate cada linha como um artigo. Se só houver abstract disponível, sinalize isso na planilha final na coluna "Profundidade da análise" (muitas dimensões — sobretudo estatística e delineamento — ficam mal avaliadas sem o texto completo; nesse caso pontue de forma conservadora e explique a limitação).
Links/DOIs → tente web_fetch para obter o texto ou abstract; se o artigo estiver com paywall e não for possível ler o corpo, trate como "planilha só com abstract" acima.

Sempre peça o material suplementar quando o artigo tiver um (STAR Methods, Extended Data, "Supplementary Information", arquivos "mmc1/mmc2/..." em periódicos Cell/Elsevier). Muitos periódicos (Cell, Nature, Science) movem justamente o que a rubrica mais precisa pro material suplementar: Key Resources Table com catálogo de reagentes (Repetibilidade), seção de Data/Code Availability (Conduta), detalhamento de réplicas e testes de reprodutibilidade (Delineamento/Estatística), e figuras estendidas que validam achados centrais. Sem o suplementar, essas dimensões frequentemente viram N/A por falta de acesso mesmo tendo o texto principal completo — o que é uma perda real de informação, não uma limitação inerente do artigo. Se o usuário fornecer só o texto principal e o artigo claramente tiver material suplementar associado (menção a "Figure S1", "Table S1", "mmc" no PDF, DOI de periódico que usa esse formato), peça explicitamente o material suplementar antes de finalizar a análise daquele artigo — isso muda materialmente a nota de Repetibilidade e Conduta, e frequentemente também de Delineamento/Estatística.
Se o usuário mandar uma quantidade muito grande (dezenas+) de PDFs de uma vez, processe em lotes e dê updates de progresso a cada N artigos processados, em vez de silenciar até o fim.
Passo 2 — Avaliar cada artigo dimensão por dimensão
Primeiro identifique dois eixos do artigo:

É um estudo primário ou um artigo de síntese? Estudo primário → aplique os critérios de domínio A (ômicas), B (inibidores/pequenas moléculas), C (animal in vivo) ou D (humano clínico) de references/adaptacoes-por-tipo-de-estudo.md. Artigo de síntese (meta-análise, revisão sistemática, ou revisão narrativa) → aplique os critérios E, F ou G do mesmo arquivo — nunca aplique os critérios de delineamento de estudo primário a uma revisão ou meta-análise, isso produz uma nota sem sentido.
O artigo está dentro do escopo temático do usuário (reprodução animal/humana, biologia molecular da reprodução, bioinformática aplicada à reprodução, ou inibidores/pequenas moléculas em reprodução)? Se claramente não estiver (ex. um documento de consenso metodológico genérico de outra subárea da biologia, sem relação com reprodução), pare e avise o usuário antes de pontuar — pergunte se ele quer mesmo incluir esse artigo no lote e com qual critério, em vez de forçar uma classificação que não vai significar nada.

Antes de pontuar qualquer dimensão, faça a verificação de consistência interna dos números descrita em references/rubrica-avaliacao.md (os números batem entre abstract, métodos, resultados e tabelas?). Inconsistências reais penalizam Estatística e/ou Conduta diretamente — não são uma dimensão própria.
Para cada artigo, seguindo references/rubrica-avaliacao.md, pontue as 6 dimensões: Delineamento, Estatística, Conduta, Concordância objetivo-resultado-conclusão, Repetibilidade, e Força da evidência:

Identifique o desenho do estudo, tamanho amostral (e se há cálculo de poder), e a adequação do n ao desenho → pontue Delineamento experimental.
Identifique os métodos estatísticos, se há efeito+IC reportados, correção de múltiplos testes, sinais de p-hacking → pontue Rigor estatístico.
Verifique conflitos de interesse, financiamento, adesão a checklists (CONSORT/STROBE/PRISMA), manejo de perdas → pontue Conduta do estudo.
Compare objetivo declarado × resultado obtido × conclusão escrita — busque sinais de "spin" (conclusão mais forte que os dados) → pontue Concordância objetivo-resultado-conclusão.
Verifique se Material e Métodos tem detalhe suficiente para replicar (reagentes com fabricante/catálogo, concentrações, versões de software/pipeline, protocolo suplementar ou código público) → pontue Repetibilidade.
Avalie o tamanho do efeito relativo ao campo, se é achado isolado ou consistente com literatura, se veio de testagem massiva de hipóteses → pontue Força da evidência/probabilidade pré-teste.

Para cada dimensão, registre uma justificativa de 1–2 frases com paráfrase da evidência (não reproduza parágrafos do artigo — cite no máximo uma frase curta, e apenas se a formulação exata importar).
Passo 3 — Calcular o índice e classificar
Antes de calcular, para cada dimensão decida se ela é avaliável ou N/A — siga a seção "Duas causas diferentes para 'informação ausente'" em references/rubrica-avaliacao.md:

Texto completo disponível mas a informação não está lá → pontue baixo (falha real do artigo).
Só abstract disponível e a informação simplesmente não aparece em lugar nenhum do que você tem → marque N/A e exclua a dimensão do cálculo (não pontue baixo por isso).

Aplique a fórmula do ICM usando apenas os pesos das dimensões avaliadas, renormalizados para somar 1,0 (ver fórmula na rubrica). Depois aplique os cortes:

ICM > 8,0 → Confiável
5,0 ≤ ICM ≤ 8,0 → Pouco confiável
ICM < 5,0 → Sem confiança

Sempre mostre a nota exata (ex. 7,3), não arredonde para a categoria sem mostrar o número — o usuário precisa poder reordenar/reavaliar cortes depois. Se alguma dimensão foi marcada N/A, mostre também o peso total efetivamente avaliado (ex. "peso avaliado: 0,45 de 1,0") para o usuário calibrar a confiança na classificação daquele artigo específico.
Passo 4 — Gerar a planilha final
Consulte a skill xlsx para as boas práticas de geração de planilha antes de criar o arquivo. Estrutura sugerida (uma linha por artigo, ordenado por ICM decrescente):
ColunaConteúdoTítuloTítulo do artigoAutor(es) / AnoCategoriaConfiável / Pouco confiável / Sem confiançaICMNota final 0–10, já renormalizada se houver N/APeso avaliadoSoma dos pesos das dimensões não-N/A (ex. "1,0" se todas avaliadas, "0,45" se só duas dimensões avaliáveis)Delineamento (nota ou N/A)Estatística (nota ou N/A)Conduta (nota ou N/A)Concordância obj-result-concl (nota ou N/A)Repetibilidade (nota ou N/A)Força da evidência (nota ou N/A)Justificativa — DelineamentoParáfrase curta, ou motivo do N/A — inclua o n e se há cálculo de poderJustificativa — EstatísticaParáfrase curta, ou motivo do N/A — mencione qualquer inconsistência numérica encontradaJustificativa — CondutaParáfrase curta, ou motivo do N/AJustificativa — ConcordânciaParáfrase curta, ou motivo do N/AJustificativa — RepetibilidadeParáfrase curta, ou motivo do N/A (N/A por definição em revisões narrativas)Justificativa — Força da evidênciaParáfrase curta, ou motivo do N/ATipo de estudo identificadoEx.: "Ômicas (RNA-seq)", "Inibidor/pequena molécula", "Animal in vivo", "Humano clínico", "Meta-análise", "Revisão sistemática", "Revisão narrativa"Profundidade da análise"Texto completo + material suplementar", "Texto completo sem material suplementar — solicitado ao usuário" ou "Somente abstract — N dimensões marcadas N/A por falta de acesso"Fonte/arquivo originalnome do PDF ou link
Adicione uma segunda aba "Resumo" com contagem de artigos por categoria e a média geral do lote.
Salve em /mnt/user-data/outputs/ e use present_files para entregar. Nunca apenas descreva os resultados em texto corrido quando o pedido é para uma quantidade grande de artigos — a planilha é o output principal.
Notas importantes

Nunca infle a nota por falta de informação quando o texto completo está disponível. Se você tem o artigo inteiro e ele não reporta poder estatístico, cálculo de amostra, ou conflitos de interesse, isso é uma pontuação baixa naquela dimensão — a ausência de transparência é, em si, um sinal de risco metodológico. Isso é diferente de você só ter acesso ao abstract — nesse caso, marque N/A e exclua a dimensão do ICM (renormalizando os pesos), em vez de pontuar baixo por um problema de acesso seu, não do artigo.
Seja direto nas justificativas. O usuário pediu para filtrar agressivamente — não suavize a avaliação de um artigo fraco só para parecer educado.
Se o usuário não especificar a área/tipo de estudo predominante do lote, adapte o peso relativo dos sinais de alerta dentro de cada dimensão ao tipo de desenho encontrado (ex. "poder estatístico" não se aplica da mesma forma a um estudo qualitativo — nesse caso, avalie rigor conforme os critérios equivalentes de qualidade metodológica qualitativa, e documente essa adaptação na justificativa).
