library(dplyr)
library(lubridate)
library(ggplot2)
library(forcats)
library(RColorBrewer)
library(ggthemr)

# Make a dataframe with tasks
my_df <- tribble(
  ~ milestones, ~ tasks, ~ startDate, ~ dueDate, 
  
## Module development

  "Module development", 
  "Write text for online book",
  ymd("2019-04-01"),
  ymd("2021-01-01"),
  
  "Module development",
  "Create slides for video lectures",
  ymd("2019-04-01"),
  ymd("2021-01-01"),
  
  "Module development",
  "Film video lectures and embed in online book",
  ymd("2019-09-01"),
  ymd("2021-03-31"),

  "Module development",
  "Format and post online book with\nassistance of student hourly",
  ymd("2019-04-01"),
  ymd("2021-03-31"),

  "Module development",
  "Create additional educational materials (quizzes,\ndiscussion questions, applied exercises)",
  ymd("2019-06-01"),
  ymd("2021-03-31"),

  "Module development",
  "Record audio and video discussions /\nsolutions to applied materials",
  ymd("2020-01-01"),
  ymd("2021-03-31"),

  "Module development",
  "Attend R conference to ensure materials include\nnewest techniques / learn bookdown developments",
  ymd("2019-07-04"),
  ymd("2019-07-07"),
 
# Module maintenance and refinement

  "Module maintenance and refinement", 
  "Refine written text for online book\nbased on pilot feedback",
  ymd("2020-01-01"),
  ymd("2022-03-31"),

  "Module maintenance and refinement", 
  "Ensure training materials comply\nwith Rehabilitation Act",
  ymd("2019-04-01"),
  ymd("2022-03-31"),

  "Module maintenance and refinement", 
  "Refilm any video lecture content if\nneeded based on pilot feedback",
  ymd("2021-04-01"),
  ymd("2022-03-31"),

  "Module maintenance and refinement", 
  "Make any needed refinements to quizzes,\napplied exercises, and discussion questions",
  ymd("2021-04-01"),
  ymd("2022-03-31"),

  "Module maintenance and refinement", 
  "Attend NIGMS Program Meeting",
  ymd("2021-05-01"),
  ymd("2021-05-03"),

# Module piloting and evaluation

  "Module piloting and evaluation",
  "Develop feedback survey for\nCSU pilot testers",
  ymd("2019-08-01"),
  ymd("2019-08-31"),

  "Module piloting and evaluation",
  "Train with CSU STEM Center for strategies to get\nfocus-group-type feedback from CSU pilot session",
  ymd("2019-08-01"),
  ymd("2019-08-03"),

  "Module piloting and evaluation",
  "Develop feedback survey to\ninclude in online book",
  ymd("2020-08-01"),
  ymd("2020-08-31"),

  "Module piloting and evaluation",
  "Day-long pilot testing at CSU",
  ymd("2020-04-01"),
  ymd("2020-04-02"),

  "Module piloting and evaluation",
  "Day-long pilot testing at CSU",
  ymd("2019-09-01"),
  ymd("2019-09-02"),
  
  "Module piloting and evaluation",
  "Day-long pilot testing at CSU",
  ymd("2020-04-01"),
  ymd("2020-04-02"),
  
  "Module piloting and evaluation",
  "Day-long pilot testing at CSU",
  ymd("2020-09-01"),
  ymd("2020-09-02"),
  
  "Module piloting and evaluation",
  "Day-long pilot testing at CSU",
  ymd("2021-04-01"),
  ymd("2021-04-02"),
  
  "Module piloting and evaluation",
  "Day-long pilot testing at CSU",
  ymd("2021-09-01"),
  ymd("2021-09-02"),

  "Module piloting and evaluation",
  "Follow-up surves to CSU pilot testers\nand ASM workshop participants",
  ymd("2020-03-01"),
  ymd("2020-03-02"),

  "Module piloting and evaluation",
  "Follow-up surves to CSU pilot testers\nand ASM workshop participants",
  ymd("2020-09-01"),
  ymd("2020-09-02"),

  "Module piloting and evaluation",
  "Follow-up surves to CSU pilot testers\nand ASM workshop participants",
  ymd("2021-03-01"),
  ymd("2021-03-02"),
  
  "Module piloting and evaluation",
  "Follow-up surves to CSU pilot testers\nand ASM workshop participants",
  ymd("2021-09-01"),
  ymd("2021-09-02"),

  "Module piloting and evaluation",
  "Follow-up surves to CSU pilot testers\nand ASM workshop participants",
  ymd("2022-03-01"),
  ymd("2022-03-02"),

  "Module piloting and evaluation",
  "Follow-up surves to CSU pilot testers\nand ASM workshop participants",
  ymd("2021-12-15"),
  ymd("2021-12-06"),

  "Module piloting and evaluation",
  "Ongoing piloting with early online users",
  ymd("2019-06-01"),
  ymd("2022-03-31"),
  
  "Module piloting and evaluation",
  "Workshop at American Society for Microbiology\nconference to pilot training materials",
  ymd("2020-06-15"),
  ymd("2020-06-16"),

# Module dissemination
  
  "Module dissemination",
  "Make all materials available through\nonline book as they are developed",
  ymd("2019-04-01"),
  ymd("2022-03-31"),
  
  "Module dissemination",
  "Share links through social media to book as it develops",
  ymd("2019-05-15"),
  ymd("2022-03-31"),
  
  "Module dissemination",
  "Recruit CSU and non-CSU colleagues to\nbe early users of online materials",
  ymd("2019-08-01"),
  ymd("2021-09-01"),
  
  "Module dissemination",
  "Write and submit paper describing modules",
  ymd("2021-01-01"),
  ymd("2021-09-16"),
  
  "Module dissemination",
  "Present project at microbiology / immunology conferences",
  ymd("2020-06-01"),
  ymd("2020-06-04"),

  "Module dissemination",
  "Present modules at microbiology / immunology conferences",
  ymd("2020-06-27"),
  ymd("2020-06-30"),
  
  "Module dissemination",
  "Present modules at microbiology / immunology conferences",
  ymd("2021-06-15"),
  ymd("2021-06-16"),

  "Module dissemination",
  "Post static version of the book to bookdown.org",
  ymd("2021-03-30"),
  ymd("2021-03-31"),

  "Module dissemination",
  "Post static version of the book to bookdown.org",
  ymd("2022-03-30"),
  ymd("2022-03-31")
) %>% 
  mutate(milestones = fct_relevel(milestones, 
                                  "Module development",
                                  "Module maintenance and refinement",
                                  "Module piloting and evaluation",
                                  "Module dissemination"))

