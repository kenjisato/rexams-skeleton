library("exams")

## ---- 全体設定は course.yml に書く ----
y <- yaml::read_yaml("course.yml")

## ------ 小テストごとにここを変更 -------

date <- "2019-09-20"

## -------------- ここまで ---------------

fdir <- file.path("nops", date)

ev <- nops_eval(
  register = y$students_list,
  solutions = file.path(fdir, "metainfo.rds"),
  scans = Sys.glob(file.path(fdir, "nops_scan_*.zip")),
  dir = fdir,
  eval = exams_eval(partial = FALSE, negative = FALSE),
  interactive = FALSE
)

