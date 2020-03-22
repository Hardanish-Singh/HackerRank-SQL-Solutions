/****************************************************************
 *              HACKERRANK THE PADS CHALLENGE                   *
 *                                                              *
 * Problem Statement                                            *
 * Generate the following two result sets:                      *
 *                                                              *
 * 1) Query an alphabetically ordered list of all names in      *
 * OCCUPATIONS, immediately followed by the first letter of each* 
 * profession as a parenthetical (i.e.: enclosed in parentheses)*
 * For example: AnActorName(A), ADoctorName(D),                 * 
 * AProfessorName(P), & ASingerName(S).                         *                                        
 *                                                              *
 * 2) Query the number of ocurrences of each occupation in      *
 * OCCUPATIONS. Sort the occurrences in ascending order, &      *
 * output them in the following format:                         *
 * There are a total of [occupation_count] [occupation]s.       *
 * Where [occupation_count] is the number of occurrences of an  *
 * occupation in OCCUPATIONS and [occupation] is the lowercase  *
 * occupation name. If more than one Occupation has the same    *
 * [occupation_count], they should be ordered alphabetically.   *                                                             *
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      OCCUPATIONS                             * 
 *          ______________________________                      *
 *         | Column         | Type        |                     *
 *          ______________________________                      *
 *         | Name           | String      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Occupation     | String      |                     *
 *          ______________________________                      *
 *                                                              *
 * In Occupations table described above, the column occupation  *
 * can contain only one of the following values: Doctor,        *
 * Professor, Singer or Actor.                                  *
 *                                                              *
 ***************************************************************/

SELECT 
        value 
FROM 
(
    SELECT 
            CONCAT(name, '(', SUBSTRING(occupation, 1, 1), ')') AS value,
            name AS orderingCriteriaOne,
            NULL AS orderingCriteriaTwo
    FROM 
            occupations

    UNION ALL

    SELECT
            CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.') AS value,
            COUNT(*) AS orderingCriteriaOne,
            occupation AS orderingCriteriaTwo
    FROM 
            occupations
    GROUP BY occupations.occupation
) AS x
ORDER BY 
        x.value, 
        x.orderingCriteriaOne, 
        x.orderingCriteriaTwo