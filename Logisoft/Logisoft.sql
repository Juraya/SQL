// R01
SELECT d.referencediplome, COUNT(p.numsalarie)
FROM diplomes d, posseder p
WHERE d.referencediplome = p.referencediplome
GROUP BY d.referencediplome;

// R02
WITH P(nom, nbSalarie)
AS(SELECT p.nomprojet, COUNT(ea.numsalarie) as nb
FROM etreaffecte ea, projets p
WHERE p.codeprojet = ea.codeprojet
GROUP BY p.nomprojet )

SELECT * FROM P
WHERE nbSalarie = (SELECT MAX(nbSalarie) FROM P);

// R03
SELECT DISTINCT p.nomprojet, COUNT(s.salairesalarie) 
  FROM projets p, etreaffecte ea, salaries s
  WHERE s.numsalarie = ea.numsalarie
  AND ea.codeprojet = p.codeprojet
  AND s.salairesalarie >= 2500
  GROUP BY p.nomprojet
  
INTERSECT

SELECT DISTINCT p.nomprojet, COUNT(s.salairesalarie) 
  FROM projets p, etreaffecte ea, salaries s
  WHERE s.numsalarie = ea.numsalarie
  AND ea.codeprojet = p.codeprojet
  GROUP BY p.nomprojet;
  
// R04
SELECT s.nomsalarie, s.prenomsalarie
FROM salaries s, posseder p, diplomes d
WHERE d.nomdiplome = 'Licence pro'
AND s.numsalarie NOT IN (SELECT numsalarie FROM etreaffecte)
GROUP BY s.nomsalarie, s.prenomsalarie;

// R05
SELECT nomsalarie, prenomsalarie
FROM salaries
START WITH nomsalarie = 'Stické' AND prenomsalarie = 'Sophie'
CONNECT BY PRIOR numsalariechef = numsalarie;

// R06
SELECT numsalarie, nb FROM (

  SELECT s.numsalarie, COUNT(p.codeprojet) as nb
  FROM salaries s, etreaffecte ea, clients cl, projets p
  WHERE s.numsalarie = ea.numsalarie
  AND cl.numclient = p.numclient
  AND ea.codeprojet = p.codeprojet
  AND cl.categorieclient = 'Gros'
  GROUP BY s.numsalarie )

WHERE nb = ( SELECT COUNT(codeprojet) FROM projets p, clients cl WHERE cl.numclient = p.numclient AND cl.categorieclient = 'Gros' );

// R07
WITH D(diplome)
AS (  SELECT d.nomdiplome
      FROM salaries s, posseder p, diplomes d
      WHERE s.nomsalarie = 'Bono'
      AND s.numsalarie = p.numsalarie
      AND d.referencediplome = p.referencediplome
      AND s.prenomsalarie = 'Jean' )

SELECT s.numsalarie, s.nomsalarie, s.prenomsalarie
FROM salaries s
WHERE NOT EXISTS (    SELECT * FROM diplomes d
                      WHERE d.nomdiplome IN (SELECT diplome FROM D)
                      AND NOT EXISTS (    SELECT * FROM posseder p 
                                          WHERE s.numsalarie = p.numsalarie
                                          AND d.referencediplome = p.referencediplome
                                           ) );
										   
// R08
// A finir, cela ne renvoie que le maximum absolu
WITH P(nom, categorie, nbprojets)
AS (
SELECT cl.nomclient, cl.categorieclient, COUNT(p.numclient) as nb
FROM clients cl, projets p
WHERE cl.numclient = p.numclient
GROUP BY cl.nomclient, cl.categorieclient
)

SELECT cl.categorieclient, cl.nomclient, P.nbprojets
FROM clients cl, P, projets p
WHERE cl.categorieclient = P.categorie
AND p.numclient = cl.numclient
GROUP BY cl.categorieclient, cl.nomclient, P.nbprojets
HAVING COUNT(p.numclient) = MAX(P.nbprojets);

// R09
SELECT cl.numclient, cl.nomclient, cl.prenomclient, COUNT( p.numclient )
FROM clients cl LEFT JOIN projets p ON p.numclient = cl.numclient AND p.budgetprojet >= 50000
GROUP BY cl.numclient, cl.nomclient, cl.prenomclient
ORDER BY cl.numclient;

// R10
WITH POS(num)
AS (SELECT p.numsalarie FROM posseder p GROUP BY p.numsalarie HAVING COUNT(p.numsalarie) >= 2 )

SELECT p.nomprojet
FROM projets p, etreaffecte ea, salaries s, posseder po
WHERE p.codeprojet = ea.codeprojet
AND s.numsalarie = ea.numsalarie
AND po.numsalarie = s.numsalarie
AND s.numsalarie NOT IN (SELECT num FROM POS)
GROUP BY p.nomprojet;

// R11

// R12

// R13
WITH D(diplome)
AS (  SELECT d.nomdiplome
      FROM salaries s, posseder p, diplomes d
      WHERE s.nomsalarie = 'Bono'
      AND s.numsalarie = p.numsalarie
      AND d.referencediplome = p.referencediplome
      AND s.prenomsalarie = 'Jean' )

SELECT s.numsalarie, s.nomsalarie, s.prenomsalarie
FROM salaries s
WHERE NOT EXISTS (    SELECT * FROM diplomes d
                      WHERE d.nomdiplome IN (SELECT diplome FROM D)
                      AND NOT EXISTS (    SELECT * FROM posseder p 
                                          WHERE s.numsalarie = p.numsalarie
                                          AND d.referencediplome = p.referencediplome
                                           ) )
                                      
MINUS

SELECT s.numsalarie, s.nomsalarie, s.prenomsalarie
FROM salaries s, posseder p, diplomes d
WHERE p.numsalarie = s.numsalarie
AND d.referencediplome = p.referencediplome
AND d.nomdiplome NOT IN (SELECT diplome FROM D);