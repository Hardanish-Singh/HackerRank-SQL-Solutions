/****************************************************************
 *              HACKERRANK TOP EARNERS CHALLENGE                *
 *                                                              *
 * Problem Statement                                            *
 * We define an employee's total earnings to be their monthly   * 
 * SALARY * MONTHS worked, and the maximum total earnings to be *
 * the maximum total earnings for any employee in the Employee  *
 * table. Write a query to find the maximum total earnings for  *
 * all employees as well as the total number of employees who   * 
 * have maximum total earnings. Then print these values as 2    *
 * spaced integers                                              *
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      EMPLOYEE                                * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | employee_id   | Integer      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Name          | String       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Months        | Integer      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Salary        | Integer      |                     *
 *          ______________________________                      * 
 *                                                              *    
 ***************************************************************/

SELECT 
        MAX(SALARY * MONTHS),
        COUNT(*)  
FROM 
        EMPLOYEE 
WHERE 
        SALARY  = 
        (
            SELECT
                    SALARY
            FROM
                    EMPLOYEE
            ORDER BY SALARY * MONTHS DESC LIMIT 1
        )