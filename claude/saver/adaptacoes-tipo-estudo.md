Adaptações por Tipo de Estudo — Reprodução Animal/Humana, Biologia Molecular, Bioinformática, Inibidores e Tipos de Síntese (Revisões/Meta-análises)

Este arquivo complementa rubrica-avaliacao.md. As 6 dimensões e os pesos continuam os mesmos — o que muda é o que procurar dentro de cada dimensão conforme o tipo de artigo. Primeiro identifique se é um estudo primário (seções A-D, por domínio: ômicas, inibidores, animal in vivo, humano clínico) ou um artigo de síntese (seções E-G: meta-análise, revisão sistemática, revisão narrativa) — os critérios de delineamento/estatística são bem diferentes entre os dois grupos, e forçar os critérios de estudo primário em um artigo de síntese (ou vice-versa) produz uma nota sem sentido. Um artigo pode combinar mais de um tipo (ex. RNA-seq + validação com inibidor) — nesse caso aplique os dois conjuntos de critérios às partes correspondentes.

A. Bioinformática / Ômicas (RNA-seq, DNA-seq, ChIP-seq, proteômica)
Este é o tipo mais suscetível ao problema central do Ioannidis: milhares de genes/proteínas/regiões testados simultaneamente = probabilidade pré-teste (R) extremamente baixa para qualquer achado individual. Trate isso como default, não como exceção.
Delineamento (peso 0,25):

Número de réplicas biológicas (não confundir com réplicas técnicas). Menos de 3 réplicas biológicas por condição é uma bandeira vermelha séria em RNA-seq/ChIP-seq — nota baixa mesmo que o resto pareça bom.
Desenho do experimento: pareado? Existe controle de batch effect (lote de sequenciamento, dia de extração)? Isso é frequentemente negligenciado e raramente reportado — se não é mencionado, penalize.
Profundidade/cobertura de sequenciamento adequada ao objetivo (ex. profundidade rasa para detectar transcritos de baixa expressão é falha de desenho).
Plataforma e pipeline descritos com detalhe suficiente para reprodutibilidade.

Estatística (peso 0,25):

Correção de múltiplos testes é obrigatória (FDR/Benjamini-Hochberg ou equivalente). Ausência de correção quando milhares de genes são testados = nota muito baixa nesta dimensão, sem exceção — é exatamente o cenário que Ioannidis descreve como PPV catastroficamente baixa.
Método de normalização apropriado (DESeq2, edgeR, TPM, etc.) e consistente com o tipo de dado.
Validação ortogonal de achados-chave: RNA-seq validado por qPCR, ChIP-seq validado por ChIP-qPCR, proteômica validada por Western blot. A ausência de qualquer validação ortogonal para os achados centrais do artigo é penalizada — um hit de sequenciamento sozinho, sem confirmação por método independente, tem probabilidade pré-teste baixa por definição.

Conduta (peso 0,15):

Disponibilização dos dados brutos em repositório público (GEO, SRA, PRIDE, ProteomeXchange) com número de acesso. Hoje isso é praticamente padrão mínimo em periódicos sérios — ausência é sinal de alerta forte, não neutro.
Código/pipeline de análise disponível (GitHub, Zenodo) soma pontos, mas não é obrigatório na mesma medida que os dados brutos.

Concordância objetivo-resultado-conclusão (peso 0,15):

Cuidado com superinterpretação biológica: pathway/enrichment analysis apontando "envolvimento" de uma via com base em poucos genes de fold-change modesto, seguida de conclusão que trata o mecanismo como estabelecido, é spin — penalize.
A conclusão mecanística (ex. "gene X regula processo Y") deve ser proporcional ao tipo de evidência (correlacional vs. funcional/causal).

Força da evidência (peso 0,10):

Por definição, um achado isolado de omics sem validação funcional subsequente (knockdown/knockout/overexpression mostrando o fenótipo esperado) tem probabilidade pré-teste baixa. Nota alta aqui exige evidência funcional, não só correlação de expressão.

Repetibilidade (peso 0,10): este é o critério mais exigente para ômicas — verifique versão do genoma/transcriptoma de referência usada, versão de cada ferramenta do pipeline (ex. "DESeq2 v1.34", não só "DESeq2"), parâmetros exatos de alinhamento/quantificação, e se o código está em repositório público (GitHub/Zenodo) com os parâmetros usados, não só o nome da ferramenta. Pipeline descrito apenas como "processado com ferramentas padrão" sem versões é nota baixa aqui, mesmo que os dados brutos estejam depositados (isso é conduta, não repetibilidade).

B. Estudos com inibidores e pequenas moléculas aplicados à reprodução
Delineamento (peso 0,25):

