SELECT        DATEADD(year, - 2000, dbo._AccumRg16676._Period) AS DATE_DOC, dbo._Reference191._Description AS TOVAR_NAME, 
                         CASE WHEN dbo._Reference366._Description LIKE '7%' THEN '996' + dbo._Reference366._Description WHEN dbo._Reference366._Description LIKE '2%' THEN '996' + dbo._Reference366._Description ELSE dbo._Reference366._Description
                          END AS NOMER, dbo._Reference302._Description AS STORE_NAME, CASE WHEN dbo._Reference218._Description IS NULL 
                         THEN 'Розничная продажа' ELSE dbo._Reference218._Description END AS CONTRAGENT_NAME, 
                         CASE WHEN dbo._InfoRg16648._Fld16649 LIKE '2%' THEN '8999650' + dbo._InfoRg16648._Fld16649 ELSE dbo._InfoRg16648._Fld16649 END AS SERIAL_NUM, CASE WHEN dbo._Document509._Number IS NULL
                          THEN dbo._Document470._Number ELSE dbo._Document509._Number END AS DOCNO, dbo._AccumRg16676._Fld16697 AS PRICE, CAST(dbo._Document509._Fld8135 AS varchar(2000)) AS COMMENT, 
                         dbo._Reference107._Description AS DOGOVOR, CASE WHEN dbo._Reference169._Description IS NULL THEN SubAg.SubAgent ELSE dbo._Reference169._Description END AS SUBAGENT, 
                         CASE WHEN dbo._Reference218._Description IS NULL THEN 'Касса Монобренд' ELSE _Reference262._Description END AS KANAL, '' AS OFFICE, dbo._Reference218._Description AS REGION_OTGRUZKI, 
                         dbo._Reference170._Fld22020 AS INN, CONVERT(Varchar(1), dbo._Reference262._Fld1194) + CONVERT(Varchar(1), dbo._Reference48._Fld1194) + dbo._Reference170._Fld27395 AS ID_KANAL, 
                         dbo._Reference170._Fld27395 AS ID_KONTRAGENTA, dbo._Reference107._Fld1194 AS KOD_DOGOVORA, dbo._Reference48._Description AS REGION, CASE WHEN CONVERT(int, dbo._Reference107._Marked) 
                         = 1 AND dbo._Reference107._Fld20771 IS NULL THEN '2016-12-31' WHEN dbo._Reference107._Fld20771 IS NULL OR
                         dbo._Reference107._Fld20771 = '2001-01-01' THEN NULL ELSE DATEADD(year, - 2000, dbo._Reference107._Fld20771) END AS DATA_OKON_DOGOVOR, CASE WHEN dbo._Reference170._Description IS NULL 
                         AND dbo._Reference218._Description IS NULL THEN 'Монобренд' ELSE _Reference262_1._Description END AS GRUPPA_KANALA, dbo._Reference262._Fld27402 AS TRAFFIC_RECONNECT, 
                         dbo._Reference262._Fld27403 AS RANGE_MAX, CASE WHEN dbo._Reference218._Description IS NULL THEN 30 ELSE _Reference262._Fld27404 END AS TRAFFIC_inc_employee_2, 
                         CASE WHEN dbo._Reference218._Description IS NULL THEN 30 ELSE _Reference262._Fld27406 END AS TRAFFIC_incr_employee_4, dbo._Reference262._Fld27407 AS RANGE_MAX_incr_employee, 
                         dbo._Reference107._Fld27593 AS PERIOD_OF_OBSERVATION, dbo._Reference107._Fld27594 AS NOTE, dbo._Reference107._Fld27595 AS CNT_BE, dbo._Reference107._Fld27596 AS CNT_END, 
                         dbo._Reference107._Fld27597 AS SUM_BEG, dbo._Reference107._Fld27598 AS SUM_END, dbo._Reference107._Fld27599 AS MAX_PAYMENTS, dbo._Reference262._Fld27408 AS TRAFFIC_inc_partner_2, 
                         dbo._Reference262._Fld27409 AS TRAFFIC_inc_partner_3, dbo._Reference262._Fld27411 AS RANGE_MAX_incr_partner, dbo._Reference262._Fld27405 AS TRAFFIC_incr_NORM_employee, 
                         dbo._Reference262._Fld27410 AS TRAFFIC_incr_NORM_partner, dbo._Reference262._Fld27600 AS TRAFFIC_inc_employee_1, dbo._Reference262._Fld27601 AS TRAFFIC_inc_employee_3, 
                         dbo._Reference262._Fld27602 AS TRAFFIC_inc_employee_5, dbo._Reference262._Fld27603 AS TRAFFIC_inc_partner_1
