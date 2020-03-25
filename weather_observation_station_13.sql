/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 2 CHALLENGE      *
 *                                                              *
 * Problem Statement                                            *
 * Query the sum of Northern Latitudes (LAT_N) from STATION     *
 * having values greater than 38.7880 & 137.2345                *
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
        ROUND(SUM(LAT_N),4) 
FROM 
        STATION 
WHERE   
        LAT_N > 38.7880 
    AND 
        LAT_N < 137.2345