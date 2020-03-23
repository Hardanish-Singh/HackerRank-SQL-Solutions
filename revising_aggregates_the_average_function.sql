/****************************************************************
 *  HACKERRANK REVISING AGGREGATION THE AVG FUNCTION CHALLENGE  *
 *                                                              *
 * Problem Statement                                            *
 * Query the average population of all cities in CITY where     * 
 * District is California.                                      * 
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      CITY                                    * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | ID            | Number       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Name          | Varchar2(17) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | CountryCode   | Varchar2(3)  |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | District      | Varchar2(20) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Population    | Number       |                     *
 *          ______________________________                      * 
 *                                                              *    
 ***************************************************************/

SELECT
        AVG(CITY.POPULATION)
FROM
        CITY
WHERE
        CITY.DISTRICT = 'California'