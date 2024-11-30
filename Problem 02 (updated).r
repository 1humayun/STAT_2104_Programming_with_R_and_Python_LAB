#...(i)...
patient.data = data.frame(
  Patient.ID = 1:10,
  Sex = c("M", "F", "M", "M", "F", "M", "F", "F", "M", "F"),
  Weight = c(56, 48, 60, 65, 54, 57, 45, 50, 54, 53),
  Diabetes = c("Type I", "No", "Type 2", "Type I", "Type 2", "No", "Type I", "No", "Type 2", "Type I"),
  Blood.group = c("O (+ve)", "B (+ve)", "O (+ve)", "AB (+ve)", "O (+ve)", "B (+ve)", "AB (-ve)", "O (-ve)", "A (+ve)", "B (+ve)"),
  Medical.Expense = c(20000, 15000, 30000, 22000, 24000, 10000, 14000, 30000, 40000, 32000)
)

patient.data

#.......(ii)....

patient.data$Blood.group

#.......(iii) 
table(patient.data$Weight, patient.data$Blood.group)    #NB: Age is not available in Patient.data,  hence Weight was used

#.......(iv)...
New.data = patient.data[,-3]
Age = c(23,25,39,NA,36,25,22,NA,60,46)
New.data = cbind(patient.data[, 1:2], Age, patient.data[,3:5])
New.data

#.......(v)...
mean.age = mean(New.data$Age[!is.na(New.data$Age)])
mean.age
New.data$Age[is.na(New.data$Age)] = mean.age
New.data

# Five number summary
summary(New.data$Age)

#.......(vi)
data = table(New.data$Blood.group)
data
barplot(data,main= "Bar Chartfor Blood Group")
pie(data, main= "Pie Chartfor Blood Group")
