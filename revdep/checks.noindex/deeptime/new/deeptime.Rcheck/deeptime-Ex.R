pkgname <- "deeptime"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('deeptime')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("coord_geo")
### * coord_geo

flush(stderr()); flush(stdout())

### Name: coord_geo
### Title: Transformed coordinate system with geological timescale
### Aliases: coord_geo CoordGeo
### Keywords: datasets

### ** Examples

library(ggplot2)
#single scale on bottom
ggplot() +
  geom_point(aes(y = runif(1000, 0, 8), x = runif(1000, 0, 1000))) +
  scale_x_reverse() +
  coord_geo(xlim = c(1000, 0), ylim = c(0,8)) +
  theme_classic()

#stack multiple scales
ggplot() +
  geom_point(aes(y = runif(1000, 0, 8), x = runif(1000, 0, 100))) +
  scale_x_reverse() +
  coord_geo(xlim = c(100, 0), ylim = c(0,8), pos = as.list(rep("bottom", 3)),
  dat = list("stages", "epochs", "periods"),
  height = list(unit(4, "lines"), unit(4, "lines"), unit(2, "line")),
  rot = list(90, 90, 0), size = list(2.5, 2.5, 5), abbrv = FALSE) +
  theme_classic()



cleanEx()
nameEx("coord_trans_flip")
### * coord_trans_flip

flush(stderr()); flush(stdout())

### Name: coord_trans_flip
### Title: Transformed and flipped Cartesian coordinate system
### Aliases: coord_trans_flip CoordTransFlip
### Keywords: datasets

### ** Examples

library(ggplot2)
ggplot(mtcars, aes(disp, wt)) +
  geom_point() +
  coord_trans_flip(x = "log10", y = "log10")



cleanEx()
nameEx("coord_trans_xy")
### * coord_trans_xy

flush(stderr()); flush(stdout())

### Name: coord_trans_xy
### Title: Transformed XY Cartesian coordinate system
### Aliases: coord_trans_xy CoordTransXY
### Keywords: datasets

### ** Examples

#make transformer
library(ggforce)
trans <- linear_trans(shear(2, 0), rotate(-pi / 3))

#set up data to be plotted
square <- data.frame(x = c(0, 0, 4, 4), y = c(0, 1, 1, 0))
points <- data.frame(x = runif(100, 0, 4), y = runif(100, 0, 1))

#plot data normally
library(ggplot2)
ggplot(data = points, aes(x = x, y = y)) +
  geom_polygon(data = square, fill = NA, color = "black") +
  geom_point(color = 'black') +
  coord_cartesian(expand = FALSE) +
  theme_classic()

#plot data with transformation
ggplot(data = points, aes(x = x, y = y)) +
  geom_polygon(data = square, fill = NA, color = "black") +
  geom_point(color = 'black') +
  coord_trans_xy(trans = trans, expand = FALSE) +
  theme_classic()



cleanEx()
nameEx("disparity_through_time")
### * disparity_through_time

flush(stderr()); flush(stdout())

### Name: disparity_through_time
### Title: Disparity through time plot using lattice
### Aliases: disparity_through_time

### ** Examples

g <- data.frame(x = runif(100, 0, 60), y = runif(100,0,10),
                z = factor(rep(periods$name[1:5], each=20),
                levels = periods$name[1:5]))
disparity_through_time(z~x*y, data = g, groups = z, aspect = c(1.5,2),
                       xlim = c(0,60), ylim = c(0,10), col.regions = "lightgreen",
                       col.point = c("red","blue"))



cleanEx()
nameEx("ggarrange2")
### * ggarrange2

flush(stderr()); flush(stdout())

### Name: ggarrange2
### Title: ggarrange2
### Aliases: ggarrange2

### ** Examples

library(ggplot2)
p1 <- ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) +
  geom_point()
p2 <- ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) +
  geom_point() + facet_wrap( ~ cyl, ncol=2, scales = 'free') +
  guides(colour='none') +
  theme()
ggarrange2(p1, p2, widths = c(2,1), labels = c('a', 'b'))

