# Echidna

Echina is an R toolkit designed to simulate single-cell immune repertoire sequencing data. 


# Installation

The package can be installed directly from the tar.gz file on this GitHub. Please see the vignette for examples of how the package can be used.

Please scroll down for instructions on how to install the necessary dependencies. 

```{r}
### Downloading and installing Echidna

# packages can be installed by the code below:
install.packages("devtools")
library(devtools)
install_github("alexyermanos/Echidna")

# First we need to download the most recent version from the master branch at https://github.com/alexyermanos/Echidna we can install the package using the following command. 

# Input the path where the tar.gz file is located and install the package by typing:
# WARNING: This needs to be replaced with your own directory where the downloaded package is found
install.packages("~/Echidna_0.1.tar.gz", repos = NULL, type="source")

# Now we can load the installed package into the R environment. 
library(Echidna)
```

Echidna uses a number of different R packages, some of which need prior installation. These can be installed either from CRAN:

### stringr
### reshape2
### dplyr
### do
### igraph
### stats 
### ggplot2
### Seurat

Code to install the packages from CRAN:

```{r}
install.packages("stringr")
install.packages("magrittr")
install.packages("reshape2")
install.packages("dplyr")
install.packages("do")
install.packages("igraph")
install.packages("stats")
install.packages("ggplot2")
install.packages("Seurat")
```

##setting up interface to python

In Echidna, the function using variational autoencoders to simulate immune receptor sequence requires python modules: "keras" and "tensorflow". We need to set up interface to python.

Suggested: install "miniconda", with the code:

```{r}
install.packages("reticulate")
reticulate::install_miniconda()
```
See https://docs.conda.io/en/latest/miniconda.html for more details.
Miniconda is a environment management system for Python.

Setup environment and packages for keras and tensorflow:

```{r}
install.pakcages("keras")
install.pakcages("tensorflow")
tensorflow::install_tensorflow()
keras::install_keras()
```

Please post on the github page with any questions or if you would like to contribute.