# Create the figure
my_timeline <- my_df %>%  
  ggplot(aes(x = startDate, xend = dueDate, 
                  y = fct_reorder(tasks, startDate, .desc = TRUE),
                  yend = fct_reorder(tasks, startDate, .desc = TRUE),
                  color = milestones)) + 
  geom_segment(size = 2) + 
  geom_vline(aes(xintercept = ymd("2019-04-01"))) +
  geom_vline(aes(xintercept = ymd("2022-03-31"))) +
  geom_vline(aes(xintercept = ymd("2020-03-31")), linetype = 2) +
  geom_vline(aes(xintercept = ymd("2021-03-31")), linetype = 2) +
  geom_point(aes(x = startDate, 
                 y = fct_reorder(tasks, startDate, fun = min, .desc = TRUE))) +
  geom_point(aes(x = dueDate,
                 y = fct_reorder(tasks, startDate, fun = min, .desc = TRUE))) +
  labs(x = "", y = "") + 
  theme(legend.position = "none") + 
  scale_color_brewer(palette = "Dark2") + 
  facet_wrap(~ milestones, ncol = 1, scales = "free_y") 

# Write out as pdf
pdf("figures/timeline.pdf", width = 10, height = 10.5)
ggthemr("dust")
print(my_timeline)
ggthemr_reset()
dev.off()
