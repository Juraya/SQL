// R01
SELECT nomEtudiant, prenomEtudiant
FROM etudiants
WHERE dateEtudiant LIKE '%/82'
ORDER BY nomEtudiant;

// RO2
SELECT p.nomProf, p.prenomProf
FROM profs p, etudiants e, classes c
WHERE p.codeProf = c.codeprofprincipal
AND e.classeetudiant = c.nomclasse
AND e.nometudiant = 'Ouzy'
AND e.prenometudiant = 'Jacques';

// R03
SELECT e2.nometudiant, e2.prenometudiant
FROM etudiants e1 join etudiants e2 on e1.numetudiantparrain = e2.numetudiant
WHERE e1.nometudiant = 'Ouzy'
AND e1.prenometudiant = 'Jacques';

// R04
SELECT COUNT(*)
FROM etudiants
WHERE classeetudiant = 'S1';

// R05
SELECT e.nometudiant, e.prenometudiant
FROM etudiants e
WHERE e.numetudiant NOT IN (SELECT numEtudiant FROM passer)
GROUP BY e.nometudiant, e.prenometudiant;

// R06
SELECT uv.nomuv
FROM passer p, etudiants e, uv
WHERE p.numetudiant = e.numetudiant
AND uv.codeuv = p.codeuv
AND e.nometudiant = 'Zeblouze'
AND e.prenometudiant = 'Agathe'

INTERSECT

SELECT uv.nomuv
FROM passer p, etudiants e, uv
WHERE p.numetudiant = e.numetudiant
AND uv.codeuv = p.codeuv
AND e.nometudiant = 'Némard'
AND e.prenometudiant = 'Jean';

// R07
SELECT COUNT(*) as Nombre_etudiants
FROM etudiants
WHERE classeetudiant = 'S1'

UNION

SELECT COUNT(*) as Nombre_etudiants
FROM etudiants
WHERE classeetudiant = 'S2';

// R08
SELECT e.nometudiant, AVG(note) as Moyenne
FROM passer p, etudiants e
WHERE p.numetudiant = e.numetudiant
GROUP BY e.nometudiant, p.numetudiant
ORDER BY Moyenne desc;

// R09
SELECT e.numetudiant, e.nometudiant, e.prenometudiant
FROM etudiants e, passer p
WHERE e.numetudiant = p.numetudiant
GROUP BY e.numetudiant, e.nometudiant, e.prenometudiant
HAVING COUNT(p.codeuv) <= 2


UNION

SELECT e.numetudiant, e.nometudiant, e.prenometudiant
FROM etudiants e
WHERE e.numetudiant NOT IN (SELECT p.numetudiant FROM passer p)
;

// R09 BIS
SELECT e.numetudiant, e.nometudiant, e.prenometudiant
FROM etudiants e, passer p
WHERE e.numetudiant = p.numetudiant
GROUP BY e.numetudiant, e.nometudiant, e.prenometudiant
HAVING COUNT(p.codeuv) <= 2


UNION

SELECT e.numetudiant, e.nometudiant, e.prenometudiant
FROM etudiants e
WHERE e.numetudiant NOT IN (SELECT p.numetudiant FROM passer p)
;

// R10
SELECT e.nometudiant
FROM passer p, etudiants e
WHERE p.numetudiant = e.numetudiant
GROUP BY e.nometudiant, p.numetudiant
HAVING AVG(note) < 13

INTERSECT

SELECT e.nometudiant
FROM passer p, etudiants e
WHERE p.numetudiant = e.numetudiant
GROUP BY e.nometudiant
HAVING COUNT(codeuv) > 1;

// R11
SELECT p.nomprof, p.prenomprof
FROM profs p, classes cl
WHERE p.codeprof NOT IN (SELECT cl.codeprofprincipal FROM classes cl)
GROUP BY p.nomprof, p.prenomprof

INTERSECT

SELECT p.nomprof, p.prenomprof
FROM profs p, uv
WHERE p.codeprof NOT IN (SELECT uv.codeprofresponsable FROM uv)
GROUP BY p.nomprof, p.prenomprof;

// R12
SELECT p.nomprof, p.prenomprof
FROM profs p, etudiants e
WHERE p.dateprof > (

SELECT * FROM (
SELECT dateetudiant
FROM etudiants
ORDER BY dateetudiant asc )
WHERE ROWNUM = 1
)

