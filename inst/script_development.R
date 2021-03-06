devtools::install()
devtools::document()
devtools::load_all()
devtools::build()

library(ASAbook)

library(magrittr)

ASAbook::leucemia %>% head()
ASAbook::hepatite %>% head()
ASAbook::leucemia_cat %>% head()
ASAbook::desmame %>% head()
ASAbook::camun %>% head()
ASAbook::mang %>% head()
ASAbook::laringe %>% head()
ASAbook::hg2 %>% head()
ASAbook::cattle %>% head()
ASAbook::breast %>% head()
ASAbook::ovario %>% head()

data("leucemia")
data("hepatite")
data("leucemia_cat")
data("desmame")
data("camun")
data("mang")
data("laringe")
data("hg2")
data("cattle")
data("breast")
data("ovario")

?leucemia
?hepatite
?leucemia_cat
?desmame
?camun
?mang
?laringe
?hg2
?cattle
?breast
?ovario
