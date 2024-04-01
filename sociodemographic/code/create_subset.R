here::i_am(
  "sociodemographic/code/create_subset.R"
)

data <- read.csv(file = here::here("data/covid_sub.csv"), header = T)

attach(data)
sociodemographic <- data.frame(AGE, SEX, PREGNANT, ICU, PATIENT_TYPE, PNEUMONIA)
detach(data)

saveRDS(sociodemographic, file = here::here("sociodemographic/output/data_subset.rds"))

