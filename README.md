Creación de paquetes     17/11/14
==========================================================================================

Información acerca de git.

Repositorio      https://github.com/JuanCarlos1993/TareaExtra

==========================================================================================

Información importante.

#Es necesario instalar los siguientes paquetes

install.packages(c("roxygen2", "devtools"))
library(roxygen2)
library(devtools)

#Creamos un folder

create("Deflact")

#Creamos un archivo.R con la función y lo guardamos en el folder denominado R

#Después documentamos el archivo.R al principio, esto no afecta al paquete gracias al
paquete roxygen2

#Efectuamos los siguientes comandos

setwd("./Deflact")
document()

#Por último efectuamos lo siguiente que crea el paquete

setwd("..")
install("Deflact")


