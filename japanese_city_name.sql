/****************************************************************
 *         HACKERRANK JAPANESE CITIES NAME CHALLENGE            *
 *                                                              *
 * Problem Statement                                            *
 * Query the names of all the Japanese cities in the CITY table *
 * The COUNTRYCODE for Japan is JPN.                            *                                                                               
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
        CITY.NAME
FROM
        CITY
WHERE
        CITY.COUNTRYCODE = 'JPN'
