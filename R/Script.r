source("https://fileadmin.cs.lth.se/cs/Education/EDAA35/R_resources.R") 

setwd("C:/Users/juliu/Desktop/ProjektG28/projekt28")

# function for plotting data
plotresult <- function(file, start = 1) {   
   data <- read.csv(file)
   data <- data[start:nrow(data),]
   plot(data, type = 'l')
}

#Runs Java program
print(getwd())

python_command <- 'python Python/App.py'
java_command_sort <- "java -cp bin sort/App Common/data1.txt Java/javaresult.txt 600"
java_command_pi <- "java -cp bin sort/App Common/data2.txt Java/javaresultpi.txt 5"

python_utfil_sort <- "Python/pyresult.txt"
java_utfil_sort <- "Java/javaresult.txt"

python_utfil_pi <- "Python/pyresultpi.txt"
java_utfil_pi <- "Java/javaresultpi.txt"

java_pdf_pi <- "Java/javaresultpi.pdf"
java_pdf_sort <- "Java/javaresult.pdf"
python_pdf_pi <- "Python/pythonresultpi.pdf"
python_pdf_sort <- "Python/pythonresult.pdf"

mean_arr <- numeric(10);
for (i in 1:10) {
  system(python_command) 
  data <- read.csv(python_utfil_pi, header = FALSE)
  res_arr = data$V2
  #res_arr = res_arr[100:length(res_arr)]
  mean_arr[i]=mean(res_arr)
}
supermean <- mean(mean_arr)
conf <- confidenceInterval(mean_arr, confidenceLevel = 0.95)

plotresult(python_utfil_pi) # plot to screen
pdf(python_pdf_pi)
plotresult(python_utfil_pi) # plot to pdf file
dev.off()

print(supermean)
print(conf)