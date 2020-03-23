/****************************************************************
 *              HACKERRANK JAPAN POPULATION CHALLENGE           *
 *                                                              *
 * Problem Statement                                            *
 * Query the sum of the populations for all Japanese cities in  *
 * CITY. The COUNTRYCODE for Japan is JPN.                      *    
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
        SUM(CITY.POPULATION)
FROM
        CITY
WHERE
        CITY.COUNTRYCODE = 'JPN'