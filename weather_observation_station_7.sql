/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 7 CHALLENGE      *
 *                                                              *
 * Problem Statement                                            *
 * Query the list of CITY names ending with vowels              *
 * (i.e., a, e, i, o, or u) from STATION. Your result cannot    *
 * contain duplicates                                           *
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
        LOWER(STATION.CITY) LIKE ('%a') 
    OR  
        LOWER(STATION.CITY) LIKE ('%e')
    OR
        LOWER(STATION.CITY) LIKE ('%i')
    OR
        LOWER(STATION.CITY) LIKE ('%o')
    OR
        LOWER(STATION.CITY) LIKE ('%u')