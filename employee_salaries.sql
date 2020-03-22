/****************************************************************
 *              HACKERRANK EMPLOYEE SALARIES CHALLENGE          *
 *                                                              *
 * Problem Statement                                            *
 * Write a query that prints a list of employee names (i.e. the *
 * name attribute) for employees in Employee having a salary    *
 * greater than $2000 per month who have been employees for less* 
 * than 10 months. Sort your result by ascending employee_id.   *
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
WHERE
        EMPLOYEE.SALARY >= 2000 
    AND
        EMPLOYEE.MONTHS < 10
ORDER BY
        EMPLOYEE.EMPLOYEE_ID