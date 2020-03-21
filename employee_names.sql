/****************************************************************
 *              HACKERRANK EMPLOYEE NAME CHALLENGE              *
 *                                                              *
 * Problem Statement                                            *
 * Write a query that prints a list of employee names (i.e. the *
 * name attribute) from the Employee table in alphabetical order*
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      EMPLOYEE                                * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | EMPLOYEE_ID   | INTEGER      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | NAME          | STRING       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | MONTHS        | INTEGER      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | SALARY        | INTEGER      |                     *
 *          ______________________________                      *
 *                                                              *    
 ***************************************************************/

SELECT
        EMPLOYEE.NAME
FROM
        EMPLOYEE
ORDER BY
        EMPLOYEE.NAME