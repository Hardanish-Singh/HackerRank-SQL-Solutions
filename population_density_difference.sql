/****************************************************************
 *     HACKERRANK POPULATION DENSITY DIFFERENCE CHALLENGE       *
 *                                                              *
 * Problem Statement                                            *
 * Query the difference between the maximum and minimum         *
 * populations in CITY.                                         *   
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      CITY                                    * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | ID            | Number       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Name          | Varchar2(17) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | CountryCode   | Varchar2(3)  |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | District      | Varchar2(20) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Population    | Number       |                     *
 *          ______________________________                      * 
 *                                                              *
 ***************************************************************/

SELECT
        SUBQUERY1.MAX_POPULATION - SUBQUERY2.MIN_POPULATION
FROM
(
    SELECT 
            SUM(CITY.POPULATION) AS MAX_POPULATION
    FROM 
            CITY 
    WHERE NAME = 
    (
        SELECT 
                NAME
        FROM 
                CITY 
        GROUP BY NAME
        ORDER BY SUM(CITY.POPULATION) DESC
        LIMIT 1
    )
) AS SUBQUERY1,
(
    SELECT 
            SUM(CITY.POPULATION) AS MIN_POPULATION
    FROM 
            CITY 
    WHERE NAME = 
    (
        SELECT 
                NAME
        FROM 
                CITY 
        GROUP BY NAME
        ORDER BY SUM(CITY.POPULATION)
        LIMIT 1
    )
)AS SUBQUERY2
