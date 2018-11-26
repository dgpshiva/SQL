/*
Enter your query here.
*/

SELECT round(AVG(dd.lat_n), 4) AS median_val
FROM
(
    SELECT s.lat_n, @rownum:=@rownum+1 AS row_number, @totalrows:=@rownum
    FROM Station s, (SELECT @rownum:=0) r
    ORDER BY s.lat_n
) AS dd
WHERE dd.row_number IN (FLOOR((@totalrows+1)/2), FLOOR((@totalrows+2)/2));
