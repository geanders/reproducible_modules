library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ `Module title`, ~ Type, ~ `Description of module content`, 
  ~ `Objectives (After taking the module, the trainee can ...)`, 
  ~ `Video length`,  ~ `Extra educational materials`,
  
# Module 1
  "Principles and benefits of scripted pre-processing of experimental data", "Principles",
    "The experimental data collected for biomedical research often requires 
      pre-processing before it can be analyzed (e.g., gating of flow cytometry data, 
      peak finding and quantification for LC / MS metabolomics data). While 
      often proprietary point-and-click software is available for this pre-processing,
      use of such software can limit the transparency and reproducibility of this 
      pre-processing stage of the analysis and is 
      time-consuming for repeated tasks over large research projects.
      In this module, we will explain how scripted pre-processing, especially using open source software, 
      can improve the transparency, reproducibility, and
      transparency of research.", 
    "\\tabitem Define 'pre-processing' of experimental data 

      \\tabitem Describe how point-and-click software limits transparency and reproducibility
      of data pre-processing

      \\tabitem Describe an open source
      code script and explain how it can enable pre-processing 
      experimental data 

      ", 
    "15", 
    "\\tabitem Discussion questions, including common pre-processing needs and 
    practices in their research area
      
      \\tabitem Short audio recording of two Co-Is giving their
      own answers to these discussion questions",

# Module 2
  "Introduction to scripted data pre-processing in R", "Implementation",
    "In this module, we will show how researchers can implement scripted pre-processing
    of experimental data through use of R scripts. 
    We will demonstrate the difference between interactive coding and the
      use of code scripts, using R for examples. We will then demonstrate how to 
      create, save, and run an R code script for a simple data cleaning task.", 
    "\\tabitem Describe what an R code script is and how it differs from interactive
      coding in R 

      \\tabitem Create and save an R script to perform a simple data 
      pre-processing task 
  
      \\tabitem Run an R script

      \\tabitem List some popular packages in R for 
      pre-processing biomedical data", 
    "10", 
    "\\tabitem Applied exercise: Given a simple example dataset and a data cleaning task, 
      write and run an R script to perform the task. Then adapt that script to re-use
      it on a second dataset. Hints will be 
      provided for those new to R 

      \\tabitem Video providing a detailed
      walk-through of a solution to the applied exercise",

# Module 3
  "Simplify scripted pre-processing through R's 'tidyverse' tools", "Implementation",
    "The R programming language now includes a collection of 'tidyverse' extension 
      packages that enable user-friendly yet powerful work with experimental data,
      including pre-processing and exploratory visualizations. The principle behind
      the 'tidyverse' is that a collection of simple, general tools can be joined 
      together to solve complex problems, as long as a consistent format is used 
      for the input and output of each tool (the 'tidy' data format taught in other
      modules). In this module, we will explain why this 'tidyverse' system is so
      powerful and how it can be leveraged within biomedical research, especially for
      reproducibly pre-processing experimental data.", 
    "\\tabitem Define R's 'tidyverse' system 

      \\tabitem Explain how the 'tidyverse' collection
      of packages can be both user-friendly and powerful in solving many complex
      tasks with data 

      \\tabitem Describe the difference between base R and
      R's 'tidyverse'.", 
    "15", 
    "\\tabitem Quiz questions: What is R's 
      'tidyverse' is and why is it a powerful yet user-friendly tool for improving
      the reproducibility of research projects 

      \\tabitem Video with detailed answers and explanations for the quiz questions 

      \\tabitem Links to free sources for developing more 'tidyverse' coding 
        skills",

