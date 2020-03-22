/****************************************************************
 *              HACKERRANK NEW COMPANIES CHALLENGE              *
 *                                                              *
 * Problem Statement                                            *
 * Amber's conglomerate corporation just acquired some new 	*
 * companies. Each of the companies follows this hierarchy: 	*
 *                                                              *
 * 			FOUNDER					*
 *  		           ↓                            	*
 * 			LEAD MANAGER                    	*
 *			   ↓					*
 * 			SENIOR MANAGER				*
 *  			   ↓					*
 * 			MANAGER					*
 *			   ↓					*
 * 			EMPLOYEE				*
 *                                                              *
 * Given the table schemas below, write a query to print the 	*
 * company_code, founder name, total number of lead managers, 	*
 * total number of senior managers, total number of managers, & *
 * total number of employees. Order your output by ascending 	*
 * company_code.						*
 *                                                              *
 * Note:							*
 * The tables may contain duplicate records.			*
 * The company_code is string, so the sorting should not be 	*
 * numeric. For example, if the company_codes are C_1, C_2, & 	*
 * C_10, then the ascending company_codes will be C_1, C_10, & 	*
 * & C_2.							*
 *                                                              *   
 ***************************************************************/

SELECT
		company.company_code,
		company.founder,
		lm_count,
		sm_count,
		m_count,
		e_count
FROM
		company

LEFT JOIN
(
	SELECT  
			COUNT(DISTINCT lead_manager.lead_manager_code) AS lm_count,
			company_code
	FROM
			lead_manager
	GROUP BY 
			company_code
) AS lm ON lm.company_code = company.company_code
    
LEFT JOIN
(
	SELECT
			COUNT(DISTINCT senior_manager.senior_manager_code) AS sm_count,
			company_code
	FROM
			senior_manager
	GROUP BY 
			company_code
) AS sm ON sm.company_code = lm.company_code
    
LEFT JOIN
(
	SELECT
			COUNT(DISTINCT manager.manager_code) AS m_count,
			manager.company_code
	FROM
			manager
	GROUP BY 
			company_code
) AS m ON m.company_code = sm.company_code
    
LEFT JOIN
(
	SELECT
			COUNT(DISTINCT employee.employee_code) AS e_count,
			employee.company_code
	FROM
			employee
	GROUP BY 
			company_code
) AS e ON e.company_code = m.company_code

ORDER BY 
		company_code 
