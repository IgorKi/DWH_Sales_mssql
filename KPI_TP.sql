SELECT        DATEADD(year, - 2000, dbo._InfoRg27619._Period) AS PERIOD, dbo._Reference27417._Description AS KPI, dbo._Reference27416._Description AS TP, dbo._Reference48._Description AS Region, 
                         dbo._Reference262._Description AS Kanal, dbo._InfoRg27619._Fld27624 AS Per, dbo._Reference27416._Fld27446 AS Category
FROM            dbo._InfoRg27619 LEFT OUTER JOIN
                         dbo._Reference262 ON dbo._InfoRg27619._Fld27623RRef = dbo._Reference262._IDRRef LEFT OUTER JOIN
                         dbo._Reference48 ON dbo._InfoRg27619._Fld27622RRef = dbo._Reference48._IDRRef LEFT OUTER JOIN
                         dbo._Reference27416 ON dbo._InfoRg27619._Fld27621RRef = dbo._Reference27416._IDRRef LEFT OUTER JOIN
                         dbo._Reference27417 ON dbo._InfoRg27619._Fld27620RRef = dbo._Reference27417._IDRRef