# Module 4
  "Complex data types in experimental data pre-processing", "Principles",
  "Raw data from many biomedical experiments, especially those that
  use high-throughput techniques, can be very large and complex. Because of the 
  scale and complexity of these data, software for pre-processing the data in R
  often uses complex, 'untidy' data formats. While these formats are necessary
  for computational efficiency, they add a critical barrier for researchers wishing
  to implement reproducibility tools. In this module, we will 
  explain why use of complex data formats is
  often necessary within open source pre-processing software 
  and outline the hurdles created in 
  reproducibility tool use among laboratory-based scientists.", 
  "\\tabitem Explain why R software for pre-processing biomedical data often stores 
  data in complex, 'untidy' formats; 
  
  \\tabitem Describe how these complex data formats can create barriers to 
  laboratory-based researchers seeking to use reproducibility tools for 
  data pre-processing.", 
  "15", 
  "\\tabitem Quiz questions: Why are complex data formats
  often used within steps of experimental data pre-processing in open-source
  software and how does their use complicate the use of reproducibility tools
  
  \\tabitem Video providing detailed
  answers to quiz questions",

# Module 5
  "Complex data types in R and Bioconductor", "Implementation",
  "Many R extension packages for pre-processing experimental data use complex (rather than
    'tidy') data formats within their code, and many output data in complex formats. 
    Very recently, the \\textit{broom} and \\textit{biobroom} R packages
  have been developed 
  to extract a 'tidy' dataset from a complex data format.
  These tools create a clean, simple connection between the complex data formats
  often used in pre-processing experimental data and the 'tidy' format
  required to use the 'tidyverse' tools now taught in many introductory R courses. In this module, we will describe the 'list' data structure,
    the common backbone for complex data structures in R, and well as provide tips on how to
  explore and extract data stored in R in this format, including through the 
     \\textit{broom} and \\textit{biobroom} packages.", 
    "\\tabitem Describe the structure of R's 'list' data
      format 

      \\tabitem Take basic steps to explore
      and extract data stored in R's complex, list-based structures
  
      \\tabitem Describe what the \\textit{broom} and \\textit{biobroom} R packages can do 

      \\tabitem Explain how converting data to a 'tidy' format can improve reproducibility", 
    "15", 
    "\\tabitem Applied exercise: Starting with example data in a complex, list-based format, 
  explore the data and extract specified elements, including with the \\textit{broom} and
  \\textit{biobroom} packages; 
  
  \\tabitem Video providing a detailed
  walk-through of the solution to this exercise",

# Module 6
  "Example: Converting from complex to 'tidy' data formats", "Example",
    "We will provide a detailed example of a case where data pre-processing in R
      results in a complex, 'untidy' data format. We will
      walk through an example of applying automated gating to flow cytometry data. 
      We will demonstrate the complex initial format of this pre-processed data and then
      show trainees how a 'tidy' dataset can be extracted and used for further data
      analysis and visualization using the popular R 'tidyverse' tools. 
      This example will use real experimental data from on of our Co-Is 
      research on the immunology of tuberculosis.", 
    "\\tabitem Describe how tools like \\textit{biobroom} were used in this real 
    research example to convert from the complex data format from pre-processing to
    a format better for further data analysis and visualization

      \\tabitem Understand how these tools would fit in 
      their own research pipelines", 
    "20", 
    "\\tabitem Applied exercise: With an example dataset in a complex, 
      'untidy' data format in R, convert it to 
      a 'tidy' format and create simple plots with
      this 'tidy' dataset 

      \\tabitem Video demonstrating a detailed solution to the applied
      exercise",  

# Module 7
  "Introduction to reproducible data pre-processing protocols", "Principles",
  "Reproducibility tools can be used to create reproducible data pre-processing 
    protocols---documents that combine code and text in a 
  'knitted' document, which can be re-used to ensure data pre-processing is consistent
  and reproducible across research 
  projects. In this module, we will describe how
  reproducible data pre-processing protocols 
  can improve reproducibility 
  of pre-processing experimental data, as well as to ensure transparency, consistency,
  and reproducibility across the research projects conducted by a research team.", 
  "\\tabitem Define a 'reproducible data pre-processing protocol' 
  
  \\tabitem Explain how such protocols improve
    reproducibility at the data pre-processing phase 
  
  \\tabitem List other benefits,
    including improving efficiency and consistency of data pre-processing", 
  "15", 
  "\\tabitem Discussion questions: How reproducible data pre-processing 
  protocols can make biomedical research more reproducible at the data 
  pre-processing stage in the trainee's research area
  
  \\tabitem Short audio 
  recording of two Co-Is giving their
  own answers to these discussion questions",

