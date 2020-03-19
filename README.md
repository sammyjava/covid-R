# covid-R
R routines for reading and plotting COVID-19 related data

The data loader `load-time-series.R` assumes that you've cloned the COVID-19 repo from Johns Hopkins in a neighboring directory, i.e. your directories look like:
```
covid-R
COVID-19
```
Grab the data from here: https://github.com/CSSEGISandData/COVID-19.git

And yes, the way I'm loading data for each region (because I have to transpose the CSV from Johns Hopkins) is embarrassingly stupid, but I'm way better at Emacs than I am at R. :)
