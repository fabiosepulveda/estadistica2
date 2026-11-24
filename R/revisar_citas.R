# revisar_citas.R
# Muestra las claves que se citan en un archivo .qmd pero que no están en
# referencias.bib. Si responde character(0), no falta ninguna.

revisar_citas <- function(archivo_qmd, archivo_bib = "referencias.bib") {
  bib <- readLines(archivo_bib, encoding = "UTF-8")
  claves_bib <- trimws(sub("^@\\w+\\{([^,]+),.*", "\\1",
                           grep("^@", bib, value = TRUE)))
  qmd <- readLines(archivo_qmd, encoding = "UTF-8")
  claves_qmd <- unique(unlist(regmatches(qmd, gregexpr("@[a-z]+[0-9]{4}", qmd))))
  setdiff(sub("@", "", claves_qmd), claves_bib)
}

revisar_citas("apuntes/cap1-estimacion.qmd")
revisar_citas("diapositivas/cap1-estimacion.qmd")
