/****************************************************************
 *           HACKERRANK TYPES OF TRIANGLE CHALLENGE             *
 *                                                              *
 * Problem Statement                                            *
 * Write a query identifying the type of each record in the     * 
 * TRIANGLES table using its three side lengths. Output one of  *
 * the following statements for each record in the table:       *
 *                                                              *
 * Equilateral: It's a triangle with  sides of equal length.    *
 * Isosceles: It's a triangle with  sides of equal length.      *
 * Scalene: It's a triangle with  sides of differing lengths.   *
 * Not A Triangle: The given values of A, B, & C don't form a   *
 * triangle.                                                    *
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      TRIANGLES                               * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | A             | Number       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | B             | Number       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | C             | Number       |                     *
 *          ______________________________                      * 
 *                                                              *   
 ***************************************************************/

SELECT
        CASE 
            WHEN
                (   A + B <= C 
                        OR 
                    A + C <= B 
                        OR 
                    B + C <= A
                ) 
            THEN 
                "Not A Triangle"
         ELSE
                CASE 
                        WHEN
                                TRIANGLES.A = TRIANGLES.B 
                            AND
                                TRIANGLES.B = TRIANGLES.C
                            AND
                                TRIANGLES.C = TRIANGLES.A
                                THEN
                                    'Equilateral'
                        WHEN
                                    (
                                        TRIANGLES.A = TRIANGLES.B 
                                            AND 
                                        TRIANGLES.B != TRIANGLES.C 
                                            AND 
                                        TRIANGLES.C != TRIANGLES.A
                                    )
                                OR
                                    (
                                        TRIANGLES.A != TRIANGLES.B 
                                            AND 
                                        TRIANGLES.B = TRIANGLES.C 
                                            AND 
                                        TRIANGLES.C != TRIANGLES.A
                                    )
                                OR
                                    (
                                        TRIANGLES.A != TRIANGLES.B 
                                            AND 
                                        TRIANGLES.B != TRIANGLES.C 
                                            AND 
                                        TRIANGLES.C = TRIANGLES.A
                                    )
                                THEN
                                    'Isosceles'
                        WHEN
                                TRIANGLES.A != TRIANGLES.B 
                            AND
                                TRIANGLES.B != TRIANGLES.C
                            AND
                                TRIANGLES.C != TRIANGLES.A
                                THEN
                                    'Scalene'
                END 
        END AS triangle_name
FROM
       TRIANGLES       
