#' A Deflactor Function
#'
#' This function allows you to calculate the deflactor index.
#' @param archivo.csv, fecha.valuacion, vector.fechas, vector.montos
#' @keywords Deflact
#' @export
#' @examples
#' deflactacion_function()

generar.factores.inflacion <- function(archivo.csv, 
                                       fecha.valuacion,
                                       vector.fechas,
                                       vector.montos) {
  
  archivo.texto <- readLines(paste0("./", 
                                    archivo.csv)
  )
  linea.inicial <- grep("*SP1*", archivo.texto)
  
  datos <- read.csv(paste0("./", 
                           archivo.csv), 
                    skip = linea.inicial - 1, 
                    header = TRUE, 
                    stringsAsFactors = FALSE)
  datos <- datos[, 1:2]
  datos$Fecha <- as.Date(datos$Fecha,
                         format = "%d/%m/%Y")
  indices.datos <- match(vector.fechas, 
                         datos$Fecha)
  indice.valuacion <- match(fecha.valuacion, 
                            datos$Fecha)
  datos$SP1[indice.valuacion] / datos$SP1[indices.datos] * 
    vector.montos
}
