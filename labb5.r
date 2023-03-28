plotresult <- function(file, start = 1) {   
   data <- read.csv(file)
   data <- data[start:nrow(data),]
   plot(data, type = 'l')
}
command <- "java test.testa data2.txt utfil.txt 600"
command2 <- "java -Xint test.testa data1.txt utfil.txt 600"
system(command2)
plotresult("utfil.txt")
pdf("result_JIT.pdf")
plotresult("utfil.txt")
dev.off()
#mean_arr <- numeric(10);
#for (i in 1:10) {
  #system(command) 
  #data <- read.csv("utfil.txt")
  #res_arr = data$tid0
  #res_arr = res_arr[100:length(res_arr)]
  #mean_arr[i]=mean(res_arr)
#}
#supermean <- mean(mean_arr)
#conf <- confidenceInterval(mean_arr, confidenceLevel = 0.95)


