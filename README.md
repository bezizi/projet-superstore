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
À compléter après les requêtes d'analyse.

## Statut
Projet en cours. Prochaines étapes : SQL avancé (RFM, top produits), Excel, dashboard Power BI.
