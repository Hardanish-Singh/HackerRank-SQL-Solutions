/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 1 CHALLENGE      *
 *                                                              *
 * Problem Statement                                            *
 * Query a list of CITY and STATE from the STATION table.       *                                                      
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
        STATION.CITY,
        STATION.STATE
FROM
        STATION
