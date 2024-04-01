# DATA 550 Midterm Project Description
## Group 3

Our group is analyzing the dataset with information regarding COVID-19 cases in Mexico.

### File structure

The report is been broken into four subproject child reports. Each coder is responsible one of the child reports. 

#### Table 1: Ketki
- `table1/` contains all code and output related to creating a descriptive table 1 for the dataset
  - `table1/report.Rmd` is the child report that makes a descriptive table for our chosen variables of interest
	
#### Regression Model: Nick
- `model/` contains all code and output related to creating a regression model for the dataset 
  - `model/code/` is a folder for scripts associated with making regression model for child report
    - `model/code/build_model.R` is a script to run the regression analysis
  - `model/output/` is a folder to hold output associated with regression model
    - `model/output/logistic_model.Rds` is created by `model/code/build_model.R` and knit into child report
  - `model/config.yml` is a configuration file where users can turn off/on variables to be included in the regression model for the dataset by setting their values to TRUE (include) or FALSE (exclude)
	- `model/report.Rmd` is the child report for the regression model 
	
#### Comorbiditiy Figures: Dawa

- `comorbidities/` contains all code and output related to creating descriptive figures associated with the comorbidities of interest (Dawa)
  - `comorbidities/report.Rmd` is the child report that makes figures assoicated with the comorbidities in the dataset
  - `comorbidities/output` is the folder where output plots from the child report are saved
	
#### Sociodemographic Figures: Yuzhou

- `sociodemographic/` contains all code and output related to creating descriptive figures for the sociodemographic variables in the dataset (Yuzhou)
  - `sociodemographic/code/` is a folder for scripts associated with making figures associated with the sociodemographic variables of interest for child report
	  - `sociodemographic/code/create_subset.R` is a script that subsets the data to the sociodemographic variables of interest
	- `sociodemographic/report.Rmd` is the child report for the sociodemographic figures

#### Additional Files: Allison

- `combined_report.Rmd` is the parent report that combines each [child report](https://bookdown.org/yihui/rmarkdown-cookbook/child-document.html) subproject into the final report

- `render_combined_report.R` is used for rendering the combined report from the command line

- `data/` contains the COVID-19 dataset `data/covid_sub.csv` and a descriptive README about the dataset `data/covid_readme.txt`

- `Makefile` is used to run all necessary scripts in proper order for report building

### Build Report

To build the final report, use the `make` command to run the Makefile in the main project directory

### Customize Report

The report can be customized to include/exclude different covariates in our model through the use of the `model/config.yml` file. 
The file lists all covariates included in the model.
The user can set each of these covariates to `TRUE` or `FALSE` to include or exclude them in the report. 



