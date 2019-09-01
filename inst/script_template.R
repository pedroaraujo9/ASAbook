library(data.table)
library(tidyverse)
library(roxygen2)
library(magrittr)

#dado hepatite
tempos = c(1, 2, 3, 3, 3, 5, 5, 16, 16, 16, 16, 16, 16, 16, 16,
           1, 1, 1, 1, 4, 5, 7, 8, 10, 10, 12, 16, 16, 16)
cens = c(rep(0, 2), rep(1, 2), rep(0, 11),
         rep(1, 3), rep(0, 2), rep(1, 4), rep(0, 5))

grupos = c(rep("controle", 15), rep("esteroide", 14))


hepatite = data.frame(tempos, cens=cens, grupos=grupos)

head(hepatite)
save(hepatite, file="data/hepatite.rda")


#dado leucemia
leucemia = fread("inst/asa_data/leucemia.txt",
             header = F, fill = T) %>% as.data.frame()
leucemia = leucemia[,-5]
head(leucemia)

names(leucemia) = c("leuini", "tempos", "cens", "idade",
                "zpeso", "zest", "pas", "vac","risk", "r6")


head(leucemia)
save(leucemia, file="data/leucemia.rda")


#dado leucemia categorizado
leucemia_cat = fread("inst/asa_data/leucemiacat.txt") %>% as.data.frame()
head(leucemia_cat)
leucemia_cat = leucemia_cat[,-1]

save(leucemia_cat, file="data/leucemia_cat.rda")


#dado de desmame
desmame = fread("inst/asa_data/desmame.txt") %>% as.data.frame()
names(desmame) = c("id", "tempo", "cens", str_c("V", 1:11))
head(desmame)

save(desmame, file='data/desmame.rda')


#dados camun
camun = fread('inst/asa_data/camun.txt') %>% as.data.frame()
names(camun) = str_to_lower(names(camun))

head(camun)

camun %<>%
  mutate(grupo = as.factor(grupo))

save(camun, file="data/camun.rda")

#dados mangueira
mang = fread("inst/asa_data/mang.txt") %>% as.data.frame()

head(mang)


save(mang, file="data/mang.rda")

#dados laringe
laringe = fread("inst/asa_data/laringe.txt") %>% as.data.frame()

head(laringe)

laringe %<>% mutate(estagio = as.factor(estagio))

save(laringe, file="data/laringe.rda")


#dados hormonio de crescimento
hg2 = fread("inst/asa_data/hg2.txt") %>% as.data.frame()

head(hg2)

hg2 %<>% mutate(raca = factor(raca))

save(hg2, file="data/hg2.rda")



#dados raca
cattle = fread("inst/asa_data/cattle.txt") %>% as.data.frame()

head(cattle)


save(cattle, file = "data/cattle.rda")

















