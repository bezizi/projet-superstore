SELECT CASE
           WHEN r >= 3 AND f >= 3 THEN 'Champions'
           WHEN r <= 2 AND f >= 3 THEN 'À risque (bons clients inactifs)'
           WHEN r >= 3 AND f <= 2 THEN 'Récents (à fidéliser)'
           ELSE 'Endormis'
       END AS segment,
       COUNT(*) AS nb_clients,
       ROUND(SUM(montant), 2) AS ca,
       ROUND(100.0 * SUM(montant) / (SELECT SUM(montant) FROM rfm), 1) AS part_ca_pct,
       ROUND(AVG(montant), 2) AS panier_total_moyen
FROM rfm
GROUP BY 1
ORDER BY ca DESC;