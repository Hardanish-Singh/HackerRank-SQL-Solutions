/****************************************************************
 *           HACKERRANK BINARY TREE NODE CHALLENGE              *
 *                                                              *
 * Problem Statement                                            *
 * You are given a table, BST, containing two columns: N and P, * 
 * where N represents the value of a node in Binary Tree, and P *
 * is the parent of N.                                          * 
 *                                                              *
 * Write a query to find the node type of Binary Tree ordered by* 
 * the value of the node. Output one of the following for each  *
 * node                                                         *
 *                                                              *
 * Root: If node is root node.                                  *   
 * Leaf: If node is leaf node.                                  *
 * Inner: If node is neither root nor leaf node.                *
 *                                                              *
 * Input: Below is the Data Structure of the table              *
 *                                                              *
 *                      BST                                     * 
 *          ______________________________                      *
 *         | Field         | Type         |                     *
 *          ______________________________                      *
 *         | N             | Integer      |                     *
 *          ______________________________                      *
 *          ______________________________                      *
 *         | P             | Integer      |                     *
 *          ______________________________                      *
 *                                                              *    
 ***************************************************************/

/*
    QUERY 1 TO FIND THE ROOT NODES
*/
SELECT
        bnt1.N,
        'Root'
FROM 
        bst bnt1
WHERE 
        bnt1.P IS NULL

UNION ALL 

/*
    QUERY 2 TO FIND THE INNER NODES
*/

SELECT
        bnt1.N,
        'Inner'
FROM 
        bst bnt1
JOIN    bst bnt2   ON  bnt2.P = bnt1.N AND bnt1.P != bnt2.N
        
GROUP BY bnt1.N

UNION ALL

/*
    QUERY 3 TO FIND THE LEAF NODES
*/

SELECT 
    N,
    'Leaf' 
FROM 
    bst 
WHERE 
    N NOT IN (
                SELECT
                        bnt1.N
                FROM 
                        bst bnt1
                WHERE 
                        bnt1.P IS NULL

                UNION ALL 

                SELECT
                        bnt1.N
                FROM 
                        bst bnt1
                JOIN    bst bnt2   ON  bnt2.P = bnt1.N AND bnt1.P != bnt2.N
                        
                GROUP BY bnt1.N
)

ORDER BY N