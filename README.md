# Estadística II: notas y diapositivas del curso

Proyecto Quarto (sitio web) con los apuntes y las diapositivas del curso
Estadística II, Escuela de Matemáticas, UIS.

## Abrir el proyecto en un computador nuevo

1. Instalar **R** (https://cran.r-project.org), **RStudio**
   (https://posit.co/download/rstudio-desktop/) y **Git**
   (https://git-scm.com). Quarto viene incluido en RStudio.
2. En la **Terminal** de RStudio, instalar LaTeX para los PDF:

       quarto install tinytex

   Cerrar y volver a abrir RStudio.
3. En la **Consola** de R, instalar los paquetes:

       install.packages(c("knitr", "rmarkdown", "readxl", "ggplot2", "e1071", "tinytex"))

4. Abrir el proyecto con doble clic en `estadistica2.Rproj`.
5. En la Terminal, ver el sitio:

       quarto preview

## Si el primer PDF falla con "missing hyphenation file"

En la Consola de R:

    tinytex::tlmgr(c("install", "--reinstall", "hyphen-spanish"))

y repetir `quarto render`.

## Estructura

    _quarto.yml        configuración del sitio
    _variables.yml     semestre, docente, correo (cambiar cada semestre)
    index.qmd          página de inicio
    programa.qmd       programa y referencias del curso
    referencias.bib    bibliografía (BibTeX); estilo APA con apa.csl
    styles.css         estilos adicionales
    apuntes/           notas de clase (HTML y PDF)
    diapositivas/      presentaciones (revealjs)
    talleres/          talleres
    datos/             bases de datos del curso
    imagenes/          imágenes
    R/                 scripts auxiliares (revisar_citas.R)
    docs/              sitio generado por Quarto (lo publica GitHub Pages)

## Rutina de trabajo

1. Editar los archivos `.qmd`.
2. `quarto preview` para revisar.
3. `quarto render` para generar el sitio completo (incluye los PDF).
4. Commit y push desde la pestaña Git de RStudio.
