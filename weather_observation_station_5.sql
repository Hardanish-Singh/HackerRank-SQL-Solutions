/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 5 CHALLENGE      *
 *                                                              *
 * Problem Statement                                            *
 * Query the two cities in STATION with the shortest & longest  *
 * CITY names, as well as their respective lengths (i.e.        *
 * number of characters in the name). If there is more than one *
 * smallest or largest city, choose the one that comes first    *
 * when ordered alphabetically.                                 *
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      STATION                                 * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | ID            | Number       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | City          | Varchar2(21) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | State         | Varchar2(2)  |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Lat_n         | Number       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Long_w        | Number       |                     *
 *          ______________________________                      * 
 *                                                              * 
 ***************************************************************/

/*****************************************************************
*  QUERY 1 SELECT CITY WITH MINIMUM LENGTH SORTED ALPHABETICALLY *
*****************************************************************/
(
    SELECT
            STATION.CITY,
            LENGTH(STATION.CITY)
    FROM
            STATION
    WHERE 
            LENGTH(STATION.CITY) = 
            (
                SELECT 
                        MIN(LENGTH(STATION.CITY)) 
                FROM 
                        STATION
            )
    ORDER BY
            STATION.CITY ASC
    LIMIT 1
)

UNION

/*****************************************************************
*  QUERY 2 SELECT CITY WITH MAXIMUM LENGTH SORTED ALPHABETICALLY *
*****************************************************************/

(
    SELECT
            STATION.CITY,
            LENGTH(STATION.CITY)
    FROM
            STATION
    WHERE 
            LENGTH(STATION.CITY) = 
            (
                SELECT 
                        MAX(LENGTH(STATION.CITY)) 
                FROM 
                        STATION
            )
    ORDER BY
            STATION.CITY ASC
    LIMIT 1
)