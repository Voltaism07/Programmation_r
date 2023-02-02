brutToNet1 <- function(salaire) { #Création de la fonction "BrutToNet1"
  
  if (is.numeric(salaire)== TRUE) { #Test pour savoir si le salaire entré par l'utilisateur est un nombre entier
  salaire_f <- salaire - (salaire * 0.22) 
  return(salaire_f)
  }
  
  else{return('ERROR : type not expected') #Si le salaire n'est pas un nombre entier, renvoyer cette erreur.
  }
}

brutToNet2 <- function(salaire, statut) { #Création de la fonction "BrutToNet2"
  
  taux_p <- 0.075
  
  if (statut == 'non-cadres' | statut == 'cadres') { #Test afin de savoir si le paramètre entré est correct
    
    if (is.numeric(salaire)== TRUE) {
    
      if (statut == 'non-cadres') { #Selon la réponse, le taux prélevé sur les impôts est différent.
        taux <- 0.22
      }
      
      else {
        taux <- 0.25
      }
    salaire_p <- salaire - (salaire * taux_p)
    salaire_f <- salaire_p - (salaire * taux)
    return(salaire_f)
    
    }
    
    else{return('ERROR : type not expected')}
  }else{return('ERROR : contract unknown')} #Si la valeur entrée est incorrecte, renvoyer une des erreurs destinée à ce problème d'utilisation.
}

brutToNet3 <- function(salaire, statut, taux_s = 0.075, tmps  = 1){ #Création de la fonction "BrutToNet3"
    if (taux_s < 0 | taux_s > 1 | tmps < 0 | tmps > 1){ #Test logique des valeurs entrées par l'utilisateur sur le prélèvemet à la source et les heures de travail.
      
  
    if (statut == 'non-cadres' | statut == 'cadres') { #Test logique du statut de l'utilisateur
      
      if (is.numeric(salaire)== TRUE) {
        
        if (statut == 'non-cadres') {
          taux <- 0.22
        }
      
      
      else {
        taux <- 0.25
      }
      
    salaire_p <- salaire - (salaire * taux_s) 
    salaire_f <- salaire_p - (salaire * taux)
    
    print(res <- list((Brut  = salaire), # Création de la liste "res" (résultat), ayant pour but de stocker les résultats et les afficher à la fin du programme.
                (Net = salaire_f)))
    
    }
    
      else{return('ERROR : type not expected')}}
  else{return('ERROR : contract unknown')}}
else{return('ERROR : rate and time must be in range (0,100)')} #En cas d'erreur sur les tests logiques, renvoyer une des erreurs ici présente (l'erreur la plus logique sera renvoyée à l'utilisateur.)

  }

