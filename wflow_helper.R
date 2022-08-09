


## reconstructs and reanalyses all
wflow_publish(c("code/*","analysis/*","docs/*"))
system("git push -u origin main")

## just the changed parts
wflow_build()
system("git add data/* code/* analysis/* docs/*")
system("git commit -a -m \"automated commit\"")
system("git push -u origin main")




