library("exams")

## ---- 全体設定は course.yml に書く ----
y <- yaml::read_yaml("course.yml")

## ------ 小テストごとにここを変更 -------

date <- "2019-09-20"
file <- "scan2.pdf"

## -------------- ここまで ---------------

nops_scan(file.path(y$nops, date, file), 
          dir = file.path(y$nops, date))
