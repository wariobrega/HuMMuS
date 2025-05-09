% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/explore_network.R
\name{define_target_genes}
\alias{define_target_genes}
\title{Define target genes from hummus object}
\usage{
define_target_genes(
  hummus_object,
  multiplex_names = NULL,
  bipartites_names = NULL,
  config_name = "target_genes_config.yml",
  config_folder = "config",
  tf_multiplex = "TF",
  atac_multiplex = "peaks",
  rna_multiplex = "RNA",
  multilayer_f = "multilayer",
  gene_list = NULL,
  tf_list = NULL,
  save = FALSE,
  output_f = NULL,
  return_df = TRUE,
  suffix_bipartites = ".tsv",
  njobs = 1
)
}
\arguments{
\item{hummus_object}{A hummus object}

\item{multiplex_names}{A vector of multiplex names considered.
It must be a subset of the names of the multiplexes in the hummus object.}

\item{bipartites_names}{A vector of bipartites names considered.
It must be a subset of the names of the bipartites in the hummus object.}

\item{config_name}{The name of the config file to be created by hummuspy}

\item{config_folder}{The folder where the config file will be created}

\item{tf_multiplex}{The name of the multiplex containing the TFs}

\item{atac_multiplex}{The name of the multiplex containing the ATAC-seq peaks}

\item{rna_multiplex}{The name of the multiplex containing the RNA-seq genes}

\item{multilayer_f}{The folder where the multilayer is stored}

\item{gene_list}{A vector of genes to be considered for the target_genes
(filtering is done on the genes before inferring the target_genes)}

\item{tf_list}{A vector of TFs to be considered for the final target_genes
(filtering is done on the TFs after inferring the target_genes)}

\item{save}{A boolean indicating if the target_genes should be saved}

\item{output_f}{The name of the file where the target_genes should be saved
(if save == TRUE)}

\item{return_df}{A boolean indicating if the target_genes should be returned
as a dataframe}

\item{suffix_bipartites}{A suffix to add to the bipartites names (to indicate
the exact file location)}

\item{njobs}{The number of jobs to be used to compute of the target_genes}
}
\value{
A dataframe containing the target_genes (if return_df == TRUE)
}
\description{
Calling the define_output function with output_type = 'target_genes'
}
\examples{
target_genes <- define_target_genes(hummus_object = hummus,
                            multilayer_f = multilayer_folder,
                            njobs = 5)

}
