library(readr)
ex3_7 <- read_table2("data/ex3.5.dat", col_names = c("u1", "x1", "x3"))


library(MplusAutomation)



prepareMplusData(ex3_7, "data/test.dat")
runModels("ex3.5.inp", showOutput = TRUE, Mplus_command = "/opt/mplus/8.1/mplus")

# Read model 

Output <- readModels("ex3.5.out")
readModels("ex3.5.out", what="summaries")
