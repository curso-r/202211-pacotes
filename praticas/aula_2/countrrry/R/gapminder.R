
calcular_estatisticas <- function(continentes, anos = 2000:2022) {
  if (missing(continentes)) usethis::ui_stop("PRECISO DE UM CONTINENTE")

  dados::dados_gapminder |>
    dplyr::filter(continente %in% continentes, ano %in% anos) |>
    dplyr::group_by(ano) |>
    dplyr::summarise(
      pop = sum(populacao) / 1e6,
      vida = mean(expectativa_de_vida)
    )
}
