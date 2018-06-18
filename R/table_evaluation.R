library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ ` `, ~ `CSU pilot testers`, ~`Non-CSU pilot testers`, 
  ~ `AAM workshop participants`, ~ `Online users of final\ntraining materials`,
  "\\tabitem Demographics", "Yes", "Yes", "Yes",  "Yes",
  "\\tabitem Highest educational degree", "Yes", "Yes", "Yes", "Yes",
  "\\tabitem Research role (e.g., principal investigator, research associate, graduate student)", "Yes", "Yes", "Yes", "Yes",
  "\\tabitem How many trainees have accessed online book?", "Yes", "No", "Yes", "No",
  "\\tabitem How are online book users distributed across the U.S.?", "Yes", "No", "Yes", "No",
  "\\tabitem How many international trainees have accessed the online book?", "Yes", "No", "Yes", "No",
  "\\tabitem How many trainees attended the associated workshop?", "Yes", "No", "Yes", "No",
  "\\tabitem How many trainees attended on-campus CSU piloting?", "Yes", "No", "Yes", "No",
  "\\tabitem How many non-CSU pilot testers participated?", "Yes", "No", "Yes", "No",
  "\\tabitem How long do trainees stay on the webpage for the module?", "Yes", "No", "Yes", "No",
  "\\tabitem When trainees watch a module's video, on average what percent do they watch?", "Yes", "No", "Yes", "No",
  "\\tabitem Did this module provide the trainee novel information?", "Yes", "No", "Yes", "No",
  "\\tabitem Does the trainee plan to change research practices based on having taken the module?", "Yes", "No", "Yes", "No", 
  "\\tabitem Was the module useful enough that the trainee would recommend it to other scientists?", "Yes", "No", "Yes", "No"
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
                font_size = 8) %>% 
  row_spec(0, angle = 45) %>% 
  column_spec(1, width = "30em") %>% 
  column_spec(2, width = "3em") %>% 
  column_spec(3, width = "3em") %>% 
  column_spec(4, width = "3em") %>% 
  column_spec(5, width = "3em") %>% 
  group_rows("What are the characteristics of the trainees?", 1, 3, latex_align = 'l') %>% 
  group_rows("How often are the training materials used?", 4, 9, latex_align = 'l') %>% 
  group_rows("Patterns in use of each module", 10, 11, latex_align = 'l') %>% 
  group_rows("Usefulness of each module", 12, 14, latex_align = 'l')

fileConn <- file("tables/evaluation.tex")
writeLines(my_table, fileConn)
close(fileConn)