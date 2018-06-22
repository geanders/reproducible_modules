library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ ` `, ~ `Brooke`, ~`Mike`, ~ `Mercedes`, ~ `Marcela`, ~ `Greg`,
  "\\tabitem Separating data recording and analysis", "Author", "Tester", "", "", "Author",
  "\\tabitem Principles and power of structured data formats", "Author", "Author", "", "", "Tester",
  "\\tabitem The 'tidy' data format: an implementation of a structured data format", "Author", "", "Tester", "Author", "",
  "\\tabitem Designing templates for 'tidy' data collection", "Author", "Tester", "Author", "", "",
  "\\tabitem Example: Creating a template for 'tidy' data collection", "Author", "", "Tester", "", "Author",
  "\\tabitem Power of using a single structured 'Project' directory for storing and tracking research project files", "Author", "", "Author", "Tester", "",
  "\\tabitem Creating 'Project' templates", "Author", "", "", "Author", "Tester",
  "\\tabitem Example: Creating a 'Project' template", "Author", "", "Author", "Tester", "",
  "\\tabitem Harnessing version control for transparent data recording", "Author", "Author", "", "", "Tester",
  "\\tabitem Enhance the reproducibility of collaborative research with version control platforms", "Author", "Tester", "", "", "Author",
  "\\tabitem Using git and GitLab to implement version control", "Author", "Author", "Tester", "", "",
  
  "\\tabitem Principles and benefits of scripted pre-processing of experimental data", "Author", "", "Author", "Tester", "",
  "\\tabitem Introduction to scripted data pre-processing in R", "Author", "Author", "Tester", "", "",
  "\\tabitem Simplify scripted pre-processing through R's 'tidyverse' tools", "Author", "", "Author", "", "Tester",
  "\\tabitem Complex data types in experimental data pre-processing", "Author", "", "Tester", "Author", "",
  "\\tabitem Complex data types in R and Bioconductor", "Author", "Tester", "", "Author", "",
  "\\tabitem Example: Converting from complex to 'tidy' data formats", "Author", "Tester", "", "Author", "",
  "\\tabitem Introduction to reproducible data pre-processing protocols", "Author", "Author", "", "", "Tester",
  "\\tabitem RMarkdown for creating reproducible data pre-processing protocols", "Author", "", "", "Tester", "Author",
  "\\tabitem Example: Creating a reproducible data pre-processing protocol", "Author", "", "", "Tester", "Author"
) %>% 
  mutate(`Brooke` = cell_spec(`Brooke`, format = "latex",
                               background = factor(`Brooke`,
                                                   levels = c("Author", "Tester", ""),
                                                   labels = c("red", "pink", "white"))),
         `Mike` = cell_spec(`Mike`, format = "latex",
                          background = factor(`Mike`,
                                              levels = c("Author", "Tester", ""),
                                              labels = c("red", "pink", "white"))),
         `Mercedes` = cell_spec(`Mercedes`, format = "latex",
                                       background = factor(`Mercedes`,
                                                           levels = c("Author", "Tester", ""),
                                                           labels = c("red", "pink", "white"))),
         `Marcela` = cell_spec(`Marcela`, format = "latex",
                                  background = factor(`Marcela`,
                                                      levels = c("Author", "Tester", ""),
                                                      labels = c("red", "pink", "white"))),
         `Greg` = cell_spec(`Greg`, format = "latex",
                                 background = factor(`Greg`,
                                                     levels = c("Author", "Tester", ""),
                                                     labels = c("red", "pink", "white")))) %>% 
  kable("latex", booktabs = T, escape = FALSE, 
        align = 'c',
        col.names = linebreak(c("", 
                                "Brooke\nAnderson", 
                                "Michael\nLyons",
                                "Mercedes\nGonzalez-\nJuarrero",
                                "Marcela\nHenao-\nTamayo",
                                "Gregory\nRobertson"),
                              align = 'c'),
        caption = "\\label{tab:roles} Roles of our main team in developing the proposed training materials.") %>% 
  kable_styling(latex_options = c("hold_position", "repeat_header", "scale_down"), 
                font_size = 8) %>% 
  row_spec(0) %>% 
  column_spec(1, width = "33em") %>% 
  group_rows("Improving the Reproducibility of Experimental Data Recording", 1, 11, latex_align = 'l') %>% 
  group_rows("Improving the Reproducibility of Experimental Data Pre-Processing", 12, 20) 

fileConn <- file("tables/team_roles.tex")
writeLines(my_table, fileConn)
close(fileConn)
