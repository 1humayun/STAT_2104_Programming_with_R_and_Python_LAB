# ..........02 no problem.............

#.................i no
Patient_ID = 1:10
sex = c('M', 'F','M', 'M', 'F', 'M', 'F', 'F', 'M', 'F')
Wieght = c(56,48,60,65,54,57,45,50,54,53)
Daibbetes = c('Type I', 'No', 'Type 2', 'Type I', 'Type 2', 'No', 'Type I', 
              'No', 'Type 2', 'Type I' )
Blood_group = c('O (+ve)', 'B (+ve)', 'O (+ve)', 'AB (+ve)', 'O (+ve)', 'B (+ve)', 
               'AB (-ve)', 'O (-ve)', 'A (+ve)', 'B (+ve)' )
Medical_Expenses = c(20000,15000,30000,22000,24000,10000,14000,30000,40000,32000)

patient.data = data.frame(Patient_ID,sex,Wieght,Daibbetes,Blood_group,
                          Medical_Expenses);patient.data

#........................ii no..........................
display = patient.data[,c("Blood_group", "Medical_Expenses" )];display

#......................iii no.........................
cross_table = table(patient.data$sex, patient.data$Blood_group);cross_table

#................................iv no..........................
patient.data = subset(patient.data, select = -Wieght);patient.data

Age =c(23,25,39,NA,36,25,22,NA,60,46)

New.data = cbind(patient.data,Age);New.data

#............................v no...................................

New.data$Age[is.na(New.data$Age) ] = mean(New.data$Age, na.rm = TRUE)
New.data
summary(New.data$Age)


#........................................vi...............................
New.data = New.data[complete.cases(New.data$Blood_group), ]
h1 = table(New.data$Blood_group)

barplot(h1,col = "blue", main = "Distributions Of Blood  Groups", 
        xlab = "Blood Group", ylab = "Count")

h2 = unique(sort(New.data$Blood_group))

pie(h1, h2, col = rainbow(length(h1)), main = "Distributions Of Blood Groups")
legend("right",h2,cex = 0.70, fill =rainbow(length(h1)) )
              






