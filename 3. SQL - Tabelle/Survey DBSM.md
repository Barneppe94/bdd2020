**1. Microsoft SQL Server**

- Prodotto da Microsoft
- Data prima versione 24 aprile 1989
- Licenza di tipo proprietaria

| Tipi numerici disponibili | Intervello di valori                                              | Storage                |
| ------------------------- |:----------------------------------------------------------------: |:---------------------: |
| numeric                   | Min: -10³⁸+1                      Max: 10³⁸-1                     | Da 5 a 17 bytes        |
| decimal                   | Min: -10³⁸+1                      Max: 10³⁸-1                     | Da 5 a 17 bytes        |
| bigint                    | Min: -2^63                        Max: 2^63-1                     | 8 bytes                |
| int                       | Min: -2^31                        Max: 2^31-1                     | 4 bytes                |
| smallint                  | Min: -2^15                        Max: 2^15-1                     | 2 bytes                |
| tinyint                   | Min: -128                         Max: 127                        | 1 byte                 |
| bit                       | False: 0                          True: 1                         | Da 1 a 2 bytes         |
| money                     | Min: -922,337,203,685,477.5808    Max: 922,337,203,685,477.5807   | 8 bytes                |
| smallmoney                | Min: -214,748.3648                Max: 214,748.3647               | 4 bytes                |
| float                     | Min: da -1.79E+308 a -2.23E-308, 0 Max: da 2.23E-308 a 1.79E+308  | Dipende dalla mantissa |
| real                      | Min: da -3.40E+38 a -1.18E-38, 0   Max: da 1.18E-38 a 3.40E+38    | 4 bytes                |

**2. MariaDB**

- Prodotto da Monty Program Ab
- Data prima versione 29 ottobre 2009
- Licenza di tipo GNU GPL v2

| Tipi numerici disponibili       | Intervello di valori                                              |
| ------------------------------- |:----------------------------------------------------------------: |
| decimal, numeric, fixed         | Min: -10³⁸+1                      Max: 10³⁸-1                     |
| bigint                          | Min: -9,223,372,036,854,775,808   Max: 9,223,372,036,854,775,807  |
| int                             | Min: -2,147,483,648               Max: 2,147,483,647              |
| mediumint                       | Min: -8,388,608                   Max: 8,388,607                  |
| smallint                        | Min: -32,768                      Max: 32,767                     |
| tinyint                         | Min: -128                         Max: 127                        |
| bit                             | Min: 1                            Max: 64                         |
| bool, boolean (tinyint(1))      | True: 1                           False: 0                        |
| double, double precision, real  | Min: da -1.79E+308 a -2.23E-308, 0 Max: da 2.23E-308 a 1.79E+308  |
| float                           | Min: da -3.40E+38 a -1.18E-38, 0 Max: da 1.18E-38 a 3.40E+38      |

**3. IBM DB2**

- Prodotto da Oracle
- Data prima versione 1983
- Licenza di tipo proprietaria

| Tipi numerici disponibili       | Intervello di valori                                              |
| ------------------------------- |:----------------------------------------------------------------: |
| decimal, numeric                | Min: 1-10³¹                       Max: 10³¹-1                     |
| bigint                          | Min: -9,223,372,036,854,775,808   Max: 9,223,372,036,854,775,807  |
| int                             | Min: -2,147,483,648               Max: 2,147,483,647              |
| smallint                        | Min: -32,768                      Max: 32,767                     |
| real, double                    | Min: -7.2E+75                     Max: -7.2E+75                   |
