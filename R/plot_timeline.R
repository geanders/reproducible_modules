library(dplyr)
library(lubridate)
library(ggplot2)
library(forcats)
library(RColorBrewer)
library(ggthemr)

# Make a dataframe with tasks
my_df <- tribble(
  ~ milestones, ~ tasks, ~ startDate, ~ dueDate, ~ status,
  
  "Module development", 
  "Create first draft of text for online book",
  ymd("2019-04-01"),
  ymd("2020-03-31"),
  "I",
  
  "Module development", 
  "Refine text for online book based on evaluations",
  ymd("2020-04-01"),
  ymd("2022-03-31"),
  "I",
  
  "Module development",
  "Create content for video lectures",
  ymd("2019-04-01"),
  ymd("2021-03-31"),
  "I",
  
  "Module development",
  "Film video lectures / embed in book",
  ymd("2019-09-01"),
  ymd("2021-03-31"),
  "I",
  
  "Module piloting, refinement, and evaluation",
  "Day-length user testing at CSU",
  ymd("2020-04-01"),
  ymd("2020-04-02"),
  "I", 
  
  "Module piloting, refinement, and evaluation",
  "Day-length user testing at CSU",
  ymd("2019-09-01"),
  ymd("2019-09-02"),
  "I",  
  
  "Module piloting, refinement, and evaluation",
  "Day-length user testing at CSU",
  ymd("2020-04-01"),
  ymd("2020-04-02"),
  "I", 
  
  "Module piloting, refinement, and evaluation",
  "Day-length user testing at CSU",
  ymd("2020-09-01"),
  ymd("2020-09-02"),
  "I",  
  
  "Module piloting, refinement, and evaluation",
  "Day-length user testing at CSU",
  ymd("2021-04-01"),
  ymd("2021-04-02"),
  "I", 
  
  "Module piloting, refinement, and evaluation",
  "Day-length user testing at CSU",
  ymd("2021-09-01"),
  ymd("2021-09-02"),
  "I", 
  
  "Module piloting, refinement, and evaluation",
  "Ongoing piloting with non-CSU collaborators",
  ymd("2019-09-01"),
  ymd("2022-03-31"),
  "I",
  
  "Module piloting, refinement, and evaluation",
  "Workshop at conference to pilot training materials",
  ymd("2019-09-01"),
  ymd("2021-03-31"),
  "I",
  
  "Module dissemination and maintenance",
  "Make all materials available through\nonline book as they are developed",
  ymd("2019-04-01"),
  ymd("2022-03-31"),
  "I",
  
  "Module dissemination and maintenance",
  "Share links through social media to book as it develops",
  ymd("2019-05-15"),
  ymd("2020-12-31"),
  "I",
  
  "Module dissemination and maintenance",
  "Invite CSU and non-CSU colleagues to \nbe involved in pilot testing materials",
  ymd("2019-08-01"),
  ymd("2021-06-30"),
  "I",
  
  "Module dissemination and maintenance",
  "Write and submit paper describing modules",
  ymd("2021-01-01"),
  ymd("2021-06-16"),
  "I",
  
  "Module dissemination and maintenance",
  "Present modules at microbiology / immunology conferences",
  ymd("2020-06-15"),
  ymd("2020-06-16"),
  "I",
  
  "Module dissemination and maintenance",
  "Present modules at microbiology / immunology conferences",
  ymd("2021-06-15"),
  ymd("2021-06-16"),
  "I"
) 

# Create the figure
my_timeline <- my_df %>%  
  ggplot(aes(x = startDate, xend = dueDate, 
                  y = fct_reorder(tasks, startDate, .desc = TRUE),
                  yend = fct_reorder(tasks, startDate, .desc = TRUE),
                  color = milestones)) + 
  geom_segment(size = 2) + 
  geom_vline(aes(xintercept = ymd("2019-04-01"))) +
  geom_vline(aes(xintercept = ymd("2022-03-31"))) +
  geom_point(aes(x = startDate, 
                 y = fct_reorder(tasks, startDate, .desc = TRUE))) +
  geom_point(aes(x = dueDate,
                 y = fct_reorder(tasks, startDate, .desc = TRUE))) +
  labs(x = "Date", y = "") + 
  theme(legend.position = "none") + 
  scale_color_brewer(palette = "Dark2") + 
  facet_wrap(~ milestones, ncol = 1, scales = "free_y") 

# Write out as pdf
pdf("figures/timeline.pdf", width = 10, height = 6)
ggthemr("dust")
print(my_timeline)
ggthemr_reset()
dev.off()
