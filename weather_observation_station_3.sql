/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 3 CHALLENGE      *
 *                                                              *
 * Problem Statement                                            *
 * Query a list of CITY names from STATION with even ID numbers *
 * only. You may print the results in any order, but must       *
 * exclude duplicates from your answer.                         *                                                      
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
        DISTINCT 
                STATION.CITY
FROM
        STATION
WHERE
        STATION.ID % 2 = 0