p3 <- ggplot() +
  geom_point(aes(y = runif(1000, 0, 8), x = runif(1000, 0, 1000))) +
 scale_x_reverse() +
 coord_geo(xlim = c(1000, 0), ylim = c(0,8)) +
 theme_classic()
ggarrange2(ggarrange2(p1, p2, widths = c(2,1), draw = FALSE), p3, nrow = 2)



cleanEx()
nameEx("gggeo_scale")
### * gggeo_scale

flush(stderr()); flush(stdout())

### Name: gggeo_scale
### Title: Add a geologic scale to ggplots
### Aliases: gggeo_scale gggeo_scale.gtable gggeo_scale.ggplot
###   gggeo_scale.geo_scale print.geo_scale

### ** Examples

library(ggplot2)
# bottom scale by default
p <- ggplot() +
  geom_point(aes(y = runif(1000, 0, 8), x = runif(1000, 0, 1000))) +
  scale_x_reverse() +
  coord_cartesian(xlim = c(1000, 0), ylim = c(0, 8), expand = FALSE) +
  theme_classic()
gggeo_scale(p)

# can specify any side of the plot
p <- ggplot() +
 geom_point(aes(x = runif(1000, 0, 8), y = runif(1000, 0, 1000))) +
 scale_y_reverse() +
 coord_cartesian(xlim = c(0, 8), ylim = c(1000, 0), expand = FALSE) +
 theme_classic()
gggeo_scale(p, pos = "left", rot = 90)

# can add multiple scales
p <- ggplot() +
  geom_point(aes(y = runif(1000, 0, 8), x = runif(1000, 0, 100))) +
  scale_x_reverse() +
  coord_cartesian(xlim = c(100, 0), ylim = c(0, 8), expand = FALSE) +
  theme_classic()
p <- gggeo_scale(p, abbrv = FALSE)
p <- gggeo_scale(p, dat = "epochs", height = unit(4, "lines"), rot = 90, size = 2.5, abbrv = FALSE)
gggeo_scale(p, dat = "stages", height = unit(4, "lines"), rot = 90, size = 2.5, abbrv = FALSE)

# intervals on both sides for different timescales (ICS stages vs North American Land Mammal Ages)
p <- ggplot() +
  geom_point(aes(x = runif(1000, 0, 10), y = runif(1000, 0, 65))) +
  scale_y_reverse() +
  coord_cartesian(xlim = c(0, 10), ylim = c(65, 0), expand = FALSE) +
  theme_classic()
p <- gggeo_scale(p, dat = "stages", pos = "left", height = unit(4, "lines"), size = 2.5,
                 abbrv = FALSE)
gggeo_scale(p, dat = "North American Land Mammal Ages", pos = "right", height = unit(4, "lines"),
            size = 2.5, abbrv = FALSE)

#can add scales to a faceted plot
#use gggeo_scale_old() if you have more than one column
df <- data.frame(x = runif(1000, 0, 541), y = runif(1000, 0, 8),
                 z = sample(c(1, 2, 3, 4), 1000, TRUE))
p <- ggplot(df) +
  geom_point(aes(x, y)) +
  scale_x_reverse() +
  coord_cartesian(xlim = c(541, 0), ylim = c(0, 8), expand = FALSE) +
  theme_classic() +
  facet_wrap(~z, ncol = 1)
gggeo_scale(p)

