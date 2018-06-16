library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ `Module title`, ~ Type, ~ `Description of module content`, 
  ~ `Objectives (After taking the module, the trainee can ...)`, 
  ~ `Video Length`,  ~ `Extra educational materials`,
  
# Module 1  
  "Separating data recording and analysis", "Principals",
    "Many biomedical laboratories currently use spreadsheets, with embedded macros, 
      to both record and analyze experimental data. This practice empedes the transparency
      and reproducibility of both data recording and data analysis. In this module, we 
      will describe this common practice and explain how it impedes the transparency and
      reproducibility of data recording and analysis. We will then outline alternative
      approaches that separate the steps of data recording and data analysis and explain
      how these alternative approaches can improve the reproducbility of biomedical 
      research.", 
    "\\tabitem Explain the difference between data recording and data analysis; 

     \\tabitem Understand why collecting data on spreadsheets with embedded macros
        impedes transparency and reproducibility; 

      \\tabitem List alternative approaches that separate data recording and data analysis to 
        improve transparency and reproducibility.", 
    "15", 
    "\\tabitem Discussion questions, including describing data recording approaches the trainee has 
      previously used in research projects and the benefits
      and limitations of those approaches in terms of data transparency and 
      reproducibility; 

    \\tabitem Short audio recording of two Co-Is giving their
      own answers to these discussion questions.",
  
# Module 2  
  "Principals and power of structured data formats", "Principals",
    "In this module, we will explain what makes a dataset 'structured' and
      why this format is a powerful tool for reproducible research.", 
    "\\tabitem List the characteristics of a structured data format; 

      \\tabitem Describe how using a structured data format when recording experimental 
      data can improve the transparency and reproducibility of research;

      \\tabitem Outline other benefits of using a structured format when recording data.", 
    "10", 
    "\\tabitem Applied exercise: For example datasets, specify whether each is in a 
      structured data format and, in cases where it is not, draft a structured
      format that could be used to record the data; 

    \\tabitem Video walking trainees 
      through one solution to the applied exercise.",

# Module 3
  "The 'tidy' data format: an implementation of a structured data format", "Implementation",
  "The 'tidy' data format was outlined in a 200[x] paper and has since quickly 
  gained popularity among statisticians and data scientists. By consistently 
  using this data format, researchers have found they can employ combinations 
  of simple, generalizable tools to perform complex tasks in data processing, 
  analysis, and visualization. However, despite the power of this format, it is
  not yet widely known or used among laboratory scientists when they record
  experimental data. In this module, we will explain what characteristics determine
  if a dataset is 'tidy' and how use of the 'tidy' implementation of a structure 
  data format can improve the ease and efficiency
  of 'Team Science', including collaborations with statisticians.", 
  "\\tabitem List which characteristics to check to determine if a dataset complies with 
    the 'tidy' structured data format; 

  \\tabitem Explain the difference between the ideas of a structured data format (general 
    concept) and the 'tidy' data format (one implementation of that general format
    that is now particularly popular in data analysis).", 
  "15", 
  "\\tabitem Quiz questions: For example datasets, correctly identify which of the 'tidy'
  data principals the dataset has or lacks; 

  \\tabitem Video giving answers and explanations
  for quiz questions, including showing 'tidy' versions of each example dataset; 

  \\tabitem Link to paper that established the 'tidy' data format.",

# Module 4
  "Designing templates for tidy data collection", "Implementation",
    "This module will move from the principals of the 'tidy' data format to the 
      practical details of designing a 'tidy' data format to use for a specific 
      research project. We will describe common issues that prevent real datasets from
      experimental research projects from following a 'tidy' format and show how they
      can be avoided when deciding the format in which to record experimental data.
      We will also provide rubrics and a checklist to help determine if a 
      data collection template complies with a 'tidy' format.", 
    "\\tabitem Identify characteristics that keep a dataset from following a 'tidy' format;
      
      \\tabitem Convert data from an 'untidy' to a 'tidy' format.", 
    "20", 
    "\\tabitem Applied exercise: Take a dataset in an 'untidy' format, identify what 
      characteristics keep it from being 'tidy', and convert design a 'tidy' form
  of the data; 

  \\tabitem Video providing a detailed solution to the applied exercise.",

