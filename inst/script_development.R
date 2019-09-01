devtools::install()
devtools::document()
devtools::load_all()
devtools::build()

library(ASAbook)

ASAbook::leucemia %>% head()
ASAbook::hepatite %>% head()
ASAbook::leucemia_cat %>% head()
ASAbook::desmame %>% head()
ASAbook::camun %>% head()
ASAbook::mang %>% head()

data("leucemia")
data("hepatite")
data("leucemia_cat")
data("desmame")
data("camun")
data("mang")

?leucemia
?hepatite
?leucemia_cat
?desmame
?camun
?mang
