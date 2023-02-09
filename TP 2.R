##Exercice 1

fichier = read_excel(path = "C:/Users/minej/Desktop/IUT/Programmation R/TP2/pokemon.xlsx", 'pokemon')

nb_l = nrow(fichier)
nb_c = ncol(fichier)

print(nb_l)
print(nb_c)

nom_c = colnames(fichier)
print(nom_c)

type_c = str(fichier)

fichier$generation = as.factor(fichier$generation)
fichier$is_legendary = as.factor(fichier$is_legendary)
fichier$type = as.factor(fichier$type)

nlevels(fichier$generation)
nlevels(fichier$is_legendary)
nlevels(fichier$type)

summary(fichier)

##Exercice 2

mean(fichier$weight_kg, na.rm = TRUE)

median(fichier$weight_kg, na.rm = TRUE)

quantile(fichier$height_m, na.rm = TRUE, probs = seq(0,1,0.10))

var(fichier$height_m, na.rm = TRUE)
sd(fichier$height_m, na.rm = TRUE)

trigen = table(x = fichier$generation)
trilegend = table(x = fichier$is_legendary)
tritype = table(x = fichier$type)

sort(x = trigen, decreasing = TRUE)
sort(x = trilegend, decreasing = TRUE)
sort(x = tritype, decreasing = TRUE)

##Exercice 3


req1 = c('nom', 'is_legendary')
requete_1 <- fichier[,req]
dim(requete_1)

requete_2 <- fichier[1:50,1:2]

requete_3 <- fichier[1:10,]

requete_4 <- fichier[1:nb_c - 1] 

requete_5 <- order(fichier$nom)
req_nom <- fichier[requete_5,]
req_nom[1,2]

requete_6 <- order(fichier$weight_kg, decreasing = TRUE)
req_poids <- fichier[requete_6,]
req_poids[1,2]

requete_7 <- order(fichier$attack, decreasing = TRUE) & order(fichier$speed, decreasing = FALSE)
req_rep <- fichier[requete_7]

##Exercice 4

tri_1 <- fichier[fichier$attack >= 150, c("nom", "attack")]
dim(tri_1)

tri_2 <- fichier[fichier$type == "dragon" | fichier$type == "psychic" | fichier$type == "dark" | fichier$type == "ghost" , c("nom","type")]
dim(tri_2)

order(fichier$attack, decreasing = TRUE)
tri_3 <- fichier[fichier$type == "fire" & fichier$attack >= 100, c("nom", "attack")]
dim(tri_3)

tri_4 <- fichier[fichier$speed >= 100 & fichier$speed < 150, c("nom","speed")]
dim(tri_4)

tri_5 <- fichier[fichier$height_m == NA, c("nom","heigh_m")]
dim(tri_5)

##tri_6 ##

tri_7 <- fichier[fichier$weight_kg >= 250, c("nom","weight_kg")]
dim(tri_7)