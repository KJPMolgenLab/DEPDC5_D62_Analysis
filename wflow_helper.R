


## reconstructs and reanalyses all
wflow_build("./analysis/*.Rmd")

wflow_publish(c("./*"))
system("git push -u origin main")


## just the changed parts
wflow_build()
system("git add ./*")
system("git commit -a -m \"full analysis pre manuscript version\"")
system("git push -u origin main")