# Module 5
  "Example: Creating a template for data collection", "Example",
    "In this module, we will walk through an example of creating a template to collect
      data in a 'tidy' format for a laboratory-based research project. As an example,
      we will use a research project headed by one of our Co-Is on tuberculosis
      [more description of this project]. We will walk through the 'untidy' format 
      initially used to collect data for this project, explain how this format 
      differed from a 'tidy' format, and show how we changed the format to be 'tidy'.
      Finally, we will show examples of how the experimental data can easily be 
      cleaned, analyzed, and visualized using reproducible tools once it is in a 
      'tidy' format.", 
    "\\tabitem Understand how the principals of 'tidy' data can be applied to experimental
      data from a real research project;

      \\tabitem Explain the advantages of using a 'tidy' data format for the example project.", 
    "15", 
    "\\tabitem Discussion questions, including listing examples of how experimental datasets
      the trainee has previously worked with or is currently working with are 'untidy' and
      how they could be converted to a 'tidy' format; 

    \\tabitem Short audio recording of two Co-Is giving their
      own answers to these discussion questions.", 

# Module 6
  "Power of using a single 'Project' directory for storing and tracking research project files", "Principals",
    "To improve the computational reproducibility of a research project, researchers
      can use a single 'Project' directory to collectively store 
      all research data (raw and pre-processed), meta-data, code for data pre-processing,
      and research products further along the research pipeline (e.g., paper drafts, 
      figures, code for data analysis). In this 
      module, we will show how all research project files can be collected and saved 
      in a single 'Project' directory. We will explain how using this practice from the 
      start of a research project improves the reproducibility of the projects, as well
      as how this practice facilitates the use of later tools to improve reproducibility,
      including version control. Finally, we will 
      list some of the common components and subdirectories that are useful to include
      in the structure of a 'Project' directory, including subdirectories for raw and
      pre-processed experimental data.", 
    "\\tabitem Describe a 'Project' directory, including common components and subdirectories; 

      \\tabitem List how collecting all research data and other files related 
      to a research project in a single 'Project' directory
      improves the reproducibility of a research project; 

      \\tabitem Describe how experimental data collection can be integrated with a
      research 'Project' directory.", 
    "20", 
    "\tabitem Quiz questions: These will test the trainee's understanding of what a 
      'Project' directory is, what common components it may include, and the benefits
      of structuring research project files---including raw and pre-processed 
      experimental data---within a single 'Project' directory from the beginning of the
      research project; 

      \\tabitem Video with detailed answers and discussion of quiz questions.",

# Module 7
  "Creating 'Project' templates", "Implementation",
    "Researchers can gain even more benefits, in terms of improving both the reproducibility
      and efficiency of research, by using a consistent structure for the 'Project' 
      directories for all of the research projects for a research group. We will describe the 
      benefits of using a consistent structure for 'Project' directories across different
      research projects within a research group, including how this practice can 
      facilitate the re-use of code for pre-processing, analyzing, and visualizing data.
      Further, we will demonstrate how RStudio can be used to create a template of a 
      research group's 'Project' directory structure, so a new project can be initialized
      with a skeleton directory that follows the 'Project' directory format established
      by the research group.", 
    "\\tabitem Explain how using a consistent structure for research 'Project' directories
      can improve the reproducibility and efficient of research projects within a 
      research group; 

     \\tabitem Understand how RStudio can be used to create a template
      to use to create consistently-structured research 'Project' directories.", 
    "25", 
    "\\tabitem Discussion questions, including descriptions of how the trainee has saved and
      tracked research project files for previous research projects and what barriers,
      if any, these practices introduced in terms of the reproducibility and efficiency
      of research; 

    \\tabitem Short audio recording of two Co-Is discussing how they have
      saved and tracked research project files in previous projects and what barriers to
      reproducibility these practices introduced.",

# Module 8
  "Example: Creating a 'Project' template", "Example",
    "In this module, we will walk through a real example of establishing the format 
      for a research group's 'Project' template, creating that template using RStudio,
      and initializing a new research project directory using the created template.
      [Further description of the real research project]", 
    "\\tabitem Create a 'Project' template in RStudio to use to initialize 
      consistently-formatted 'Project' directories to store all files related to 
      a research project; 
  
      \\tabitem Initialize a new 'Project' directory using this template.", 
    "15", 
    "\\tabitem Applied exercise: We will provide a description of the components and 
      subdirectories that a research group has decided to include in their 'Project'
      template. The trainee will need to use RStudio to create and save a 'Project' 
      template that meets these specifications; 

     \\tabitem Video demonstrating a detailed solution 
      to the applied exercise.",

