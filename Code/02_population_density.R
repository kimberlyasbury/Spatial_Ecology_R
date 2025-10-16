# code for estimating population density

#install package
install.packages("spatstat")

library(spatstat)

bei

plot(bei)

plot(bei, pch=15, cex.5)

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

# Plotting the maps one beside the other
par(mfrow=c(1,2))
plot(elevation2)
plot(densitymap)

# Exercise: make a multiframe with maps one on top of the other
par(mfrow=c(2,1))
plot(elevation2)
plot(densitymap)

# one frined to clear graphs
dev.off()
plot(elevation2)

# Changin colors to maps
cl <- colorRampPalette(c("red", "orange", "yellow"))(3)
plot(densitymap, col=cl)

cl <- colorRampPalette(c("red", "orange", "yellow"))(10)
plot(densitymap, col=cl)

cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(densitymap, col=cl)

# search your browser for "colors in R" 
# http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

# Exercise: change the color ramp palette using different colors

cln <- colorRampPalette(c("purple1", "orchid2", "palegreen3", "paleturquoise"))(100)
plot(densitymap, col=cln)

# Exrcise: build a multiframe and plot the densitymap with two different color ramp palettes one beside the other

par(mfrow=c(1,2))

cln <- colorRampPalette(c("purple1", "orchid2", "palegreen3", "paleturquoise"))(100)
plot(densitymap, col=cln)

clg <- colorRampPalette(c("green4", "green3", "green2", "green1", "green"))(100)
plot(densitymap, col=clg)

dev.off()

par(mfrow=c(1,2))
plot(elevation2)
plot(densitymap)
 
par(mfrow=c(2,1))
plot(elevation2)
plot(densitymap)
 
dev.off()

plot(elevation2)
cl <- colorRampPalette(c("red", "orange", "yellow"))(3)
plot(densitymap, col=cl)
cl <- colorRampPalette(c("red", "orange", "yellow"))(10)
plot(densitymap, col=cl)
cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(densitymap, col=cl)
cl <- colorRampPalette(c("darkolivegreen", "darkseagreen4", "aquamarine"))(100)
plot(densitymap, col=cl)


cl <- colorRampPalette(c("darkolivegreen", "darkseagreen4", "aquamarine"))(100)
plot(densitymap, col=cl)
cln <- colorRampPalette(c("purple1", "orchid2", "palegreen3", "paleturquoise"))(100)
plot(densitymap, col=cln)

par(mfrow=c(2,2))
plot(bei)
plot(el)
plot(densitymap, col=cl)
plot(densitymap, col=cln)
