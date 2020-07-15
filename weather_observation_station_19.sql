/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 19 CHALLENGE     *
 *                                                              *
 * Problem Statement                                            *
 * Consider P1(a,b) & P2(c,d) to be two points on a 2D plane.   *								
 * where (a,b) are the respective minimum and maximum values 	*
 * of Northern Latitude (LAT_N) & (c,d) are the respective      *
 * minimum & maximum values of Western Longitude (LONG_W) in    *
 * STATION                                                      *
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
        ROUND(SQRT(POWER((MIN(lat_n) - MAX(lat_n)),2) 
                + 
        POWER((MIN(long_w) - MAX(long_w)),2)),4)
FROM
        STATION
