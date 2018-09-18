library(ggplot2)

# Creamos la fuente de datos
val <- c('rojo', 'verde', 'negro', 'amarillo', 'azul', 'naranja', 'violeta')
qty <- c(67, 84, 65, 39, 124, 203, 98)

dt.ep <- data.frame(val, qty)
head(dt.ep)
str(dt.ep)
# Es importante que el valor del eje x sea 'Factor'

# reorder = reordena de mayor a menor los valores antes de mostrarlos
bp <- ggplot(dt.ep, aes(x=reorder(val, qty), y=qty))
bp  = bp + xlab('Clase') + ylab('Cantidad')
bp  = bp + geom_bar(stat = "identity", color="black", fill="blue")
bp  = bp + geom_text(aes(label = qty), hjust = -0.2)
bp  = bp + theme(axis.text.x = element_text(angle = 90, hjust = 1))
bp  = bp + coord_flip()
bp 