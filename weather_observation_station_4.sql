/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 4 CHALLENGE      *
 *                                                              *
 * Problem Statement                                            *
 * Let N be the number of CITY entries in STATION, and let N'   *
 * be the number of distinct CITY names in STATION; query the   *
 * value of N - N' from STATION. In other words, find the       *
 * difference between the total number of CITY entries in the   *
 * table and the number of distinct CITY entries in the table.  *
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
        COUNT(STATION.CITY) 
            -
        COUNT(DISTINCT STATION.CITY)
FROM
        STATION