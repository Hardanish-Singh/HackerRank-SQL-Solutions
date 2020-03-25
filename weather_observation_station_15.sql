/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 15 CHALLENGE     *
 *                                                              *
 * Problem Statement                                            *
 * Query the Western Longitude (LONG_W) for the largest Northern*
 * Latitude (LAT_N) STATION that is less than 137.2345          *
 * Truncate your answer to 4 decimal places.                    *
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

SELECT 
        ROUND(LONG_W, 4)
FROM (
        SELECT 
                ROUND(SUM(LAT_N),4) AS VALS,
                CITY,
                LONG_W
        FROM 
                STATION 
        GROUP BY CITY, LONG_W
        ORDER BY ROUND(SUM(LAT_N),4) DESC
) AS X
WHERE VALS < 137.2345
LIMIT 1