Controle veículo (vehicle control) presente e adequado (mesmo solvente/concentração usado para diluir o inibidor).
Curva dose-resposta, não apenas uma concentração única — uma única dose testada é desenho fraco para estabelecer efeito real.
Controle de especificidade do alvo: o inibidor tem efeitos off-target conhecidos? Há confirmação por método ortogonal e independente da farmacologia (ex. knockdown/knockout genético do mesmo alvo reproduzindo o fenótipo)? Ausência disso é uma falha de desenho comum e séria nessa área — penalize.
Mais de um modelo/linhagem celular ou espécie testado aumenta a nota; resultado em um único modelo é mais frágil.

Estatística (peso 0,25):

Réplicas biológicas independentes (cultivos/animais separados), não só replicatas técnicas do mesmo experimento.
Teste apropriado para comparações múltiplas de dose (ANOVA com post-hoc, não múltiplos testes t não corrigidos).

Conduta (peso 0,15):

Fonte, pureza e número de catálogo do composto reportados.
Financiamento por empresa fabricante do composto sem controles de independência é conflito de interesse relevante.

Concordância (peso 0,15):

Extrapolar efeito in vitro (célula/cultura) para conclusão sobre função reprodutiva in vivo/organismo inteiro sem qualquer validação in vivo é spin — penalize a conclusão, não necessariamente o experimento em si.

Força da evidência (peso 0,10):

Efeito consistente com mecanismo de ação já descrito na literatura para aquele alvo aumenta a nota; efeito surpreendente/contraintuitivo sem explicação mecanística exige mais cautela.

Repetibilidade (peso 0,10): número de catálogo e fabricante do composto, concentração e tempo de exposição exatos, origem/autenticação da linhagem celular (ex. STR profiling), lote do reagente quando relevante para reprodutibilidade biológica (comum em soro fetal bovino, por exemplo). Ausência desses detalhes é uma falha comum e específica desta área.

C. Reprodução animal (in vivo)
Delineamento (peso 0,25):

Controle do ciclo estral/hormonal quando relevante (fêmeas), ou justificativa de por que não foi controlado.
Uso de ambos os sexos quando o desenho permite, ou justificativa para uso de um só.
Randomização dos animais entre grupos e cegamento do avaliador (quem mede o desfecho não sabe o grupo) — cegamento é frequentemente ausente nessa área; não é motivo para reprovar automaticamente, mas a ausência sem justificativa reduz a nota.
Tamanho de n por grupo: estudos animais costumam ter n pequeno por razões éticas/práticas — não aplique os mesmos padrões de epidemiologia humana de forma rígida, mas ainda assim n=3-4 por grupo sem justificativa de cálculo amostral é uma limitação real a registrar.

Conduta (peso 0,15):

Aprovação de comitê de ética em uso animal (CEUA/IACUC/equivalente) explicitamente citada — ausência é falha grave, não estética.
Aderência às diretrizes ARRIVE (reporting de estudos animais) soma pontos.

Estatística (peso 0,25): aplicar os critérios gerais da rubrica principal, atentando para teste correto quando há medidas repetidas no mesmo animal (modelos mistos, não testes t repetidos ignorando a correlação intra-sujeito).
Repetibilidade (peso 0,10): raça/linhagem, idade, peso, protocolo de sincronização hormonal (drogas, doses, timing exato), fabricante dos hormônios/kits usados, e equipamento de imagem/dosagem especificado. Estudos com animais de raça ou procedência "desconhecida" pontuam baixo aqui por definição — outro grupo não consegue replicar o que não sabe que população foi usada.

D. Reprodução humana (clínico/observacional)
Aplicar a rubrica principal (rubrica-avaliacao.md) sem adaptação especial, com atenção a:

Controle de confundidores típicos da área (idade, IMC, causa de infertilidade, tempo de infertilidade).
Tamanho amostral em estudos de reprodução assistida costuma ser pequeno por limitação prática — registrar como limitação real, não ignorar, mas não tratar como sinal de má-fé por si só.
Aprovação ética e consentimento informado.

Repetibilidade (peso 0,10): critérios de inclusão/exclusão detalhados o bastante para outro centro replicar a seleção de pacientes, protocolo de estimulação/procedimento descrito com doses e timing, instrumentos de medida padronizados e validados (não instrumentos "caseiros" sem validação publicada).

E. Meta-análise
Aqui "delineamento" não se refere a um experimento único, mas ao rigor do processo de revisão e agregação de estudos.
Delineamento (peso 0,25):

Adesão a um protocolo reconhecido (PRISMA para meta-análises de intervenção, MOOSE para observacionais) e, idealmente, registro prévio (ex. PROSPERO).
Critérios de inclusão/exclusão explícitos e busca sistemática em múltiplas bases (não só uma fonte, sem recorte arbitrário de idioma/período sem justificativa).
Avaliação formal da qualidade metodológica de cada estudo incluído (ex. Cochrane Risk of Bias, Newcastle-Ottawa Scale). Ausência disso é uma falha grave — significa que estudos bons e ruins foram pesados igual.

Estatística (peso 0,25):

