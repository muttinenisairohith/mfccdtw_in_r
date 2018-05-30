library(tuneR)
object <- readWave('chanduhello1.wav')
object1 <- readWave('chanduhello2.wav')
object2 <- readWave('chanduhello3.wav')
object10 <- readWave('chandueat1.wav')
object11 <- readWave('chandueat2.wav')
object12 <- readWave('chandueat3.wav')
object100 <- readWave('suchihello1.wav')
object111 <- readWave('suchihello3.wav')
object112 <- readWave('suchihello5.wav')

o <-  melfcc(object)
o1 <- melfcc(object1)
o2 <- melfcc(object2)
o10 <-melfcc(object10)
o11 <- melfcc(object11)
o12 <- melfcc(object12)
o100 <- melfcc(object100)
o111 <- melfcc(object111)
o112 <- melfcc(object112)

library(dtw)
alignment2 <-dtw(o,o112,dist.method="correlation",keep=TRUE)
plot(alignment2,)
plot(
  dtw(o,o111,keep=TRUE,
      step=rabinerJuangStepPattern(6,"c")),
  type="twoway",offset=-2)

alignment1<-dtw(o,o10,dist.method="correlation",keep=TRUE,step=rabinerJuangStepPattern(6,"c"))
plot(alignment1,.type="threeway")
plot(
  dtw(o,o11,keep=TRUE,
      step=rabinerJuangStepPattern(6,"c")),
  type="twoway",offset=-2)

alignment<-dtw(o,o2,dist.method="Manhattan",keep=TRUE)
alignment<-dtw(o,o,dist.method="correlation",keep=TRUE)
alignment<-dtw(o,o2,dist.method="euclidean",keep=TRUE)
plot(alignment,.type="threeway")
plot(
  dtw(o,o1,keep=TRUE,
      step=rabinerJuangStepPattern(6,"c")),
  type="twoway",offset=-2)

rabinerJuangStepPattern(6,"c")
plot(rabinerJuangStepPattern(6,"c"))