GROUP BY p.nomprof, p.prenomprof;

// R13
SELECT e.nometudiant
FROM etudiants e, passer p
WHERE e.numetudiant = p.numetudiant
AND e.numetudiant NOT IN (SELECT p.numetudiant FROM passer p WHERE note < 10)
GROUP BY e.nometudiant;

// R14
SELECT e.nometudiant, e.prenometudiant
FROM etudiants e, passer p
WHERE e.numetudiant = p.numetudiant
AND codeuv = '03'
AND note =

(SELECT MIN(p.note)
FROM uv, passer p
WHERE uv.codeuv = p.codeuv
AND nomuv = 'BD')
;

// R15
SELECT * FROM (
SELECT e.nometudiant, AVG(note) as Moyenne
FROM passer p, etudiants e
WHERE p.numetudiant = e.numetudiant
GROUP BY e.nometudiant, p.numetudiant
ORDER BY Moyenne desc)
WHERE ROWNUM = 1;

// R16
SELECT uv.nomuv
FROM uv, passer p, etudiants e
WHERE uv.codeuv = p.codeuv
AND e.numetudiant = p.numetudiant
AND e.nometudiant = 'Ouzy' AND e.prenometudiant = 'Jacques'
AND uv.nomuv NOT IN (


SELECT uv.nomuv
FROM uv, passer p, etudiants e
WHERE uv.codeuv = p.codeuv
AND e.numetudiant = p.numetudiant
AND e.nometudiant = 'Némard' AND e.prenometudiant = 'Jean')

UNION

SELECT uv.nomuv
FROM uv, passer p, etudiants e
WHERE uv.codeuv = p.codeuv
AND e.numetudiant = p.numetudiant
AND e.nometudiant = 'Némard' AND e.prenometudiant = 'Jean'
AND uv.nomuv NOT IN (


SELECT uv.nomuv
FROM uv, passer p, etudiants e
WHERE uv.codeuv = p.codeuv
AND e.numetudiant = p.numetudiant
AND e.nometudiant = 'Ouzy' AND e.prenometudiant = 'Jacques');

// R17
SELECT e.nomEtudiant, e.prenomEtudiant
FROM Etudiants e
JOIN Passer p ON e.numEtudiant = p.numEtudiant
GROUP BY e.nomEtudiant, e.prenomEtudiant, e.numEtudiant
HAVING MAX(p.note) IN (
	SELECT MAX(p.note)
	FROM Passer p
	GROUP BY p.codeUV);	

// R18
SELECT nomcomposante, nomuv, AVG(note)
FROM uv u1
JOIN passer p1 on u1.codeuv = p1.codeUV
GROUP BY u1.codeuv, nomuv, nomcomposante
HAVING AVG(note) <= (SELECT MIN(AVG(note)) FROM passer p2 JOIN uv u2 on p2.codeuv = u2.codeuv WHERE u2.nomcomposante = u1.nomcomposante GROUP BY p2.codeuv);

// R20
SELECT e.nometudiant, e.prenometudiant
FROM etudiants e, passer p, uv
WHERE e.numetudiant = p.numetudiant
AND uv.codeuv = p.codeuv
AND uv.nomuv = 'IHM'
AND p.note >= 10

INTERSECT

SELECT e.nometudiant, e.prenometudiant
FROM etudiants e, passer p, uv
WHERE e.numetudiant = p.numetudiant
AND uv.codeuv = p.codeuv
AND uv.nomuv = 'BD'
AND p.note >= 10
;

// R21
SELECT p.nomprof, p.prenomprof
FROM profs p
WHERE p.codeprof IN (

SELECT codeprofresponsable FROM uv

MINUS

SELECT codeprofprincipal FROM classes)
;

// R22

// R23
SELECT cl.nomclasse
FROM classes cl, etudiants e
WHERE (SELECT COUNT(numetudiant) FROM etudiants WHERE classeetudiant = cl.nomclasse ) = (

SELECT MAX(Nombre_etudiants) FROM (
SELECT COUNT(*) as Nombre_etudiants
FROM etudiants
WHERE classeetudiant = 'S1'

UNION

SELECT COUNT(*) as Nombre_etudiants
FROM etudiants
WHERE classeetudiant = 'S2') )

