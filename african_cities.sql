/****************************************************************
 *          HACKERRANK ASIAN POPULATIONS CHALLENGE              *
 *                                                              *
 * Problem Statement                                            *
 * Given the CITY and COUNTRY tables, query the names of all    *
 * cities where the CONTINENT is 'Africa'.                      * 
 *                                                              *   
 * Note: CITY.CountryCode and COUNTRY.Code are matching key     * 
 * columns.                                                     *
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
 *                      COUNTRY                                 * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | Code          | Varchar2(3)  |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Name          | Varchar2(44) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Continent     | Varchar2(13) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Region        | Varchar2(25) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | SurfaceArea   | Number       |                     *
 *          ______________________________                      *  
 *          ______________________________                      *
 *         | IndepYear     | Varchar2(5)  |                     *
 *          ______________________________                      * 
 *          ______________________________                      *
 *         | Population    | Number       |                     *
 *          ______________________________                      * 
 *          ______________________________                      *
 *         | Lifeexpectancy| Varchar2(4)  |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Gnp           | Number       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | GnpOld        | Varchar2(9)  |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | LocalName     | Varchar2(44) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | GovernmentForm| Varchar2(44) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | HeadOfState   | Varchar2(32) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Capital       | Varchar2(4)  |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Code2         | Varchar2(2)  |                     *
 *          ______________________________                      *
 ****************************************************************/

SELECT
        CITY.NAME
FROM
        CITY
LEFT JOIN   COUNTRY ON  COUNTRY.CODE = CITY.COUNTRYCODE

WHERE COUNTRY.CONTINENT = 'Africa' 
