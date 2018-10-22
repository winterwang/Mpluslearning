library(readr)
ex3_7 <- read_table2("data/ex3.5.dat", col_names = c("u1", "x1", "x3"))

GLMlogisitic <- glm(u1 ~ x1 + x3, data = ex3_7, family = "binomial")
summary(GLMlogisitic)
library(epiDisplay)
tab1(ex3_7$u1)
# # ex3_7$u1 : 
        # Frequency Percent Cum. percent
# 0             327    65.4         65.4
# 1             173    34.6        100.0
  # Total       500   100.0        100.0

library(MplusAutomation)



# prepareMplusData(ex3_7, "data/test.dat")
runModels("ex3.5.inp", showOutput = TRUE, Mplus_command = "/opt/mplus/8.1/mplus")

# Read model 

Output <- readModels("ex3.5.out")
readModels("ex3.5.out", what="summaries")


# Chapter 3 p53 -----------------------------------------------------------


runModels("T3-16.inp", showOutput = TRUE, Mplus_command = "/opt/mplus/8.1/mplus")


# Chapter 4 4.42 P 74 -----------------------------------------------------

runModels("T4-3.inp", showOutput = TRUE, Mplus_command = "/opt/mplus/8.1/mplus")


# read figures  -----------------------------------------------------------

source("mplus.R")
mplus.view.plots("T4-3.gh5")
mplus.plot.eigenvalues('T4-3.gh5')
mplus.get.eigenvalues('T4-3.gh5')



# Chapter 4 4.5.2 p 87 ----------------------------------------------------

runModels("T4-6a.inp", showOutput = TRUE, Mplus_command = "/opt/mplus/8.1/mplus")

