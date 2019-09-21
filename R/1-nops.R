library("exams")

## ---- 全体設定は course.yml に書く ----
y <- yaml::read_yaml("course.yml")

## ------ 小テストごとにここを変更 -------

set.seed(111)
title <- "小テスト 01"
date <- "2019-09-20"
problems <- dir(y$problems_dir, pattern = ".")

n = 1L

## -------------- ここまで ---------------

if (!dir.exists(y$nops_dir)) dir.create(y$nops_dir)
targetdir <- file.path(y$nops_dir, date)
  
exams2nops(problems,
           n = n,
           language = y$language,
           institution = y$course,
           title = title,
           dir = targetdir, 
           date = date,
           reglength = as.integer(y$reglength),
           logo = file.path(getwd(), y$logo))

