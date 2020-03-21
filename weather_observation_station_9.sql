/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 9 CHALLENGE      *
 *                                                              *
 * Problem Statement                                            *
 * Query the list of CITY names from STATION that do not start  * 
 * with vowels. Your result cannot contain duplicates.          *                                        
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
        DISTINCT(STATION.CITY)
FROM
        STATION
WHERE
        SUBSTRING(LOWER(STATION.CITY), 1, 1) NOT IN ('a','e','i','o','u') 