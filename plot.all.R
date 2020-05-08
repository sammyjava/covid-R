## plot all the PNGs for an update
plot.all = function(dateString) {
    png(file=paste("COVID-19.global-deaths",dateString,"png",sep="."), width=800, height=800)
    source("plot-time-series-global-deaths.R")
    dev.off()
    png(file=paste("COVID-19.global-confirmed",dateString,"png",sep="."), width=800, height=800)
    source("plot-time-series-global-confirmed.R")
    dev.off()
    png(file=paste("COVID-19.global-permil",dateString,"png",sep="."), width=800, height=800)
    source("plot-time-series-global-permil.R")
    dev.off()
    png(file=paste("COVID-19.global-x100",dateString,"png",sep="."), width=800, height=800)
    source("plot-time-series-global-x100.R")
    dev.off()
}
