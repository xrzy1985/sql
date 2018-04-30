-- 
SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

-- 
SELECT c1, c2, .. cN 
FROM table_name
WHERE c1 BETWEEN value1 AND value2; 

--
SELECT c1, c2, .. cN 
FROM table_name
WHERE (c1 BETWEEN v1 AND v2 AND c2 BETWEEN v1 AND v2 ); 

--
SELECT table1.c1, table2.c2 
FROM table1, table2
WHERE table1.c1 BETWEEN v1 AND v2 AND table2.c2 BETWEEN v3 AND v4; 
