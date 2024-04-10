
model/output/logistic_model.Rds: data/covid_sub.csv model/code/build_model.R model/config.yml
	Rscript model/code/build_model.R
	
sociodemographic/output/data_subset.rds: data/covid_sub.csv sociodemographic/code/create_subset.R 
	Rscript sociodemographic/code/create_subset.R
	
combined_report.html: data/covid_sub.csv model/output/logistic_model.Rds render_combined_report.R model/report.Rmd \
table1/report.Rmd comorbidities/report.Rmd sociodemographic/report.Rmd sociodemographic/output/data_subset.rds
	Rscript render_combined_report.R
	
.PHONY: clean
clean:
	rm -f model/output/*.Rds && rm -f model/*.html && rm -f table1/output/*.Rds \
	&& rm -f sociodemographic/output/*.rds && rm -f comorbidities/output/*.rds 