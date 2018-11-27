/*
Hacker Rank question: https://www.hackerrank.com/challenges/print-prime-numbers/problem
Enter your query here.
*/

SELECT GROUP_CONCAT(NUMB SEPARATOR '&')
FROM (
    SELECT @num:=@num+1 AS NUMB FROM
    information_schema.tables t1,
    information_schema.tables t2,
    (SELECT @num:=1) tmp
) tempNumB
WHERE NUMB <= 1000 AND NOT EXISTS (
    SELECT * FROM (
        SELECT @nu:=@nu+1 AS NUMA FROM
        information_schema.tables t1,
        information_schema.tables t2,
        (SELECT @nu:=1) tmp1
        LIMIT 1000
    ) tempNumA
    WHERE FLOOR(NUMB/NUMA) = (NUMB/NUMA) AND NUMA<NUMB AND NUMA>1
)