GROUP BY nomclasse
;

// R24

// R50
SELECT nometudiant, prenometudiant, dateetudiant
FROM etudiants e
WHERE dateetudiant > ALL (SELECT dateprof FROM profs p);

// R51
SELECT uv.nomuv
FROM uv, passer p
WHERE p.codeuv = uv.codeuv
AND p.note = (SELECT MAX(note) FROM passer);

// R52
WITH

profsResp
AS ( SELECT COUNT(codeprofresponsable) as nbresp FROM uv ),

profTotal
AS ( SELECT COUNT(codeprof) as nbtotal FROM profs )

SELECT ((profsResp.nbresp / profTotal.nbtotal) * 100) as Pourcentage_profs_responsables FROM profsResp, profTotal;

// R53
SELECT e.nometudiant, e.prenometudiant
FROM etudiants e, passer p, uv
WHERE e.numetudiant = p.numetudiant
AND uv.codeuv = p.codeuv
GROUP BY e.nometudiant, e.prenometudiant
HAVING COUNT(e.numetudiant) = (SELECT COUNT( DISTINCT uv.codeuv) FROM uv);

// R54
SELECT nometudiant, prenometudiant
FROM etudiants e
WHERE NOT EXISTS (    SELECT * FROM uv 
                      WHERE nomcomposante = 'Informatique' 
                      AND NOT EXISTS (    SELECT * FROM passer p 
                                          WHERE e.numetudiant = p.numetudiant 
                                          AND uv.codeuv = p.codeuv ) );

// R55
SELECT e.numetudiant, e.nometudiant, e.prenometudiant, LEVEL
FROM etudiants e
START WITH e.numetudiant = 'E5'
CONNECT BY PRIOR e.numetudiantparrain = e.numetudiant;

// R56
SELECT DISTINCT p.nomprof, p.prenomprof
FROM profs p, etudiants e
WHERE p.dateprof > e.dateetudiant;

// R57
SELECT e.numetudiant, COUNT(codeuv)
FROM passer p
RIGHT OUTER JOIN etudiants e ON e.numetudiant = p.numetudiant
GROUP BY e.numetudiant
ORDER BY e.numetudiant;

// R58
SELECT e.numetudiant, AVG(note) as Moyenne
FROM passer p
RIGHT OUTER JOIN etudiants e ON e.numetudiant = p.numetudiant
GROUP BY e.numetudiant
ORDER BY Moyenne DESC;

// R59
SELECT p.nomprof, p.prenomprof, nb.nb_etudiant
FROM profs p
LEFT OUTER JOIN nb_eleves_par_uv nb ON p.codeprof = nb.prof_resp;

// R60
SELECT e.numetudiant, e.nometudiant, e.prenometudiant
FROM passer p
RIGHT OUTER JOIN etudiants e ON e.numetudiant = p.numetudiant 
WHERE p.note IS NULL
ORDER BY e.numetudiant;

// R61
SELECT e.numetudiant, e.nometudiant, e.prenometudiant
FROM etudiants e
WHERE NOT EXISTS (  SELECT codeuv FROM passer p WHERE numetudiant = 'E3'
                    MINUS
                    SELECT codeuv FROM passer p WHERE p.numetudiant = e.numetudiant );
					
// R62
WITH M(nomcomposante, nomuv, moyenne)
AS (
SELECT nomcomposante, nomuv, AVG(note)
FROM uv u1
JOIN passer p1 on u1.codeuv = p1.codeUV
GROUP BY u1.codeuv, nomuv, nomcomposante
)

SELECT m2.nomcomposante, m2.nomuv, m2.moyenne
FROM M m1 FULL OUTER JOIN M m2 on m1.nomcomposante = m2.nomcomposante
WHERE m1.moyenne = ( SELECT MIN(m2.moyenne) FROM M m2 );

// R63
SELECT *
FROM ( SELECT * FROM passer ORDER BY note DESC )
WHERE rownum <= 3;

// R64
WITH R( numetudiant, codeuv, note, rang)
AS ( SELECT numetudiant, codeuv, note, RANK() OVER(ORDER BY note DESC) as Rang FROM passer )

SELECT * FROM R
WHERE rang <= 6;

































