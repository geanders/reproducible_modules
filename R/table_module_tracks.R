library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ ` `, ~ `Student`, ~`PI`, ~ `Research associate`,
  "\\tabitem Separating data recording and analysis", "Yes", "No", "No",
  "\\tabitem Principals and power of structured data formats", "Yes", "Yes", "No",
  "\\tabitem The 'tidy' data format: an implementation of a structured data format", "Yes", "No", "Yes",
  "\\tabitem Designing templates for tidy data collection", "Yes", "No", "No",
  "\\tabitem Example: Creating a template for data collection", "Yes", "No", "No",
  "\\tabitem Power of using a single 'Project' directory for storing and tracking research project files", "Yes", "No", "Yes",
  "\\tabitem Creating 'Project' templates", "Yes", "No", "No",
  "\\tabitem Example: Creating a 'Project' template", "Yes", "Yes", "No",
  "\\tabitem Harnessing version control for transparent data recording", "Yes", "No", "Yes",
  "\\tabitem Using git and GitLab to enhance the reproducibility of collaborative research", "Yes", "No", "No",
 
  "\\tabitem Principals and benefits of scripted pre-processing of experimental data", "Yes", "No", "No",
  "\\tabitem Introduction to R code scripts", "Yes", "Yes", "No",
  "\\tabitem Simplify scripted pre-processing through R's 'tidyverse' tools", "Yes", "No", "Yes",
  "\\tabitem Complex data types in experimental data pre-processing", "Yes", "No", "No",
  "\\tabitem Complex data types in R and Bioconductor", "Yes", "No", "No",
  "\\tabitem Example: Converting from complex data types to 'tidy' data formats", "Yes", "No", "No",
  "\\tabitem Introduction to reproducible data pre-processing protocols", "Yes", "Yes", "No",
  "\\tabitem Introduction to RMarkdown as a tool for creating reproducible data pre-processing protocols", "Yes", "No", "Yes",
  "\\tabitem Example: Creating a reproducible data pre-processing protocol", "Yes", "No", "No"
) %>% 
  mutate(`Student` = cell_spec(`Student`, format = "latex",
                               background = factor(`Student`,
                                                   levels = c("No", "Yes"),
                                                   labels = c("white", "pink"))),
         `PI` = cell_spec(`PI`, format = "latex",
                               background = factor(`PI`,
                                                   levels = c("No", "Yes"),
                                                   labels = c("white", "pink"))),
         `Research associate` = cell_spec(`Research associate`, format = "latex",
                               background = factor(`Research associate`,
                                                   levels = c("No", "Yes"),
                                                   labels = c("white", "pink")))) %>% 
  kable("latex", booktabs = T, escape = FALSE,
        align = 'c',
        col.names = linebreak(c("", "Long description of\nthe student", "Module 2",
                                "Another very long\ndescription of the\nresearch associate")),
        caption = "Some examples of tracks of training modules for sample trainees") %>% 
  kable_styling(latex_options = c("hold_position", "repeat_header"), 
                font_size = 10) %>% 
  row_spec(0, angle = 45) %>% 
  column_spec(1, width = "20em") %>% 
  group_rows("Very long sequence name for sequence 1", 1, 10, latex_align = 'l') %>% 
  group_rows("Sequence 2", 11, 19) 
                      
fileConn <- file("tables/module_tracks.tex")
writeLines(my_table, fileConn)
close(fileConn)
