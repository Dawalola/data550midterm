library(tidyverse)

here::i_am(
  "model/code/build_model.R"
)

data <- read.csv(
  file = here::here("data/covid_sub.csv")
)

params <- config::get(file = here::here("model/config.yml"))

print(params)

## create binary death outcome

data <- data %>% mutate(died = ifelse(!is.na(DATE_DIED), 1, 0))

data <- data %>% mutate(PREGNANT = ifelse(SEX == "male", "No", PREGNANT))

data$died <- factor(data$died)
data$SEX <- factor(data$SEX)
data$PREGNANT <- factor(data$PREGNANT)
data$ICU <- factor(data$ICU)
data$COPD <- factor(data$COPD)
data$DIABETES <- factor(data$DIABETES)

# function to identify covariates turned on or off in config file
fit_log <- function(data, sex = TRUE, preg = TRUE, icu = TRUE, copd = TRUE, diab = TRUE, age = TRUE) {
  # Start with the outcome variable in the formula
  formula <- c("died")
  
  # Add each covariate to the formula based on the parameter values
  if(sex == TRUE){
    formula <- c(formula, "SEX")
    print("sexyes")
  }
  if(preg == TRUE){
    formula <- c(formula, "PREGNANT")
    print("pregyes")
  }
  if(icu == TRUE){
    formula <- c(formula, "ICU")
    print("icuyes")
  }
  if(copd == TRUE){
    formula <- c(formula, "COPD")
    print("copdyes")
  }
  if(diab == TRUE){
    formula <- c(formula, "DIABETES")
    print("diabyes")
  }
  if(age == TRUE){
    formula <- c(formula, "AGE")
    print("ageyes")
  }
  
  #regression formula
  if(length(formula) == 1){
    formula <- as.formula(paste(formula[1], "~ 1")) # Intercept-only model
  } 
  else{
    formula <- as.formula(paste(formula[1], "~", paste(formula[-1], collapse = " + ")))
  }
  
  model <- glm(formula, data = data, family = "binomial")
  
  return(model)
}

logistic_model <- fit_log(data = data, sex = params$sex, preg = params$preg, 
                icu = params$icu, copd = params$copd, diab = params$diab, age = params$age)

saveRDS(logistic_model, file = here::here("model/output/logistic_model.Rds"))
