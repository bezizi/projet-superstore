SELECT mode_livraison,
       COUNT(*) AS nb_lignes,
       ROUND(AVG(julianday(date_livraison) - julianday(date_commande)), 1) AS delai_moyen_jours
FROM commandes
GROUP BY mode_livraison
ORDER BY delai_moyen_jours;