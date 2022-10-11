# Analysis of DEPDC5 KO transcriptome data

The here provided code and output data is accompanying information for the following research article 

>
**The transcriptomic signature of DEPDC5 KO induced mTOR-hyperactivation in human neurons and its response to rapamycin treatment**
Mattson S. O. Jones[^1]<sup>,</sup>[^12], Regina Waltes[^1], Silvia Lindlar[^1], Johannes Ludwig[^1], Evelyn Ullrich[^2]<sup>,</sup>[^3]<sup>,</sup>[^4], Dan Geschwind[^5]<sup>,</sup>[^6]<sup>,</sup>[^7]<sup>,</sup>[^8], Jasmin Hefendehl[^9]<sup>,</sup>[^10], Karl Martin Klein[^11]<sup>,</sup>[^12]<sup>,</sup>[^13], Felix Rosenow[^11]<sup>,</sup>[^12], Denise Haslinger[^1] and Andreas Geburtig-Chiocchetti[^1]<sup>,</sup>[^12] (shared last)<br>*The manuscript is currently in preparation and will be linked here upon publication; DOI will be provided*


All analyses were organized using the [*workflowr*](https://github.com/workflowr/workflowr) package. 
The rendered output is available [here](https://kjpmolgenlab.github.io/DEPDC5_D62_Analysis/)


## Installation guidelines


1. Install [R][r]

    * (Recommended) Install [RStudio][rstudio]

    * (Recommended) Install [pandoc][] ([Instructions][pandoc-install])

    * (Recommended) Install [Git][git]


2. Install packages


    ```r
    # installs cran packages
     package<-c("RColorBrewer", "dplyr", "httr", "parallel", "rJava",
             "compareGroups", "kableExtra", "tidyverse","dendextend",
             "knitr", "pheatmap", "glmpca", "plotly", "rsconnect", "openxlsx",
             "lavaan", "semPlot", "ggplotify", "qqman", "webshot", "M3C",
             "data.table")
  
  
    if(length(setdiff(package, rownames(installed.packages()))) > 0)	{
      install.packages(setdiff(package, rownames(installed.packages())),
                       INSTALL_opts = c('--no-lock'),dependencies=T,
                       ask=FALSE, repos="https://cloud.r-project.org/")
    }
    
    # installs BioC packages
    
    if (!requireNamespace("BiocManager", quietly = TRUE))
      install.packages("BiocManager", repos="https://cloud.r-project.org/")
  
    bpackage = c( "annotate","biomaRt", "DESeq2", "WGCNA", "edgeR","RRHO",
                  "limma","Rsubread", "flashClust", "gprofiler2", "RCircos",
                  "sva", "vsn", "EnhancedVolcano", "bumphunter",
                  "TxDb.Hsapiens.UCSC.hg19.knownGene", "GenomicRanges", "Gviz",
                  "rtracklayer")
  
    if(length(setdiff(bpackage, rownames(installed.packages()))) > 0)	{
      BiocManager::install(setdiff(bpackage, rownames(installed.packages())))
    }
    ```
    
3. Create an account on [GitHub][gh]
    
    * Clone repository (Space needed including generated outputs 4,28 GB)
      ```shell
      git clone https://github.com/KJPMolgenLab/DEPDC5_D62_Analysis.git
      ```
    
    * The code for the statistical analysis can be found in the [analysis](https://github.com/KJPMolgenLab/DEPDC5_D62_Analysis/tree/main/analysis) folder
    
    * Build the analyses 
      open the R-Project file *DEPDC5_D62_Analysis.Rproj
      rund worflow command 
      ```r
      wflow_build()
      ```
      for more help on working with *work_flow* we recommend reading the [workflow start vignette][vig-start]
      
      
      



## Attribution

this work has been funded by the Hessian Governemnt (LOEWE Schwerpunkt CePTER)
We thank 

## Affiliations

[^1]: Autism Therapy and Research Center of Excellence, Department of Child and Adolescent Psychiatry, Psychosomatics and Psychotherapy, University Hospital Frankfurt, 60528 Frankfurt am Main, Germany
[^2]: Experimental Immunology, Children's University Hospital, Goethe University Frankfurt, Frankfurt am Main, Germany
[^3]: Frankfurt Cancer Institute (FCI), Goethe University Frankfurt, Frankfurt am Main, Germany
[^4]: German Cancer Consortium (DKTK), Partner Site Frankfurt/Mainz, Frankfurt am Main, Germany
[^5]: Program in Neurobehavioral Genetics, Department of Psychiatry, Semel Institute, David Geffen School of Medicine, University of California, Los Angeles, Los Angeles, CA, 90095, USA
[^6]: Center for Autism Research and Treatment, Semel Institute, David Geffen School of Medicine, University of California, Los Angeles, Los Angeles, CA, 90095, USA
[^7]: Program in Neurogenetics, Department of Neurology, Center for Autism Research and Treatment, Semel Institute, David Geffen School of Medicine, University of California, Los Angeles, Los Angeles, CA, 90095, USA
[^8]: Department of Human Genetics, David Geffen School of Medicine, University of California, Los Angeles, Los Angeles, CA, 90095, USA
[^9]: Institute of Cell Biology and Neuroscience, University of Frankfurt, D-60438 Frankfurt am Main, Germany
[^10]: Neurovascular Disorders, Buchmann Institute for Molecular Life Sciences, University of Frankfurt, D-60438 Frankfurt am Main, Germany
[^11]: Epilepsy Center Frankfurt Rhine-Main, Center of Neurology and Neurosurgery, Goethe-University Frankfurt, Schleusenweg 2-16 (Haus 95), 60528, Frankfurt am Main, Germany 
[^12]: Center for Personalized Translational Epilepsy Research (CePTER), Goethe-University Frankfurt, Frankfurt am Main, Germany
[^13]: Departments of Clinical Neurosciences, Medical Genetics, and Community Health Sciences, Hotchkiss Brain Institute & Alberta Children's Hospital Research Institute, Cumming School of Medicine, University of Calgary, Calgary, Alberta, Canada
(DOI will be posted here)




[gh]: https://github.com
[git]: https://git-scm.com/
[r]: https://cran.r-project.org
[rstudio]: https://www.rstudio.com/products/rstudio/download/
[pandoc]: https://pandoc.org/
[pandoc-install]: https://pandoc.org/installing.html
[vig-start]: https://workflowr.github.io/workflowr/articles/wflow-01-getting-started.html



