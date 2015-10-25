// R01
SELECT d.referencediplome, COUNT(p.numsalarie)
FROM diplomes d, posseder p
WHERE d.referencediplome = p.referencediplome
GROUP BY d.referencediplome;

// R02
