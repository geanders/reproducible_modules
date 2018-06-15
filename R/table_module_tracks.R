library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ ` `, ~ `Student`, ~`PI`, ~ `Research associate`,
  "\\tabitem Really, really long module name for module 1", "Yes", "No", "No",
  "\\tabitem Module 2", "Yes", "Yes", "No",
  "\\tabitem Module 3", "Yes", "No", "Yes",
  "\\tabitem Module 4", "Yes", "No", "No",
  "\\tabitem Module 5", "Yes", "No", "No",
  "\\tabitem Module 6", "Yes", "No", "Yes"
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
  column_spec(1, width = "15em") %>% 
  group_rows("Very long sequence name for sequence 1", 1, 3, latex_align = 'l') %>% 
  group_rows("Sequence 2", 4, 6) 
                      
fileConn <- file("tables/module_tracks.tex")
writeLines(my_table, fileConn)
close(fileConn)