# Module 8
  "RMarkdown for creating reproducible data pre-processing protocols", "Implementation",
    "The R extension package RMarkdown can be used to create documents that combine code and text in a 
      'knitted' document, and it has become a popular tool 
      for improving the computational reproducibility and 
      efficiency of the data analysis stage of research. This tool can also be used earlier in the 
      research process, however, to improve reproducibility of pre-processing steps.
      In this module, we will provide detailed instructions on how to use RMarkdown
      in RStudio to create documents that combine code and text. We will show how an 
    RMarkdown document describing a data 
    pre-processing protocol can be used to efficiently apply the same data
    pre-processing steps to different sets of raw data.", 
    "\\tabitem Define RMarkdown and the documents it can create 

      \\tabitem Explain how RMarkdown can be used to improve the reproducibility
      of research projects at the data pre-processing phase 
  
      \\tabitem Create a document in RStudio using 
      RMarkdown 
  
  \\tabitem Apply it to several different datasets
  with the same format", 
    "15", 
    "\\tabitem Applied exercise: Create, save, and render 
    their own RMarkdown document through RStudio 
  
  \\tabitem Video providing a detailed
  walk-through of a solution to the applied exercise",

# Module 9
  "Example: Creating a reproducible data pre-processing protocol", "Example",
    "We will walk through an example of creating a reproducible protocol for the automated
      gating of flow cytometry data for a project on the immunology of tuberculosis
      lead by one of our Co-Is. This data pre-processing protocol was created 
      using RMarkdown and allows the efficient, transparent, and reproducible 
      gating of flow cytometry data for all experiments in the research group. We will
      walk the trainees through how we developed the protocol initially, 
      the final pre-processing protocol, how we apply this
      protocol to new experimental data.", 
    "\\tabitem Explain how a reproducible data pre-processing protocol can be integrated
      into a real research project 

      \\tabitem Understand how to design and implement a data
      pre-processing protocol to replace manual or point-and-click data pre-processing
      tools", 
    "20", 
    "\\tabitem Quiz questions: Test understand of how and why we 
      created a reproducible data pre-processing protocols for this 
      pre-processing step, and how this improves reproducibility for the research group; 

      \\tabitem Short video with a detailed discussion of quiz questions"
  ) %>% 
  mutate(`Module title` = cell_spec(`Module title`, format = "latex",
                                    color = factor(Type,
                                                   c("Principles",
                                                     "Implementation", 
                                                     "Example"),
                                                   c("blue", "red", "black")),
                                    bold = TRUE)) %>% 
  select(-Type) %>% 
  kable("latex", booktabs = TRUE, longtable = TRUE, escape = FALSE,
        caption = "\\label{tab:content_two} Modules for the second sequence, \\textbf{'Improving the Reproducibility of Experimental Data Pre-Processing'}. The color of each module's title indicates whether the module focuses on \\textbf{Principles} (blue), \\textbf{Implementation} (red), or \\textbf{Case study examples} (black). This table is continued over several pages.") %>% 
  kable_styling(latex_options = c("striped", "repeat_header", "scale_down"), 
                font_size = 10) %>% 
  column_spec(1, bold = TRUE, width = "10em") %>% 
  column_spec(2, width = "28em") %>% 
  column_spec(3, width = "14em") %>% 
  column_spec(4, width = "3em") %>% 
  column_spec(5, width = "14em") %>% 
  landscape()

fileConn <- file("tables/module_content_data_preprocessing.tex")
writeLines(my_table, fileConn)
close(fileConn)