FROM            dbo._AccumRg16676 LEFT OUTER JOIN
                         dbo._Document470 ON dbo._AccumRg16676._RecorderRRef = dbo._Document470._IDRRef LEFT OUTER JOIN
                         dbo._Reference107 LEFT OUTER JOIN
                         dbo._Reference262 LEFT OUTER JOIN
                         dbo._Reference262 AS _Reference262_1 ON dbo._Reference262._ParentIDRRef = _Reference262_1._IDRRef ON dbo._Reference107._Fld27391RRef = dbo._Reference262._IDRRef RIGHT OUTER JOIN
                         dbo._Reference169 RIGHT OUTER JOIN
                         dbo._Reference170 RIGHT OUTER JOIN
                         dbo._Document509 ON dbo._Reference170._IDRRef = dbo._Document509._Fld8123RRef ON dbo._Reference169._IDRRef = dbo._Document509._Fld8160RRef ON 
                         dbo._Reference107._IDRRef = dbo._Document509._Fld8145RRef ON dbo._AccumRg16676._RecorderRRef = dbo._Document509._IDRRef LEFT OUTER JOIN
                         dbo._InfoRg16648 RIGHT OUTER JOIN
                         dbo._Reference302 LEFT OUTER JOIN
                         dbo._Reference48 ON dbo._Reference302._Fld25005RRef = dbo._Reference48._IDRRef RIGHT OUTER JOIN
                         dbo._Reference161 ON dbo._Reference302._IDRRef = dbo._Reference161._Fld21863_RRRef LEFT OUTER JOIN
                         dbo._Reference366 ON dbo._Reference161._Fld21861RRef = dbo._Reference366._IDRRef LEFT OUTER JOIN
                         dbo._Reference191 ON dbo._Reference161._Fld21860RRef = dbo._Reference191._IDRRef ON dbo._InfoRg16648._Fld16650RRef = dbo._Reference191._IDRRef AND 
                         dbo._InfoRg16648._Fld16651RRef = dbo._Reference366._IDRRef ON dbo._AccumRg16676._Fld16677RRef = dbo._Reference161._IDRRef LEFT OUTER JOIN
                         dbo._Reference218 RIGHT OUTER JOIN
                         dbo._Reference163 ON dbo._Reference218._IDRRef = dbo._Reference163._Fld21882RRef ON dbo._AccumRg16676._Fld16679RRef = dbo._Reference163._IDRRef LEFT JOIN
                             (SELECT        a2.Row2 AS Row3, a2.NOMER, a2.SubAgent
                               FROM            (SELECT        ROW_NUMBER() OVER (PARTITION BY a1.NOMER
                                                         ORDER BY a1.Row1 DESC) AS Row2, a1.NOMER, a1.SubAgent
                               FROM            (SELECT        ROW_NUMBER() OVER (PARTITION BY dbo._Reference366._Description
                                                         ORDER BY dbo._AccumRg27337._Period ASC) AS Row1, dbo._AccumRg27337._LineNo, dbo._AccumRg27337._RecordKind, dbo._AccumRg27337._Fld27343, dbo._AccumRg27337._Fld27344, 
                                                         dbo._AccumRg27337._Fld1194, dbo._AccumRg27337._Fld27342, dbo._Reference170._Description AS Partner, dbo._Reference169._Description AS SubAgent, 
                                                         dbo._Reference191._Description AS Nomenklatura, dbo._Reference366._Description AS NOMER, dbo._AccumRg27337._Period AS Per, dbo._AccumRg27337._RecorderTRef
                               FROM            dbo._AccumRg27337 LEFT OUTER JOIN
                                                         dbo._Reference366 ON dbo._AccumRg27337._Fld27341RRef = dbo._Reference366._IDRRef LEFT OUTER JOIN
                                                         dbo._Reference191 ON dbo._AccumRg27337._Fld27340RRef = dbo._Reference191._IDRRef LEFT OUTER JOIN
                                                         dbo._Reference169 ON dbo._AccumRg27337._Fld27339RRef = dbo._Reference169._IDRRef LEFT OUTER JOIN
                                                         dbo._Reference170 ON dbo._AccumRg27337._Fld27338RRef = dbo._Reference170._IDRRef) AS a1) AS A2
WHERE        a2.Row2 = 1) AS SubAg ON SubAg.NOMER = dbo._Reference366._Description
WHERE        (dbo._AccumRg16676._Fld16696 > 0)