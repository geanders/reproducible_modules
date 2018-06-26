library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ ` `, ~ `Evaluation Questions \\& Function`, ~ `Data Collection`, ~ `Timing`,
  
  "Process", 
  "To what extent is the program implemented as proposed? 
  
  \\textit{(Formative [F] \\& Summative [S])}",
  "\\tabitem Project team surveys to determine the extent to which the program activities are 
  implemented as planned, whether activities take place within the proposed time frame, 
  what barriers to implementation are encountered, and whether and how data collected are 
  used to make improvements or refinements to the modules ",
  "Years 1--3",
  
  "Product",
  "How well does implementation of the training modules meet the 
  program objectives? 
  
  \\textit{(Formative [F] \\& Summative [S])}",
  "\\tabitem Survey data collected to understand whether and how well the training modules 
  impact short- and long-term participant learning and utility outcomes of interest",
  "Years 1--3"
) %>% 
  kable("latex", booktabs = T, escape = FALSE, 
        align = 'cllc',
        caption = "\\label{tab:external_evaluation} External evaluation questions, methods, and timeline.") %>% 
  kable_styling(latex_options = c("hold_position", "scale_down"), 
                font_size = 10) %>% 
  row_spec(0, bold = TRUE, background = "lightgray") %>% 
  column_spec(1, width = "5em", background = "lightgray", bold = TRUE) %>% 
  column_spec(2, width = "20em") %>% 
  column_spec(3, width = "20em") %>% 
  column_spec(4, width = "5em") 

fileConn <- file("tables/external_evaluation.tex")
writeLines(my_table, fileConn)
close(fileConn)