#can even add a scale to a phylogeny (using ggtree)
## Don't show: 
if (require(ggtree)) (if (getRversion() >= "3.4") withAutoprint else force)({ # examplesIf
## End(Don't show)
library(phytools)
library(ggtree)
tree <- pbtree(b = .03, d = .01,  n=100)
p <- ggtree(tree) +
  coord_cartesian(xlim = c(-500, 0), ylim = c(-2, Ntip(tree)), expand = FALSE) +
  scale_x_continuous(breaks=seq(-500, 0, 100), labels=abs(seq(-500, 0, 100))) +
  theme_tree2()
p <- revts(p)
gggeo_scale(p, neg = TRUE)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("gggeo_scale_old")
### * gggeo_scale_old

flush(stderr()); flush(stdout())

### Name: gggeo_scale_old
### Title: Add a geologic scale to ggplots (old version)
### Aliases: gggeo_scale_old

### ** Examples

library(ggplot2)
# bottom scale by default
p <- ggplot() +
  geom_point(aes(y = runif(1000, .5, 8), x = runif(1000, 0, 1000))) +
  scale_x_reverse() +
  coord_cartesian(xlim = c(0, 1000), ylim = c(0,8), expand = FALSE) +
  theme_classic()
gggeo_scale_old(p)

# can specify any side of the plot
p <- ggplot() +
 geom_point(aes(x = runif(1000, .5, 8), y = runif(1000, 0, 1000))) +
 scale_y_reverse() +
 coord_cartesian(xlim = c(0, 8), ylim = c(0,1000), expand = FALSE) +
 theme_classic()
gggeo_scale_old(p, pos = "left", rot = 90)

# can add multiple scales
p <- ggplot() +
  geom_point(aes(y = runif(1000, 1, 8), x = runif(1000, 0, 1000))) +
  scale_x_reverse() +
  coord_cartesian(xlim = c(0, 100), ylim = c(0,8), expand = FALSE) +
  theme_classic()
p <- gggeo_scale_old(p, height = .03, abbrv = FALSE)
p <- gggeo_scale_old(p, dat = "epochs", gap = .03, height = .1, rot = 90, size = 2.5, abbrv = FALSE)

# intervals on both sides for different timescales (ICS stages vs North American Land Mammal Ages)
p <- ggplot() +
  geom_point(aes(x = runif(1000, 1, 9), y = runif(1000, 0, 65))) +
  scale_y_reverse() +
  coord_cartesian(xlim = c(0, 10), ylim = c(0,65), expand = FALSE) +
  theme_classic()
p <- gggeo_scale_old(p, dat = "stages", pos = "left", height = .1, size = 2.5, abbrv = FALSE)
gggeo_scale_old(p, dat = "North American Land Mammal Ages", pos = "right", height = .1, size = 2.5,
                abbrv = FALSE)

#can add scales to a faceted plot
df <- data.frame(x = runif(1000,0,541), y = runif(1000,.5,8), z = sample(c(1,2,3,4), 1000, TRUE))
p <- ggplot(df) +
  geom_point(aes(x, y)) +
  scale_x_reverse() +
  coord_cartesian(xlim = c(0, 541), ylim = c(0,8), expand = FALSE) +
  theme_classic() +
  facet_wrap(~z, nrow = 2)
gggeo_scale_old(p)

## Don't show: 
if (require(ggtree)) (if (getRversion() >= "3.4") withAutoprint else force)({ # examplesIf
## End(Don't show)
#can even add a scale to a phylogeny (using ggtree)
library(phytools)
library(ggtree)
tree <- pbtree(b = .03, d = .01,  n=100)
p <- ggtree(tree) +
 coord_cartesian(xlim = c(0,-500), ylim = c(-10,Ntip(tree)), expand = FALSE) +
 scale_x_continuous(breaks=seq(-500,0,100), labels=abs(seq(-500,0,100))) +
 theme_tree2()
p <- revts(p)
gggeo_scale_old(p, neg = TRUE)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("gtable_frame2")
### * gtable_frame2

flush(stderr()); flush(stdout())

### Name: gtable_frame2
### Title: gtable_frame2
### Aliases: gtable_frame2

### ** Examples

library(grid)
library(gridExtra)
library(ggplot2)
p1 <- ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) +
  geom_point()

p2 <- ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) +
  geom_point() + facet_wrap( ~ cyl, ncol=2, scales = 'free') +
  guides(colour='none') +
  theme()

p3 <- ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) +
  geom_point() + facet_grid(. ~ cyl, scales = 'free')

g1 <- ggplotGrob(p1);
g2 <- ggplotGrob(p2);
g3 <- ggplotGrob(p3);
fg1 <- gtable_frame2(g1)
fg2 <- gtable_frame2(g2)
fg12 <- gtable_frame2(gtable_rbind(fg1,fg2), width=unit(2,'null'), height=unit(1,'null'))
fg3 <- gtable_frame2(g3, width=unit(1,'null'), height=unit(1,'null'))
grid.newpage()
combined <- gtable_cbind(fg12, fg3)
grid.draw(combined)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
