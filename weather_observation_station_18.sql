/****************************************************************
 *      HACKERRANK WEATHER OBSERVATION STATION 18 CHALLENGE     *
 *                                                              *
 * Problem Statement                                            *
 * Consider P1(a,b) & P2(c,d) to be two points on a 2D plane.   *
 * 1) a happens to equal the minimum value in Northern Latitude	* 
 * (LAT_N in STATION).						*
 * 2) b happens to equal the minimum value in Western Longitude *
 * (LONG_W in STATION).						*
 * 3) c happens to equal the maximum value in Northern Latitude	*
 * (LAT_N in STATION).						*
 * 4) d happens to equal the maximum value in Western Longitude *
 * (LONG_W in STATION).						*
 *								*								*
 * Query the Manhattan Distance between points P1(a,b) & P2(c,d)*  
 * & round it to a scale of 4 decimal places.			*
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      STATION                                 *
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | ID            | Number       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | City          | Varchar2(21) |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | State         | Varchar2(2)  |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Lat_n         | Number       |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | Long_w        | Number       |                     *
 *          ______________________________                      * 
 *                                                              *    
 ***************************************************************/

SELECT 
		ROUND(ABS(MIN(STATION.LAT_N) - MAX(STATION.LAT_N)) 
			+ 
		ABS(MIN(STATION.LONG_W) - MAX(STATION.LONG_W)), 4) 
FROM 
		STATION;

