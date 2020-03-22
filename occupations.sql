/****************************************************************
 *              HACKERRANK THE PADS CHALLENGE                   *
 *                                                              *
 * Problem Statement                                            *
 * Pivot the Occupation column in OCCUPATIONS so that each Name *
 * is sorted alphabetically and displayed underneath its 		*
 * corresponding Occupation. The output column headers should be* 
 * Doctor, Professor, Singer, and Actor, respectively           *
 * Note: Print NULL when there are no more names corresponding 	*
 * to an occupation.											*
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

SET @rowcount_doctor 	=	0;
SET @rowcount_professor =	0;
SET @rowcount_singer	=	0;
SET @rowcount_actor		=	0;

SELECT
		MAX(name_doctor) 	AS  name_doctor,
		MAX(name_professor) AS 	name_professor, 
		MAX(name_singer) 	AS 	name_singer, 
		MAX(name_actor) 	AS 	name_actor
FROM
(
	SELECT 
			CASE 
				WHEN
					occupations.occupation = 'Doctor'
						THEN
							@rowcount_doctor  :=  @rowcount_doctor + 1
				WHEN
					occupations.occupation = 'Professor'
						THEN
							@rowcount_professor := @rowcount_professor + 1 
				WHEN
					occupations.occupation = 'Singer'
						THEN
							@rowcount_singer := @rowcount_singer + 1 
				WHEN
					occupations.occupation = 'Actor'
						THEN
							@rowcount_actor := @rowcount_actor + 1 
			END AS row_count_variable,
			CASE 
				WHEN 
					occupations.occupation = 'Doctor'
						THEN 
							name
			END AS name_doctor,
			CASE 
				WHEN 
					occupations.occupation = 'Professor'
						THEN 
							name
			END AS name_professor,
			CASE 
				WHEN 
					occupations.occupation = 'Singer'
						THEN 
							name
			END AS name_singer,
			CASE 
				WHEN 
					occupations.occupation = 'Actor'
						THEN 
							name
			END AS name_actor
	FROM 
			occupations
	ORDER BY name
) AS x
GROUP BY x.row_count_variable
                    
                    
                    
            