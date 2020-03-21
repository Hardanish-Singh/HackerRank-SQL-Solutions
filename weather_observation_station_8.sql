/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 8 CHALLENGE      *
 *                                                              *
 * Problem Statement                                            *
 * Query the list of CITY names from STATION which have vowels  *
 * (i.e., a, e, i, o, and u) as both their first and last       *
 * characters. Your result cannot contain duplicates.           *                                         
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
        SUBSTRING(LOWER(STATION.CITY), 1, 1) IN ('a','e','i','o','u') 
    AND
        SUBSTRING(LOWER(STATION.CITY), LENGTH(STATION.CITY), LENGTH(STATION.CITY)) IN ('a','e','i','o','u') 