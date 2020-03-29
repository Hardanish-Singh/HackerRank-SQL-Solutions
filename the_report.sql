/****************************************************************
 *                HACKERRANK THE REPORT CHALLENGE               *
 *                                                              *
 * Problem Statement                                            *
 * You are given two tables: Students and Grades. Students      *
 * contains three columns ID, Name and Marks.                   *	
 *                                                              *
 * Ketty gives Eve a task to generate a report containing three *
 * columns: Name, Grade and Mark. Ketty doesn't want the NAMES  *
 * of those students who received a grade lower than 8. The     * 
 * report must be in descending order by grade -- i.e. higher   *
 * grades are entered first. If there is more than one student  * 
 * with the same grade (8-10) assigned to them, order those     *
 * particular students by their name alphabetically. Finally,   *
 * if the grade is lower than 8, use "NULL" as their name & list*
 * them by their grades in descending order. If there is more   *
 * than one student with the same grade (1-7) assigned to them, *
 * order those particular students by their marks in ascending  *
 * order.                                                       *
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      STUDENTS                                * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
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
*                      GRADES                                   * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | Grade         | Integer      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Min_Mark      | Integer      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Max_Mark      | Integer      |                     *
 *          ______________________________                      *   
 ***************************************************************/

/*
    SOLUTION 1
*/
SELECT 
        student_name, 
        grade, 
        marks 
FROM 
(
    SELECT
            CASE 
                WHEN LENGTH(marks) <= 2 AND LEFT(marks,1) + 1 < 8 
                    THEN 'NULL'
                ELSE students.name
            END AS student_name,
            CASE 
                WHEN LENGTH(marks) <= 2 
                    THEN LEFT(marks,1) + 1
                ELSE 10
            END AS grade,
            students.marks
    FROM
            students
) AS x
ORDER BY x.grade DESC, x.student_name

/*
    SOLUTION 2
*/

SELECT
    CASE
                WHEN 
                            grades < 8 
                                    THEN 'NULL'
                ELSE
                            name
    END AS new_name,
    grades,
    marks
FROM
(
        SELECT 
                        name,
                        marks,
                        (
                            SELECT 
                                            grade 
                            FROM 
                                            grades 
                            WHERE marks BETWEEN min_mark AND max_mark
                        )AS grades
        FROM 
                        students
        ORDER BY grades DESC, name
) AS x




