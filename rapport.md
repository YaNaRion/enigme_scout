
------------------------------------------------------------------------

# INF3500 - labo 3 - automne 2023
# Équipe **nom-d-équipe-ici**

Membre #1 : **nom, prénom, matricule**

Membre #2 : **nom, prénom, matricule**

------------------------------------------------------------------------

## Parties 1 et 2

*Faire un choix et garder seulement une option.*
Nous avons / n'avons pas complété les spécifications de la partie 1.

Voici un résumé des modifications que nous avons apportées pour la partie 1 :
- Pour le fichier cadenas_lab_3
    - Nous avons ajouter un 5ème état dans la machine à état
    - Nous avons modifier dans le process qui s'occupe de changer d'état. Nous avons modifier les conditions de changements d'état afin qu'ils correspondent à la 
    séquence voulu et nous avons ajouter une condition qui remet la machine à état à l'état initial s'il s'agit d'une mauvaise séquence.
    - Dans le process qui s'occupe des sorties, nous avons ajouter le nouvel état final ainsi que modifier les sorties de chaque état afin qu'ils correspondent   aux sorties demander. 
- Pour le fichier cadenas_lab_3_tb
    - Nous avons modifier les changement d'état afin qu'ils fassent référence à un vecteur afin de pouvoir les modifier dynamiquement pour la partie 2. La machine a état change d'état uniquement si un des quatres bouton est appuyé. Si celui-ci est le bon, la machine va au prochain état, si celui-ci n'est pas le bon, la machine revient au premier état.

*Faire un choix et garder seulement une option.*
Nous avons / n'avons pas complété les spécifications de la partie 2.

Voici un résumé des modifications que nous avons apportées pour la partie 2 :
 - Nous avons ajouter un nouvel était qui est accessible à partir de l'état ouvert lorsque les deux boutons de gauche et de droite sont appuyés. Une fois dans cet état, on peut modifier la combinason d'ouverture du cadenas" Pour ce faire, il suffit d'enter une combinaison de 5 puis d'appuiyer sur le bouton reset qui va enregistrer cette nouvelle combinaison si et seulement si la combinaison est de 5 ou plus (ceux après le cinquième ne sont pas enregistré, mais les cinq premiers le sont). Si la combinaison est moins que 5, la combinaison d'ouverture ne sera pas enregistrer. Si les deux boutons du haut et du bas sont appuyer, alors la combinaison ne sera en aucun cas modifier. 
- Nous avons aussi ajouter des sorties associées, affichage de "cnod" au nouvel état.

Voici un lien vers notre code modifié (incluant, le cas échéant, le bonus): [cadenas_labo_3.vhd](sources/cadenas_labo_3.vhd).

Voici un lien vers notre code banc d'essai modifié (incluant, le cas échéant, le bonus) : [cadenas_labo_3_tb.vhd](sources/cadenas_labo_3_tb.vhd).

Voici notre nouveau diagramme d'états, (incluant, le cas échéant, le bonus), il y a aussi une .png dans le fichier source si le svg fonctionne mal (il s'agit du même schéma):
![Diagramme d'états final](figures/machine_etats_modifiee.svg)
{ajoutez un fichier 'machine_etats_modifiee.svg' dans le répertoire 'figures'}

**Faire un choix et garder seulement une option.**
Nous utilisons la carte Basys 3.

Voici un lien vers notre fichier de configuration final : [top_labo_3.bit](synthese-implementation/top_labo_3.bit)

## Partie 3: Bonus

*Faire un choix et garder seulement une option.*

Nous n'avons pas complété le bonus. Nous nous concentrons sur notre réussite dans ce cours et dans d'autres.

Nous sommes vraiment en avance dans nos études, dans ce cours et tous les autres, et nous adorons les défis dans ce cours, donc nous avons complété une ou plusieurs parties du bonus.

Voici quelques commentaires sur notre approche pour résoudre le bonus :
- item 1
- item 2
- item 3

