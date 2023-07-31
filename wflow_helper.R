


## reconstructs and reanalyses all
wflow_build("./analysis/*.Rmd")

wflow_publish(c("./analysis/*", "code/*"), all = T)
system("git push -u origin main")


## just the changed parts
wflow_build("./analysis/*.Rmd", republish=T)
system("git add ./*")
system("git commit -a -m \"rerun full analysis, update outputs\"")
system("git push -u origin main")







