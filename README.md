# DATA 550 Midterm Project Description
## Group 3

Our group is analyzing the dataset with information regarding COVID-19 cases in Mexico.

The report is been broken into four subprojects for each coder.

- `table1/` contains all code and output related to creating a descriptive table 1 for the dataset
	- `table1/code/XXX` FILL IN AS CODERS RUN ANALYSES
		- XXX output should be saved to `table1/output/`
	- `table1/report.Rmd` reads in output from `table1/output/` and creates the report for the descriptive analysis
	
- `model/` contains all code and output related to creating a regression model for the dataset
	- `model/code/XXX` FILL IN AS CODERS RUN ANALYSES
		- XXX output should be saved to `model/output/`
	- `model/report.Rmd` reads in output from `model/output/` and creates the report for the regression model
	
- `binary_figures/` contains all code and output related to creating descriptive figures for the binary variables in the dataset
	- `binary_figures/code/XXX` FILL IN AS CODERS RUN ANALYSES
		- XXX output should be saved to `binary_figures/output/`
	- `binary_figures/report.Rmd` reads in output from `binary_figures/output/` and creates the report for the binary figures
	
- `continuous_figures/` contains all code and output related to creating descriptive figures for the binary variables in the dataset
	- `continuous_figures/code/XXX` FILL IN AS CODERS RUN ANALYSES
		- XXX output should be saved to `continuous_figures/output/`
	- `continuous_figures/report.Rmd` reads in output from `continuous_figures/output/` and creates the report for the binary figures

The subprojects are combined in `combined_report.Rmd`.

- [child](https://bookdown.org/yihui/rmarkdown-cookbook/child-document.html) documents are used to stitch together a final report

`render_combined_report.R` is used for rendering the combined report from the command line

`data/` contains the COVID-19 dataset and a descriptive README about the dataset