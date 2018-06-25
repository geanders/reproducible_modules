library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ ` `, ~ `CSU pilot testers`, ~`Non-CSU pilot testers`, 
  ~ `AAM workshop participants`, ~ `Online users of final\ntraining materials`,
  "\\tabitem Demographics", "Yes", "Yes", "Yes",  "Yes",
  "\\tabitem Highest educational degree", "Yes", "Yes", "Yes", "Yes",
  "\\tabitem Research role (e.g., principal investigator, research associate, graduate student)", "Yes", "Yes", "Yes", "Yes",
  
  "\\tabitem How many trainees have accessed online book?", "No", "No", "No", "Yes",
  "\\tabitem How are online book users distributed across the U.S.?", "No", "No", "No", "Yes",
  "\\tabitem How many international trainees have accessed the online book?", "No", "No", "No", "Yes",
  "\\tabitem How many trainees attended the ASM workshop?", "No", "No", "Yes", "No",
  "\\tabitem How many trainees attended on-campus CSU piloting?", "Yes", "No", "No", "No",
  "\\tabitem How many non-CSU pilot testers participated?", "No", "Yes", "No", "No",
  
  "\\tabitem How long do trainees stay on the webpage for the module?", "No", "No", "No", "Yes",
  "\\tabitem For each module video, how often has it been watched?", "No", "Yes", "No", "Yes",
  "\\tabitem When trainees watch a module's video, on average what percent do they watch?", "No", "No", "No", "Yes",
  "\\tabitem How often are additional educational materials (quizzes, applied exercise materials) used?", "No", "Yes", "No", "Yes",
  "\\tabitem How often is the entire book downloaded as a PDF or EPUB file?", "No", "Yes", "No", "Yes",
  "\\tabitem Which of the modules are used most frequently?", "No", "Yes", "No", "Yes",
  
  "\\tabitem What were the trainee's goals in using this training material?", "Yes", "Yes", "Yes", "No", 
  "\\tabitem Did this module provide the trainee novel information?", "Yes", "Yes", "Yes", "Yes", 
  "\\tabitem Does the trainee plan to change research practices based on having taken the module?", "Yes", "Yes", "Yes", "Yes", 
  "\\tabitem Is so, how does the trainee plan to change research practices based on having taken the module?", "Yes", "Yes", "Yes", "No", 
  "\\tabitem Was the module useful enough that the trainee would recommend it to other scientists?", "Yes", "Yes", "Yes", "Yes",
  "\\tabitem Which elements of the training modules (video lecture, written text, additional educational materials) did the trainee find most useful?", "Yes", "Yes", "Yes", "No",
  "\\tabitem For each module video, are there spots where it is common for trainees to stop watching?", "No", "No", "No", "Yes",
  "\\tabitem Why did the trainee chose which modules to use?", "Yes", "Yes", "Yes", "No",
  "\\tabitem For the modules taken, what content did the trainee wish had been covered but was not?", "Yes", "Yes", "Yes", "No"
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
        caption = "\\label{tab:evaluation} Pilot testing and evaluation of different groups.") %>% 
  kable_styling(latex_options = c("repeat_header", "hold_position"), 
                font_size = 8) %>% 
  row_spec(0, angle = 45) %>% 
  column_spec(1, width = "30em") %>% 
  column_spec(2, width = "5em") %>% 
  column_spec(3, width = "5em") %>% 
  column_spec(4, width = "5em") %>% 
  column_spec(5, width = "5em") %>% 
  group_rows("Characteristics of the trainees?", 1, 3, latex_align = 'l') %>% 
  group_rows("How often the training materials are used", 4, 9, latex_align = 'l') %>% 
  group_rows("Patterns in use of each module", 10, 15, latex_align = 'l') %>% 
  group_rows("Usefulness of each module", 16, 23, latex_align = 'l')

fileConn <- file("tables/evaluation.tex")
writeLines(my_table, fileConn)
close(fileConn)
