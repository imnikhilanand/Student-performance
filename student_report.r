mul<-function(a,b){
  sum=0
  for(i in 1:21)
  {
    sum=sum+a[i]*b[i]
  }
  return(sum)
  
}

data <- read.csv("bb.csv") 
head(data)
plot(data)
summary(data)
newdata=as.data.frame(data)
datamod <-  lm(G3 ~ age	+Medu+	Fedu+	traveltime+	studytime+	failures	+schoolsup+	famsup+	paid	+activities	+nursery	+higher	+internet+	romantic+	famrel	+freetime+	goout	+Dalc+	Walc	+health	+absences	,data = na.omit(newdata))
summary(datamod)
datamod$coefficients


barplot(data$traveltime,data$G3,xlab = "Travel Time(Hrs.)",ylab = "Marks(Out of 20)")
barplot(data$G3,data$studytime,xlab = "Study Time(Hrs.)",ylab = "Marks(Out of 20)")
barplot(data$absences,data$G3,xlab = "Marks(Out of 20)",ylab = "Absences(Out of 93)")
barplot(data$G3,data$health,xlab = "Health(Ranked out of 5)",ylab = "Marks(Out of 20)")


vec<-c(1)
print("Enter Age")
a<-scan()
vec=append(vec,a)
print("Enter Mother's ecucation numeric: 0 - none, 1 - primary education (4th grade), 2 5th to 9th grade, 3 secondary education or 4  higher education")
a<-scan()
vec=append(vec,a)
print("father's education (numeric: 0 - none, 1 - primary education (4th grade), 2 5th to 9th grade, 3 secondary education or 4  higher education) ")
a<-scan()
vec=append(vec,a)
append(vec,a)
print("home to school travel time (numeric: 1 - <15 min., 2 - 15 to 30 min., 3 - 30 min. to 1 hour, or 4 - >1 hour)")
a<-scan()
vec=append(vec,a)
print("number of past class failures (numeric: n if 1<=n<3, else 4)")
a<-scan()
vec=append(vec,a)
print("extra educational support (binary: yes '1' or no '0')")
a<-scan()
vec=append(vec,a)
print("family educational support (binary: yes or no) ")
a<-scan()
vec=append(vec,a)
print(" extra paid classes within the course subject (Math or Portuguese) (binary: yes or no) ")
a<-scan()
vec=append(vec,a)
print(" extra-curricular activities (binary: yes or no) ")
a<-scan()
vec=append(vec,a)
print("attended nursery school (binary: yes or no) ")
a<-scan()
vec=append(vec,a)
print("wants to take higher education (binary: yes or no) ")
a<-scan()
vec=append(vec,a)
print("Internet access at home (binary: yes or no) ")
a<-scan()
vec=append(vec,a)
print(" with a romantic relationship (binary: yes or no) ")
a<-scan()
vec=append(vec,a)
print("quality of family relationships (numeric: from 1 - very bad to 5 - excellent) ")
a<-scan()
vec=append(vec,a)
print(" free time after school (numeric: from 1 - very low to 5 - very high) ")
a<-scan()
vec=append(vec,a)
print("going out with friends (numeric: from 1 - very low to 5 - very high) ")
a<-scan()
vec=append(vec,a)
print("workday alcohol consumption (numeric: from 1 - very low to 5 - very high) ")
a<-scan()
vec=append(vec,a)
print(" weekend alcohol consumption (numeric: from 1 - very low to 5 - very high) ")
a<-scan()
vec=append(vec,a)
print("current health status (numeric: from 1 - very bad to 5 - very good) ")
a<-scan()
vec=append(vec,a)
print("number of school absences (numeric: from 0 to 93) ")
a<-scan()
vec=append(vec,a)
vec=c(1,16,1,3,0,1,0,1,1,1,0,5,5,0,3,3,3,5,5,3,0)

datamod$coefficients
ans=mul(datamod$coefficients,nvec)

print("Your expected grade : ")
print(ans)


cat("\014")
