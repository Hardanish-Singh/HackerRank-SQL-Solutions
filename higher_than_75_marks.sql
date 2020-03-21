/****************************************************************
 *      HACKERRANK HIGHER THAN 75 MARKS CHALLENGE               *
 *                                                              *
 * Problem Statement                                            *
 * Query the Name of any student in STUDENTS who scored higher  *
 * than 75 Marks. Order your output by the last three characters*
 * of each name. If two or more students both have names ending *
 * in the same last three characters (i.e.: Bobby, Robby, etc.),* 
 * secondary sort them by ascending ID.                         *                                        
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      STUDENTS                                * 
 *          ______________________________                      *
 *         | Column         | Type        |                     *
 *          ______________________________                      *
 *         | ID            | Integer      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Name          | String       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Marks         | Integer      |                     *
 *          ______________________________                      *
 *                                                              * 
 ***************************************************************/

SELECT
        STUDENTS.NAME
FROM
        STUDENTS
WHERE
        STUDENTS.MARKS > 75
ORDER BY 
        SUBSTRING(STUDENTS.NAME, LENGTH(STUDENTS.NAME)-2, LENGTH(STUDENTS.NAME)), 
        STUDENTS.ID
