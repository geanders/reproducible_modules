library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ ` `, ~ `Student`, ~`PI`, ~ `Biostatistician`, ~ `Technician`, ~ `Undergrad`,
  "\\tabitem Separating data recording and analysis", "Yes", "Yes", "Yes", "No", "Yes",
  "\\tabitem Principles and power of structured data formats", "Yes", "Yes", "No", "No", "Yes",
  "\\tabitem The 'tidy' data format: an implementation of a structured data format", "Yes", "Yes", "No", "No", "No",
  "\\tabitem Designing templates for 'tidy' data collection", "Yes", "Yes", "No", "No", "No",
  "\\tabitem Example: Creating a template for 'tidy' data collection", "Yes", "Yes", "Yes", "No", "No",
  "\\tabitem Power of using a single structured 'Project' directory for storing and tracking research project files", "Yes", "Yes", "No", "No", "Yes",
  "\\tabitem Creating 'Project' templates", "Yes", "No", "No", "No", "No",
  "\\tabitem Example: Creating a 'Project' template", "Yes", "Yes", "Yes", "No", "No",
  "\\tabitem Harnessing version control for transparent data recording", "Yes", "Yes", "No", "No", "Yes",
  "\\tabitem Enhance the reproducibility of collaborative research with version control platforms", "Yes", "Yes", "No", "No", "Yes",
  "\\tabitem Using git and GitLab to implement version control", "Yes", "No", "No", "No", "No",
 
  "\\tabitem Principles and benefits of scripted pre-processing of experimental data", "Yes", "Yes", "No", "Yes", "No",
  "\\tabitem Introduction to scripted data pre-processing in R", "Yes", "No", "No", "Yes", "No",
  "\\tabitem Simplify scripted pre-processing through R's 'tidyverse' tools", "Yes", "No", "No", "Yes", "No",
  "\\tabitem Complex data types in experimental data pre-processing", "Yes", "Yes", "Yes", "Yes", "No",
  "\\tabitem Complex data types in R and Bioconductor", "Yes", "No", "Yes", "Yes", "No",
  "\\tabitem Example: Converting from complex to 'tidy' data formats", "Yes", "Yes", "Yes", "Yes", "No",
  "\\tabitem Introduction to reproducible data pre-processing protocols", "Yes", "Yes", "No", "Yes", "No",
  "\\tabitem RMarkdown for creating reproducible data pre-processing protocols", "Yes", "No", "No", "Yes", "No",
  "\\tabitem Example: Creating a reproducible data pre-processing protocol", "Yes", "Yes", "Yes", "Yes", "No"
) %>% 
  mutate(`Student` = cell_spec(`Student`, format = "latex",
                               background = factor(`Student`,
                                                   levels = c("No", "Yes"),
                                                   labels = c("white", "pink"))),
         `PI` = cell_spec(`PI`, format = "latex",
                               background = factor(`PI`,
                                                   levels = c("No", "Yes"),
                                                   labels = c("white", "pink"))),
         `Biostatistician` = cell_spec(`Biostatistician`, format = "latex",
                               background = factor(`Biostatistician`,
                                                   levels = c("No", "Yes"),
                                                   labels = c("white", "pink"))),
         `Technician` = cell_spec(`Technician`, format = "latex",
                               background = factor(`Technician`,
                                                   levels = c("No", "Yes"),
                                                   labels = c("white", "pink"))),
         `Undergrad` = cell_spec(`Undergrad`, format = "latex",
                                  background = factor(`Undergrad`,
                                                      levels = c("No", "Yes"),
                                                      labels = c("white", "pink")))) %>% 
  kable("latex", booktabs = T, escape = FALSE, 
        align = 'c',
        col.names = linebreak(c("", 
                                "\\textbf{Graduate student}\nwho would like to\nlearn in detail\nhow to use\nreproducibility tools\nfor data recording\nand pre-processing\nand is willing to learn\nR programming tools", 
                                "\\textbf{Principal investigator}\nwho does not program\nbut would like to\nlearn how his/her\nresearch team could\nimprove reproducibility\nof data recording\nand pre-processing",
                                "\\textbf{Biostatistician}\nwho would\nlike to understand\nbarriers faced by\ncollaborators\nin implementing\nreproducibility\nprinciples early\nin research projects",
                                "\\textbf{Technician}\nin charge of\nrunning and\npre-processing\nmass\nspectrometry\ndata",
                                "\\textbf{Undergraduate}\n\\textbf{student}\nwho wants an\nintroduction\nto improving\nreproducibility\nof data\nrecording"),
                              align = 'c'),
        caption = "\\label{tab:tracks} Examples of how different types of trainees might use subsets of the training modules to meet their specific training needs.") %>% 
  kable_styling(latex_options = c("hold_position", "repeat_header"), 
                font_size = 9) %>% 
  row_spec(0, align = 'c') %>% 
  column_spec(1, width = "28em") %>% 
  group_rows("Improving the Reproducibility of Experimental Data Recording", 1, 11, latex_align = 'l') %>% 
  group_rows("Improving the Reproducibility of Experimental Data Pre-Processing", 12, 20) %>% 
  landscape()
                      
fileConn <- file("tables/module_tracks.tex")
writeLines(my_table, fileConn)
close(fileConn)
