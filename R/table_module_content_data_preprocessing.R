library(dplyr)
library(tibble)
library(kableExtra)

text_tbl <- tribble(
  ~ `Module title`, ~ `Description of module content`, 
  ~ `Objectives (After taking the module, the trainee can ...)`, 
  ~ `Video Length`,  ~ `Extra educational materials`,
  "Principals and benefits of scripted pre-processing of experimental data", 
    "The experimental data collected for biomedical research often requires 
      pre-processing before it can be analyzed (e.g., gating of flow cytometry data, 
      peak finding and quantification for LC / MS metabolomics data). While 
      often proprietary, point-and-click software is available for this pre-processing,
      use of such software can limit the transparency and reproducibility of this 
      pre-processing stage of the analysis, and point-and-click software is often 
      time-consuming to use for repeated tasks over large research projects.
      In this module, we will explain how using scripts to apply open source software 
      for this pre-processing step can improve the transparency, reproducibility, and
      transparency of research.", 
    "(1) Define pre-processing of experimental data and give some examples; 
      (2) Describe how the use of proprietary software for pre-processing experimental
      data limits transparency and reproducibility; (3) Understand what an open source
      code script is and how it can be used as an alternative in pre-processing 
      experimental data; (4) List some popular packages in R that can be used to 
      pre-process biomedical experimental data.", 
    "15", 
    "(1) Discussion questions, including discussion of which steps are commonly used to 
      pre-process experimental data in the trainee's research area; 
      (2) Short audio recording of two Co-Is giving their
      own answers to these discussion questions; (3) List of some popular R packages for
      pre-processing different types of biomedical experimental data.",
  "Introduction to R code scripts", 
    "In this module, we will explain the difference between interactive software use and the
      use of code scripts, using examples from R. We will then demonstrate how to 
      create, save, and run an R code script for a simple data cleaning task.", 
    "(1) Describe what an R code script is and how it differs from interactive
      coding in R; (2) Create and save an R script to perform a simple data 
      pre-processing task; (3) Run an R script.", 
    "10", 
    "(1) Applied exercise: Given a simple example dataset and a data cleaning task, 
      write and run an R script to perform the task. Then adapt that script to re-use
      it on a second, similar example dataset. Hints on useful R functions will be 
      provided to help trainees new to the R language; (2) Video providing a detailed
      walk-through of a solution to the applied exercise.",
  "Principals and power of R's 'tidyverse'", 
    "The R programming language now includes a collection of 'tidyverse' extension 
      packages that enable user-friendly yet powerful work with experimental data,
      including pre-processing and exploratory visualizations. The principal behind
      the 'tidyverse' is that a collection of simple, general tools can be joined 
      together to solve complex problems, as long as a consistent format is used 
      for the input and output of each tool (the 'tidy' data format taught in other
      modules). In this module, we will explain why this 'tidyverse' system is so
      powerful and how it can be leveraged within biomedical research, especially for
      reproducibly pre-processing experimental data.", 
    "(1) Define R's 'tidyverse' system; (2) Explain how the 'tidyverse' collection
      of packages can be both user-friendly and powerful in solving many complex
      challenges in working with data; (3) Describe the difference between 'base R' and
      R's 'tidyverse'.", 
    "15", 
    "(1) Quiz: Questions will test the trainee's understanding of what R's 
      'tidyverse' is and why it is a powerful yet user-friendly tool for improving
      the reproducibility, transparency, and efficiency of research projects. 
      (2) Video with detailed answers and explanations for the quiz questions; (3) Links
      to further free sources for learning more about the 'tidyverse' and how to use its 
      tools.",
  "Complex data types in R and Bioconductor", 
    "Raw data from many biomedical experiments, especially those that
      use high-throughput techniques, can be very large and complex. Because of the 
      scale and complexity of these data, software for pre-processing the data in R
      often uses complex, 'untidy' data formats. These complex data formats are necessary
      for computational efficiency and to aid the structure of the pre-processing
      software, but the 'untidy' formats add a critical barrier for researchers who 
      wish to explore and visualize the data, especially using the 'tidyverse' tools
      now commonly taught when introducing R to researchers. In this module, we will 
      explain why complex data formats are often used in open source software for 
      pre-processing experimental data. We will describe the 'list' data structure often
      used as a backbone for complex data structures, and well as provide tips on how to
      explore and extract data stored in R in this format.", 
    "(1) Explain why R software for pre-processing biomedical data often stores the 
      data in complex, 'untidy' formats; (2) Describe the structure of R's 'list' data
      format; (3) Take basic steps to explore
      and extract data stored in R's complex, list-based structures.", 
    "15", 
    "(1) Applied exercise: We will provide example data in a complex, list-based format. 
      The trainee will explore this data based on step-by-step instructions and will 
      extract specified elements from the data format; (2) Video providing a detailed
      walk-through of completing this exercise, with explanations for specific steps.",
  "Converting from complex data types to 'tidy' data formats", 
    "With the rising popularity of the 'tidyverse' collection of R tools, which require
      data to be in a 'tidy' format, R users have recognized that the use of complex, 'untidy'
      data formats can complicate reproducible code for data pre-processing, analysis,
      and visualization. Very recently, some researchers have developed tools 
      (the broom and biobroom R package extensions) that
      can extract a 'tidy' dataset from data stored in a complex, list-based format.
      These tools create a clean, simple connection between the complex data formats
      often used in pre-processing or modeling experimental data and the 'tidy' format
      required to use the 'tidyverse' tools now taught in many introductory R courses.
      In this module, we will show trainees how to access these broom and biobroom 
      packages. We will then demonstrate how these packages can be used to extract 
      'tidy' versions of pre-processed experimental data from their complex data formats,
      to allow user-friendly data analysis and visualization using the widely-taught
      general 'tidyverse' tools.", 
    "(1) Describe what the broom and biobroom R packages can do; (2) Explain why 
      converting data from a complex format to a 'tidy' format can improve the 
      transparency and reproducibility of a research project.", 
    "10", 
    "(1) Quiz: Trainees will be tested on their understanding of 'tidy' versus complex
      data formats, the difficulties introduced by complex data formats, and how data 
      can be converted from a complex to a 'tidy' format in R; (2) Video discussing 
      correct answers to the quiz questions; (3) Links to tutorials to find out more
      about using the broom and biobroom packages in R to extract 'tidy' datasets from 
      complex data formats.",
  "Example: Converting from complex data types to 'tidy' data formats", 
    "We will provide a detailed example of a case where data pre-processing in R
      has resulted in data in a complex, 'untidy' format, and where tools can be 
      used to extract data in a 'tidy' format, which then can easily integrate
      with general R 'tidyverse' tools for data analysis and visualization. We will
      walk through an example of applying automated gating to flow cytometry data. 
      We will demonstrate the complex initial format of this pre-processed data and then
      show trainees how a 'tidy' dataset can be extracted and used for further data
      analysis and visualization. This example will use real experimental data from 
      research on the immunology of tuberculosis [more details on this project].", 
    "(1) List R package extenstions that can be used to extract 'tidy' data from 
      complex, 'untidy' R data formats; (2) Describe how these tools can be used in 
      research projects to shift from data pre-processing to analysis and visualization
      of the processed data.", 
    "20", 
    "(1) Applied exercise: Trainees will be given an example dataset in a complex, 
      'untidy' data format in R and will be instructed in how to convert it to 
      a 'tidy' format and then create some straightforward plots of the data based on 
      this 'tidy' dataset; (2) Video demonstrating a detailed solution to the applied
      exercise.",  
  "How RMarkdown documents can improve data pre-processing", 
    "RMarkdown can be used to create documents that combine code and text in a 
      'knitted' document, and it has become a popular tool among statisticians
      and data scientists for improving the computational reproducibility and 
      efficiency of their research. This tool can also be used earlier in the 
      research process, however, to develop well-documented code to pre-process
      raw experimental data. In this module, we will show trainees the types of 
      documents that can be created and run using RMarkdown. We will describe how
      RMarkdown is used among statisticians to improve the reproducibility, 
      efficiency, and transparency of data analysis, as well as describe how it 
      can be leveraged earlier in a research project to improve the reproducibility 
      of the pre-processing of experimental data.", 
    "(1) Define RMarkdown; (2) Describe the documents that can be created using
      RMarkdown; (3) Explain how RMarkdown can be used to improve the reproducibility
      of research projects at the data pre-processing phase.", 
    "15", 
    "(1) Discussion questions: Including discussion of why RMarkdown (and similar
      approaches) could make data pre-processing more reproducible; (2) Short audio 
      recording of two Co-Is giving their
      own answers to these discussion questions.",
  "How to create reproducible data pre-processing protocols using RMarkdown", 
    "In this module, we will provide detailed instructions on how to use RMarkdown
      in RStudio to create documents that combine code and text. We will explain how
      these documents can be converted into different final file formats (PDF, HTML,
      Microsoft Word). We will show how an RMarkdown document describing a data 
      pre-processing protocol can be used to efficiently apply the same data
      pre-processing steps to different sets of raw data.", 
    "(1) Define a data pre-processing protocol; (2) Create a document in RStudio using 
      RMarkdown; (3) Render the document in 
      multiple file formats; (4) Apply the document to several different datasets
      that follow the same format.", 
    "15", 
    "(1) Applied exercise: Trainees will be asked to create, save, and render 
    their own RMarkdown document through RStudio; (2) Video providing a detailed
    walk-through of a solution to the applied exercise.",
  "Example: Creating a reproducible data pre-processing protocol", 
    "We will provide an example of creatin a reproducible protocol for the automated
      gating of flow cytometry data for a project on the immunology of tuberculosis
      [more details on project]. This data pre-processing protocol was created 
      using RMarkdown and allows the efficient, transparent, and reproducible 
      gating of flow cytometry data for all experiments in a research project. We will
      walk the trainees through the final pre-processing protocol, how we apply this
      protocol to new experimental data, and how we developed the protocol initially.", 
    "(1) Explain how a reproducible data pre-processing protocol can be integrated
      into a real research project; (2) Describe what is included in a data 
      pre-processing protocol; (3) Understand how to design and implement a data
      pre-processing protocol to replace manual or point-and-click data pre-processing
      tools.", 
    "20", 
    "(1) Quiz questions: These will test the trainees understanding of how and why we 
      created well-documented and reproducible data pre-processing protocols for this 
      project, as well as how this helps increase the transparency and reproducibility
      of the research project; (2) Short audio recording of discussion with the head of
      this example research project on how this reproducible data pre-processing fits into
      her research project and how use of this protocol differs from previous data
      pre-processing practices in the group."
  )

my_table <- kable(text_tbl, "latex", booktabs = TRUE, longtable = TRUE,
                  caption = "Modules for 'Improving the Reproducibility of Experimental Data Pre-Processing'") %>% 
  kable_styling(latex_options = c("hold_position", "striped", "repeat_header"),
                font_size = 10) %>% 
  column_spec(1, bold = TRUE, color = "blue", width = "10em") %>% 
  column_spec(2, width = "24em") %>% 
  column_spec(3, width = "15em") %>% 
  column_spec(4, width = "3em") %>% 
  column_spec(5, width = "15em") %>% 
  landscape()

fileConn <- file("tables/module_content_data_preprocessing.tex")
writeLines(my_table, fileConn)
close(fileConn)
