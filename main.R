ads <- read.csv("F:/R Projects/LinearRegression/SurveyCSV.csv")

View(ads)
nrow(ads)
ncol(ads)

colnames(ads)

cgpa <- ads$CGPA.1year
sgpa <- ads$SGPA.SY.Sem1

plot(cgpa, sgpa)

plot(cgpa, sgpa, pch=16, cex=1, col='blue',
     main = 'FY CGPA V/S SY SGPA (1st Sem)', xlab='cgpa', ylab='sgpa')

model <- lm(cgpa ~ sgpa)

summary(model)

attributes(model)

coefficients(model)

coef(model)

abline(model)
