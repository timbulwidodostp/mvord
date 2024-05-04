# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Multivariate Ordinal Regression Models Use mvord With (In) R Software
install.packages("readxl")
install.packages("httr")
install.packages("mvord")
library("httr")
library("readxl")
library("mvord")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/mvord/raw/main/mvord/mvord.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
mvord <- readxl::read_excel(temp_file)
# Estimate Multivariate Ordinal Regression Models Use mvord With (In) R Software
mvord<-mvord(formula=MMO2(Y1,Y2)~0+X1+X2,data=mvord)
summary(mvord)
# Multivariate Ordinal Regression Models Use mvord With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished