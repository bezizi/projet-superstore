# Analyse des ventes d'une chaîne de magasins (Superstore)

## Contexte
Analyse des ventes de 2015 à 2018 pour comprendre quelles catégories
et régions performent, et comment les ventes évoluent dans le temps.

## Outils
SQL (SQLite), Excel, Power BI

## Données
- Dataset : Superstore Sales (Kaggle, fichier train.csv)
- 9 800 lignes, 18 colonnes
- Limite : pas de colonne profit ni remise, l'analyse porte sur le chiffre d'affaires

## Questions métier
1. Quelles catégories et régions génèrent le plus de CA ?
2. Comment évoluent les ventes dans le temps ?
3. Quels clients sont les plus précieux ? (à venir)
4. Quels sont les délais de livraison par mode ? (à venir)

## Méthodologie
1. Import du CSV brut dans SQLite (table `commandes_brut`, jamais modifiée)
2. Nettoyage : conversion des dates jj/mm/aaaa en aaaa-mm-jj
3. Modélisation : tables `commandes`, `clients`, `produits`
   (une ligne par client et par produit, pour ne pas multiplier les ventes à la jointure)
4. Contrôle : total des ventes identique entre la table brute et les tables propres

## Premiers résultats

- **Catégories : la répartition est équilibrée.** Technology est en tête
  avec 827 456 de CA (36,6 %), devant Furniture (32,2 %) et Office Supplies
  (31,2 %). Office Supplies, pourtant la catégorie avec le plus de commandes
  (3 676 contre 1 519 pour Technology), pèse moins en CA : ses produits
  ont un prix unitaire plus faible.
- **Régions : un net avantage pour l'Ouest et l'Est.** L'Ouest (710 220)
  et l'Est (669 519) représentent environ 61 % du CA. Le Sud est la
  région la plus faible (389 151, soit 17 %) avec 509 clients contre
  681 à l'Ouest.
- **Temps : une croissance forte depuis 2016.** Le CA passe de 479 856 en
  2015 à 722 052 en 2018 (+50 %), après un léger recul en 2016 (−4 %).
  Les meilleurs mois sont concentrés en fin d'année (novembre 2018,
  décembre 2017, septembre et décembre 2018) : la saisonnalité est marquée
  entre septembre et décembre.
- **Produits : un produit star en Technology.** Le copieur Canon imageCLASS 2200
  génère à lui seul 61 600 de CA (environ 7 % de sa catégorie), soit 2,7 fois
  plus que le deuxième produit de la catégorie. Les deux autres catégories
  n'ont pas de produit aussi dominant : leurs 3 premiers produits pèsent
  entre 7 % et 9 % du CA de la catégorie. Les ventes reposent donc sur un
  catalogue large, avec une dépendance modérée à quelques produits.
## Statut
Projet en cours. Prochaines étapes : SQL avancé (RFM, top produits), Excel, dashboard Power BI.