# Module 9
  "Harnessing version control for transparent data recording", "Principals",
    "As a research project progresses, a typical practice in many experimental 
      research groups is to save new versions of files (e.g., 'draft1.doc', 'draft2.doc'),
      so that any changes can be reverted to earlier versions. However, this practice 
      leads to an explosion of research project files, and it becomes hard to track 
      which files represent the 'current' state of a project. Version control allows
      researchers to edit and change research project files in a way that allows them 
      to identify and undo any previous changes while maintaining a single version of
      each file. Further, version control requires short messages describing each change
      made to each file, which improves the transparency and reproducibility of both 
      the recording of experimental data and also the later steps of pre-processing, 
      analyzing, and visualizing the data. In this module, we will explain what version
      control is and how it can be used in research projects. We will highlight how version
      control can improve the transparency and reproducibility of research. Finally, we 
      will give examples of version control tools that are popular for research.", 
    "\\tabitem Describe version control and what it does; 

      \\tabitem List how using version 
      control improves the transparency and reproducibility of research.", 
    "10", 
    "\\tabitem Discussion questions, including discussion of how the trainee has 
      managed evolving research project files in previous projects and any barriers
      those practices introduced in conducting efficient and reproducible research; 

      \\tabitem Short audio recording of two Co-Is giving their
      own answers to these discussion questions.",

# Module 10
  "Using git and GitLab to enhance the reproducibility of collaborative research", "Principals",
    "Once a researcher has learned to use git on their own 
      computer for local version control, they can begin using version control 
      platforms like GitLab and GitHub to collaborate with others in their research
      group while keeping the project under version control. These platforms allow
      the all collaborators to share a current version of a project directory 
      (similar to Dropbox), but in a way that allows easy use of version control 
      and that is more efficient for exploring (and, when necessary, undoing) the changes 
      each team member has made to project files. In this module, we will describe 
      why a research team may want to use a version control platform like GitLab 
      to work collaboratively on a project. Further, we will show how to use 
      git through RStudio's user-friendly interface and how to connect from a local
      computer to GitLab through RStudio.", 
    "\\tabitem Explain the benefits of using a version control platform like GitLab, rather 
      than Dropbox, to share project files for collaborative research projects, 
      particularly in terms of increasing the transparency and reproducibility of a 
      research project; 

     \\tabitem Describe the difference between git and GitLab; 

      \\tabitem Understand how to set up and use git through RStudio's interface; 

      \\tabitem Understand how to connect with GitLab through RStudio and how to use these
        version control and collaboration tools to improve the reproducibility of 
        research projects.", 
    "20", 
    "\\tabitem Applied exercise, with detailed instructions for each step: Use RStudio to 
      initialize version control for a directory 
      and to make several tracked changes. Create a matching GitLab repository and use
      RStudio to connect your local and GitLab versions of the directory. 

    \\tabitem Video 
      walking trainees through a detailed solution to the exercise."
  ) %>% 
  mutate(`Module title` = cell_spec(`Module title`, format = "latex",
                                    color = factor(Type,
                                                   c("Principals",
                                                     "Implementation", 
                                                      "Example"),
                                                   c("blue", "red", "black")),
                                    bold = TRUE)) %>% 
  select(-Type) %>% 
  kable("latex", booktabs = TRUE, longtable = TRUE, escape = FALSE,
                  caption = "Modules for \\textbf{'Improving the Reproducibility of Experimental Data Recording'}. The color of each module's title indicates whether the module focuses on \\textbf{Principals} (blue), \\textbf{Implementation} (red), or \\textbf{Case study examples} (black).") %>% 
  kable_styling(latex_options = c("hold_position", "striped", "repeat_header"), 
                font_size = 10) %>% 
  column_spec(1, bold = TRUE, width = "10em") %>% 
  column_spec(2, width = "24em") %>% 
  column_spec(3, width = "15em") %>% 
  column_spec(4, width = "3em") %>% 
  column_spec(5, width = "15em") %>% 
  landscape()

fileConn <- file("tables/module_content_data_recording.tex")
writeLines(my_table, fileConn)
close(fileConn)
