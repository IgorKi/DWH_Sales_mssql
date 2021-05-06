SELECT        DATEADD(year, - 2000, dbo._InfoRg27604._Period) AS PERIOD, dbo._Reference27417._Description AS KPI, dbo._Reference363._Description AS MANAGER, 
                         CASE WHEN CAST(dbo._InfoRg27604._Fld27607_RTRef AS INT) = 170 THEN dbo._Reference170._Description WHEN CAST(dbo._InfoRg27604._Fld27607_RTRef AS INT) 
                         = 27547 THEN dbo._Reference27547._Description ELSE 'NULL' END AS CONTRAGENT, dbo._Reference107._Description AS DOGOVOR, CASE WHEN CAST(dbo._InfoRg27604._Fld27609_RTRef AS INT) 
                         = 148 THEN dbo._Reference148._Description WHEN CAST(dbo._InfoRg27604._Fld27609_RTRef AS INT) = 169 THEN dbo._Reference169._Description WHEN CAST(dbo._InfoRg27604._Fld27609_RTRef AS INT) 
                         = 363 THEN _Reference363_1._Description ELSE 'NULL' END AS SUBAGENT, dbo._Reference48._Description AS REGION, dbo._Reference262._Description AS KANAL, dbo._InfoRg27604._Fld27613 AS PLN_ZN, 
                         dbo._InfoRg27604._Fld27614 AS VES, dbo._InfoRg27604._Fld27615 AS FACT, dbo._InfoRg27604._Fld27616 AS ITOG, dbo._InfoRg27604._Fld27612 AS BILL_USER, dbo._InfoRg27604._Fld27617 AS FIX_MIN, 
                         dbo._InfoRg27604._Fld27618 AS FIX_MAX
FROM            dbo._InfoRg27604 LEFT OUTER JOIN
                         dbo._Reference262 ON dbo._InfoRg27604._Fld27611RRef = dbo._Reference262._IDRRef LEFT OUTER JOIN
                         dbo._Reference48 ON dbo._InfoRg27604._Fld27610RRef = dbo._Reference48._IDRRef LEFT OUTER JOIN
                         dbo._Reference363 AS _Reference363_1 ON dbo._InfoRg27604._Fld27609_RRRef = _Reference363_1._IDRRef LEFT OUTER JOIN
                         dbo._Reference169 ON dbo._InfoRg27604._Fld27609_RRRef = dbo._Reference169._IDRRef LEFT OUTER JOIN
                         dbo._Reference148 ON dbo._InfoRg27604._Fld27609_RRRef = dbo._Reference148._IDRRef LEFT OUTER JOIN
                         dbo._Reference27547 ON dbo._InfoRg27604._Fld27607_RRRef = dbo._Reference27547._IDRRef LEFT OUTER JOIN
                         dbo._Reference107 ON dbo._InfoRg27604._Fld27608RRef = dbo._Reference107._IDRRef LEFT OUTER JOIN
                         dbo._Reference170 ON dbo._InfoRg27604._Fld27607_RRRef = dbo._Reference170._IDRRef LEFT OUTER JOIN
                         dbo._Reference363 ON dbo._InfoRg27604._Fld27606RRef = dbo._Reference363._IDRRef LEFT OUTER JOIN
                         dbo._Reference27417 ON dbo._InfoRg27604._Fld27605RRef = dbo._Reference27417._IDRRef