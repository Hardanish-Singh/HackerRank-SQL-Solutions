/****************************************************************
 *      HACKERRANK REVISING THE SELECT QUERY 1 CHALLENGE        *
 *                                                              *
 * Problem Statement                                            *
 * Query all columns for all American cities in CITY with       *
 * populations larger than 100000. The CountryCode for America  *
 * is USA.                                                      *
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
        *
FROM
        CITY
WHERE
        CITY.POPULATION > 100000
  AND 
        CITY.COUNTRYCODE = 'USA'
        