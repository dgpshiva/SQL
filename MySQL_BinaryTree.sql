/*
Hacker Rank question: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
Enter your query here.
*/

SELECT N, IF(P IS NULL,'Root',IF((SELECT COUNT(*) FROM BST WHERE P=B.N)>0,'Inner','Leaf')) FROM BST AS B ORDER BY N;


/*
Enter your query here.
*/

-- SELECT CONCAT(N, ' Leaf') AS OP
-- FROM BST
-- WHERE N NOT IN
-- ( SELECT DISTINCT P FROM BST WHERE P IS NOT NULL )

-- UNION

-- SELECT CONCAT(N, ' Root') AS OP
-- FROM BST
-- WHERE P IS NULL

-- UNION

-- SELECT CONCAT(N, ' Inner') AS OP
-- FROM BST
-- WHERE N NOT IN
-- (
--     SELECT N
--     FROM BST
--     WHERE N NOT IN
--     ( SELECT DISTINCT P FROM BST WHERE P IS NOT NULL )
--     UNION
--     SELECT N
--     FROM BST
--     WHERE P IS NULL
-- )

-- ORDER BY OP;
