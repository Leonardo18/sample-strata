# Title     : Sample Strata
# Objective : Usage of a sample strata using iris specie group and infert set with different numbers per group
# Created by: leonardo.anjos
# Created on: 16/11/18

# import library sampling
library(sampling)

# \Getting set data from iris, vector Species, with a size of 25 for each species in a total of three Species
# With totality 150
sampleiris2 = strata(iris, c("Species"), size=c(25, 25, 25), method="srswor")

# exit of sampleiris2 object
print(summary(sampleiris2))

# 0-5
zeroToFive = round(12 / 248 * 100)
# 6-11
sixToEleven = round(120 / 248 * 100)
# 12+
twelveMore = round(120 / 248 * 100)


# Now using data set infert, getting group education, will get random data between zero to five, six to elevent and twelve more
# With equals chance from groups with different numbers of values per age
sampleiris2 = strata(infert, c("education"), size=c(zeroToFive, sixToEleven, twelveMore), method="srswor")

# exit of sampleiris2 object
print(summary(sampleiris2))

