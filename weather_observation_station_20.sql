/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 20 CHALLENGE     *
 *                                                              *
 * Problem Statement                                            *
 * A median is defined as a number separating the higher half of*
 * a data set from the lower half. Query the median of the      *	
 * Northern Latitudes (LAT_N) from STATION and round your answer*
 * to 4 decimal places.					        *		
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

SET @rn = 0;
SELECT 
        ROUND(lat_n, 4) AS lat_n 
FROM
(
    SELECT   
        CASE 
            WHEN
                total_no_of_items % 2 != 0 
                    THEN
                        total_no_of_items/2+1
            WHEN
                total_no_of_items % 2 = 0
                    THEN
                        total_no_of_items/2
        END AS vals,
        lat_n,
        row_number
    FROM 
    (
        SELECT
                x1.lat_n,
                @rn  :=  @rn + 1 AS row_number,
                x2.total_no_of_items
        FROM
            (
                SELECT
                        station.lat_n
                FROM
                        station    
            )AS x1,
            (
                SELECT
                        COUNT(station.lat_n) AS total_no_of_items
                FROM station
            )AS x2
        ORDER BY x1.lat_n
    ) AS X
) AS XX WHERE row_number = FLOOR(vals)



