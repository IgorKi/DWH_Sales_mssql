SELECT        a2.Row2 AS Row3, a2.NOMER, a2.SubAgent
FROM            (SELECT        ROW_NUMBER() OVER (PARTITION BY a1.NOMER
                          ORDER BY a1.Row1 DESC) AS Row2, a1.NOMER, a1.SubAgent
FROM            (SELECT        ROW_NUMBER() OVER (PARTITION BY dbo._Reference366._Description
                          ORDER BY dbo._AccumRg27337._Period ASC) AS Row1, dbo._AccumRg27337._LineNo, dbo._AccumRg27337._RecordKind, dbo._AccumRg27337._Fld27343, dbo._AccumRg27337._Fld27344, 
                         dbo._AccumRg27337._Fld1194, dbo._AccumRg27337._Fld27342, dbo._Reference170._Description AS Partner, dbo._Reference169._Description AS SubAgent, dbo._Reference191._Description AS Nomenklatura, 
                         dbo._Reference366._Description AS NOMER, dbo._AccumRg27337._Period AS Per, dbo._AccumRg27337._RecorderTRef
FROM            dbo._AccumRg27337 LEFT OUTER JOIN
                         dbo._Reference366 ON dbo._AccumRg27337._Fld27341RRef = dbo._Reference366._IDRRef LEFT OUTER JOIN
                         dbo._Reference191 ON dbo._AccumRg27337._Fld27340RRef = dbo._Reference191._IDRRef LEFT OUTER JOIN
                         dbo._Reference169 ON dbo._AccumRg27337._Fld27339RRef = dbo._Reference169._IDRRef LEFT OUTER JOIN
                         dbo._Reference170 ON dbo._AccumRg27337._Fld27338RRef = dbo._Reference170._IDRRef) AS a1) AS A2
WHERE        a2.Row2 = 1