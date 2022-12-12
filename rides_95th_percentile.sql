
SELECT distance
FROM taxi

UNION ALL

SELECT distance
FROM uber
ORDER BY distance DESC
LIMIT 1 OFFSET 19055
