/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 2 CHALLENGE      *
 *                                                              *
 * Problem Statement                                            *
 * Query the following two values from the STATION table:       *
 * The sum of all values in LAT_N rounded to 2 decimal places.  *
 * The sum of all values in LONG_W rounded to 2 decimal places. *
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
        ROUND(SUM(STATION.LAT_N),2), 
        ROUND(SUM(STATION.LONG_W),2) 
FROM 
        STATION