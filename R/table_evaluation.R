library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ ` `, ~ `CSU pilot testers`, ~`Non-CSU pilot testers`, 
  ~ `AAM workshop participants`, ~ `Online users of final\ntraining materials`,
  "\\tabitem Demographics", "Yes", "Yes", "Yes",  "Yes",
  "\\tabitem Highest educational degree", "Yes", "Yes", "Yes", "Yes",
  "\\tabitem Research role", "Yes", "Yes", "Yes", "Yes",
  "\\tabitem Module 4", "Yes", "Yes", "Yes", "No",
  "\\tabitem Module 5", "Yes", "Yes", "No", "No",
  "\\tabitem Module 6", "Yes", "No", "Yes", "No"
) %>% 
  mutate(`CSU pilot testers` = cell_spec(`CSU pilot testers`, format = "latex",
                               background = factor(`CSU pilot testers`,
                                                   levels = c("No", "Yes"),
                                                   labels = c("white", "pink"))),
         `Non-CSU pilot testers` = cell_spec(`Non-CSU pilot testers`, format = "latex",
                          background = factor(`Non-CSU pilot testers`,
                                              levels = c("No", "Yes"),
                                              labels = c("white", "pink"))),
         `AAM workshop participants` = cell_spec(`AAM workshop participants`, format = "latex",
                                          background = factor(`AAM workshop participants`,
                                                              levels = c("No", "Yes"),
                                                              labels = c("white", "pink"))),
         `Online users of final\ntraining materials` = cell_spec(`Online users of final\ntraining materials`, format = "latex",
                                                 background = factor(`Online users of final\ntraining materials`,
                                                                     levels = c("No", "Yes"),
                                                                     labels = c("white", "pink")))) %>% 
  kable("latex", booktabs = T, escape = FALSE, 
        align = 'c',
        col.names = linebreak(c("", "CSU pilot testers", 
                                "Non-CSU pilot testers",
                                "AAM workshop participants",
                                "Online users")),
        caption = "Pilot testing and evaluation of different groups.") %>% 
  kable_styling(latex_options = c("repeat_header"), 
                font_size = 10) %>% 
  row_spec(0, angle = 45) %>% 
  column_spec(1, width = "15em") %>% 
  column_spec(2, width = "3em") %>% 
  column_spec(3, width = "3em") %>% 
  column_spec(4, width = "3em") %>% 
  column_spec(5, width = "3em") %>% 
  group_rows("What are the characteristics of the trainees?", 1, 3, latex_align = 'l') %>% 
  group_rows("How accessible were the training modules?", 4, 6, latex_align = 'l') 

fileConn <- file("tables/evaluation.tex")
writeLines(my_table, fileConn)
close(fileConn)