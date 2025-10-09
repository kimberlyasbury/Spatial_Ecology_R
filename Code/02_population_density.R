# code for estimating population density

#install package
install.packages("spatstat")

library(spatstat)

bei

plot(bei)

plot(bei, pch=15, cex-5)

bei.extra

plot(bei.extra)

plot(bei.extra$elev)

plot(bei.extra[[1]])

el<- bei.extra[[1]]

#to look up to see if there is a command within a function
?density

#passing from points (vectors) to a map (raster)

beidens <- density(bei)

#to add points back to the density map, note, if you use plot(bei), will override the density map. therefore, you need to use the points function to add a layer
plot(beidens)
points(bei)

