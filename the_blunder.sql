/****************************************************************
 *              HACKERRANK THE BLUNDER CHALLENGE                *
 *                                                              *
 * Problem Statement                                            *
 * Samantha was tasked with calculating the average monthly     *
 * salaries for all employees in the EMPLOYEES table, but did   *
 * not realize her keyboard's 0 key was broken until after      *
 * completing the calculation. She wants your help finding the  * 
 * difference between her miscalculation (using salaries with   * 
 * any zeroes removed), and the actual average salary.          *
 * Write a query calculating the amount of error                *
 * (i.e.: actual - miscalculated) average monthly salaries), &  *
 * round it up to the next integer.                             *
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      EMPLOYEES                               * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | ID            | Integer      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Name          | String       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Salary        | Integer      |                     *
 *          ______________________________                      * 
 *                                                              *    
 ***************************************************************/

SELECT
        CEIL
        (
            AVG(SALARY) 
                - 
            AVG(CAST(REPLACE(SALARY, '0', '') AS UNSIGNED))
        )
FROM
        EMPLOYEES