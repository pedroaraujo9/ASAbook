# ASAbook
R package with datasets and functions of *Análise de Sobrevivência Aplicada (2006)* book.

How to install
-------
```r
library(devtools)
install_github("pedroaraujo9/ASAbook")
```

How to use
---------
Just use the function `data` with the dataset name as argument, then the dataset will be avaliable in your workspace.

Example:

```r
#load package
libray(ASAbook) 
#load data
data("leucemia")
#printing the first six observations
head(leucemia) 
```

    

Datasets
-------

- leucemia
- hepatite
- leucemia_cat
- desmame
- camun
- mang
- laringe 
- hg2
- cattle
- breast
- ovario

