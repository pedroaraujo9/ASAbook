#'Efeito de esteroides no tratamento de hepatite
#'
#'Dados de sobrevivencia de um experimento aleatorizado com efeito de esteroides no tempo de vidas de pacientes com hepatite.
#'
#' @docType data
#'
#' @usage data(hepatite)
#'
#' @format Um  \code{data.frame} com 29 observacoe e variaveis.
#' \describe{
#'    \item{tempos}{tempo de vida em semanas}
#'    \item{cens}{indicador de censura (0 indica censura)}
#'    \item{grupos}{grupo de tratamento (controle, esteroide)}
#' }
#'
#' @keywords datasets
#'
#' @references Gregoryet al.,1975.
#'
#' @source Colosimo, E. A.; Giolo, S. R. (2006). Analise de Sobrevivencia Aplicada. Sao Paulo: Edgard Blucher.
#'
#' @examples
#' data(hepatite)
"hepatite"


#'Dados com tempo de vida de pacientes com leucemia
#'
#'Dados com tempo de vida e outras caracteristicas de criancas com leucemia (LLA) de Belo Horizonte, Brasil.
#'
#' @docType data
#'
#' @usage data(leucemia)
#'
#' @format Um  \code{data.frame} com 103 linhas e 10 variaveis.
#' \describe{
#'    \item{leuini}{quantidade de leucocitos em 1000 leucocitos por mm^3}
#'    \item{tempos}{tempo de vida a partir remissao ate a recidiva ou morte}
#'    \item{cens}{indicador de censura (0 indica censura)}
#'    \item{idade}{idade em meses}
#'    \item{zpeso}{peso padronizado pela idade e sexo}
#'    \item{zest}{altura padronizada pela idade e sexo}
#'    \item{pas}{porcentagem de linfoblastos}
#'    \item{vac}{porcentagem de vacuolos}
#'    \item{risk}{fator de risco em \%}
#'    \item{r6}{indicador de sucesso da remissao (1 indica sucesso)}
#' }
#'
#' @keywords datasets
#'
#' @references Vianaet al.(1994) e Colosimoet al.(1992).
#'
#' @source Colosimo, E. A.; Giolo, S. R. (2006). Analise de Sobrevivencia Aplicada. Sao Paulo: Edgard Blucher.
#'
#' @examples
#' data(leucemia)
"leucemia"


#'Dados com tempo de vida de pacientes com leucemia
#'
#'Dados com tempo de vida e outras caracteristicas (binarizadas) de criancas com leucemia (LLA) de Belo Horizonte, Brasil.
#'
#' @docType data
#'
#' @usage data(leucemia_cat)
#'
#' @format Um  \code{data.frame} com 103 linhas e 10 variaveis.
#' \describe{
#'    \item{leuini}{quantidade de leucocitos em 1000 leucocitos por mm^3}
#'    \item{tempos}{tempo de vida a partir remissao ate a recidiva ou morte}
#'    \item{cens}{indicador de censura (0 indica censura)}
#'    \item{idade}{idade em meses}
#'    \item{zpeso}{peso padronizado pela idade e sexo}
#'    \item{zest}{altura padronizada pela idade e sexo}
#'    \item{pas}{porcentagem de linfoblastos}
#'    \item{vac}{porcentagem de vacuolos}
#'    \item{risk}{fator de risco em \%}
#'    \item{r6}{indicador de sucesso da remissao (1 indica sucesso)}
#' }
#'
#' @keywords datasets
#'
#' @references Vianaet al.(1994) e Colosimoet al.(1992).
#'
#' @source Colosimo, E. A.; Giolo, S. R. (2006). Analise de Sobrevivencia Aplicada. Sao Paulo: Edgard Blucher.
#'
#' @examples
#' data(leucemia_cat)
"leucemia_cat"


#'Dados de aleitamento materno
#'
#'Dados com tempo de aleitamento materno e caracteristicas demograficas e comportamentais.
#'
#' @docType data
#'
#' @usage data(desmame)
#'
#' @format Um  \code{data.frame} com 150 linhas e 13 variaveis.
#' \describe{
#'    \item{tempo}{empo de aleitamento materno em meses}
#'    \item{cens}{indicador de censura (0 indica censura)}
#'    \item{id}{identificacao da mae}
#'    \item{V1}{experiencia com amamentacao (1 se nao)}
#'    \item{V2}{numero de filhos vivos (1 se >2}
#'    \item{V3}{conceito materno sobre tempo ideal de amamentacao (1 se <= 6 meses)}
#'    \item{V4}{dificuldade para amamentar nos primeiros dias pos-parto (1 se sim)}
#'    \item{V5}{tipo de servico em que realizou o pre-natal (1 se privado ou convenio, 0 se publico)}
#'    \item{V6}{recebeu exclusivamente leite materno na maternidade (1 se nao)}
#'    \item{V7}{a crianca tem contato com o pai (1 se nao)}
#'    \item{V8}{renda per capita em salario minimo/mes (1 se < 1 SM)}
#'    \item{V9}{peso ao nascimento (1 se <2.5kg)}
#'    \item{V10}{tempo de separacao mae-filho pos-parto (1 se > 6)}
#'    \item{V11}{permanencia no bercario (1 se sim)}
#' }
#'
#' @keywords datasets
#'
#' @source Colosimo, E. A.; Giolo, S. R. (2006). Analise de Sobrevivencia Aplicada. Sao Paulo: Edgard Blucher.
#'
#' @examples
#' data(desmame)
"desmame"