Escolha e justificativa do modelo de pooling (efeito fixo vs. aleatório) conforme a heterogeneidade observada.
Heterogeneidade reportada (I², teste Q) — meta-análise que não reporta isso é uma bandeira vermelha.
Avaliação de viés de publicação (funnel plot, teste de Egger ou equivalente).
Análise de sensibilidade/subgrupo quando a heterogeneidade é alta, em vez de simplesmente apresentar um efeito agregado único.

Conduta (peso 0,15): registro prévio do protocolo, conflitos de interesse dos autores da meta-análise (não dos estudos originais), disponibilidade dos dados extraídos/planilha de extração.
Concordância (peso 0,15): a conclusão precisa ser proporcional à heterogeneidade encontrada — apresentar um efeito agregado único e forte quando a heterogeneidade entre estudos é alta (I² alto) é spin, mesmo que estatisticamente "significativo".
Repetibilidade (peso 0,10): aqui o que precisa ser replicável é a busca, não um experimento de bancada — strings de busca exatas reportadas, bases de dados e datas da busca documentadas, lista de estudos excluídos com motivo. Se outro pesquisador não consegue rodar a mesma busca e chegar num conjunto de estudos parecido, a meta-análise pontua baixo aqui.
Força da evidência (peso 0,10): número e qualidade média dos estudos incluídos; uma meta-análise de poucos estudos pequenos e de baixa qualidade não é automaticamente mais forte que um estudo primário bem feito só por ser "meta-análise".
F. Revisão sistemática (sem metanálise quantitativa)
Mesmos critérios de delineamento, conduta e repetibilidade de uma meta-análise (protocolo, busca sistemática reproduzível, avaliação de qualidade dos estudos incluídos), mas sem agregação estatística formal.
Estatística (peso 0,25): aqui avalia-se o rigor da síntese qualitativa — os achados são organizados de forma estruturada por desfecho/tema, com transparência sobre discordâncias entre estudos? Uma revisão sistemática que apenas lista estudos sem sintetizar padrões tem nota baixa aqui.
Concordância (peso 0,15): a conclusão reflete a real qualidade e consistência da base de evidência reunida, sem apresentar um consenso que os estudos individuais não sustentam.
G. Revisão narrativa (sem metodologia sistemática declarada)
Este é o tipo mais comum e também o mais suscetível a viés de seleção da literatura pelo(s) autor(es), porque não há metodologia de busca/inclusão declarada — a escolha de quais estudos citar fica a critério pessoal.
Delineamento (peso 0,25): avalie a transparência sobre como a literatura foi selecionada (mesmo informal), a abrangência da cobertura do tema e a atualidade das referências centrais. Nota necessariamente conservadora por padrão — não porque a revisão seja "ruim", mas porque o gênero não permite verificar ausência de seleção enviesada. Isso não é o mesmo que reprovar o artigo; é reconhecer o limite estrutural do formato.
Estatística (peso 0,25): reinterpretada aqui como rigor no uso das fontes primárias — as afirmações feitas são apropriadamente sustentadas por citações, e o texto distingue claramente o que é consenso estabelecido do que é especulação/hipótese dos próprios autores? Uma revisão que rotula suas próprias especulações como tal (em vez de apresentá-las como fato) ganha nota aqui, mesmo sendo uma revisão narrativa.
Conduta (peso 0,15): conflitos de interesse e financiamento dos autores da revisão.
Concordância (peso 0,15): o que a introdução promete cobrir é o que o corpo do texto de fato entrega, sem inflar conclusões além do que a literatura citada sustenta.
Repetibilidade (peso 0,10): não se aplica no sentido literal — não há experimento nem busca sistemática a repetir numa revisão narrativa. Marque N/A por definição do gênero (não é falta de acesso nem falha do autor) e renormalize os pesos das demais dimensões, seguindo a regra de recálculo do ICM em rubrica-avaliacao.md.
Força da evidência (peso 0,10): qualidade geral e atualidade da base de estudos citados, e se a revisão cobre o estado da arte de forma balanceada (não seleciona só estudos que confirmam uma tese preferida do autor).

Artigos fora do escopo temático
Se um artigo claramente não for sobre reprodução animal/humana, biologia molecular da reprodução, bioinformática aplicada à reprodução, ou inibidores/pequenas moléculas em reprodução (ex. um documento de consenso metodológico genérico de outra subárea da biologia), não force uma classificação. Pare, avise o usuário que o artigo parece fora do escopo temático do lote, e pergunte se ele quer mesmo incluí-lo (e com qual critério) antes de continuar. Marcar "fora de escopo" na planilha sem calcular ICM é preferível a produzir um número que não significa nada.
Como registrar a adaptação na planilha
Ao preencher a coluna de justificativa de cada dimensão, mencione explicitamente qual conjunto de critérios (A, B, C, D, E, F ou G) foi aplicado quando não for óbvio, para o usuário poder auditar a decisão depois — ex.: "Estatística (critério A - ômicas): RNA-seq com 2 réplicas biológicas apenas e sem correção FDR reportada → nota 2."
