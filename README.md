# ic-intermittent-drink-analysis
Experiment program template files for TSE IntelliCages and R analysis templates to analyze an intermittent drink experiment.

# IntelliCage progam files
These template files are located in the `program files` folder and have been created with the proprietary software Designer that comes with the [IntelliCage](https://www.tse-systems.com/products/intellicage/) system. These files are only useful, if you have access to an IntelliCage system and its software package.

# R project

The project template is centered around the analysis being done in notebook files in the `qmd` folder using the [quarto](https://quarto.org/) markdown language. Assuming that the experiment will involve multiple cohorts, the `data` folder is the location for the IntelliCage archives separated in subfolders for cohorts. Using the notebook files as the main analysis tool allows for cohort specific code modification and documentation at the same time. 

The notebook contains a code chunk that will write the summarized data for each cohort as an `.rds` file, which can be quickly read without needed data wrangling. This leaves as a basic analysis structure at least one notebook for each cohort and one notebook file for a summary/combined analysis of all participating cohorts.

# Who should I talk to?

me
