% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/other_functions.R
\name{get.umap}
\alias{get.umap}
\title{Further process the the seurat object from simulated transciptome output and make UMAP ready for plotting.}
\usage{
get.umap(gex, d, reso)
}
\arguments{
\item{gex}{output from get.elbow function.}

\item{d}{dims argurment of in Seurat::FindNeighbors() and Seurat::RunUMAP}

\item{reso}{resolution argument in Seurat::FindClusters()}
}
\description{
Further process the the seurat object from simulated transciptome output and make UMAP ready for plotting.
}
