# this is a comment and will help humans understanding my code!

vale <- c(5, 10, 13, 20, 30)
elia <- c(2, 5, 10, 40, 70)
plot(elia, vale)
#use pch to change the shape of the point
plot(elia, vale, pch=19)
#use col to change the point color
plot(elia, vale, pch=19, col="blue")
#use cex to change the dimension of the point
plot(elia, vale, pch=19, col="blue", cex=2)
#use xlab to label the x axis and ylab to label the y axis
plot(elia, vale, pch=19, col="blue", cex=2, xlab="forest biomass", ylab="Leopard abundance")

