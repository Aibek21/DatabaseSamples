SELECT *
FROM t1;
SELECT *
FROM t2;

SELECT *
FROM t1
  CROSS JOIN t2;
SELECT *
FROM t1
  INNER JOIN t2 ON TRUE;
SELECT *
FROM t1, t2;


SELECT *
FROM t1
  INNER JOIN t2 ON t1.num = t2.num
                   AND t1.test = t2.test;


SELECT *
FROM t1
  INNER JOIN t2 USING (num, test);


SELECT *
FROM t1
  NATURAL JOIN t2;


INSERT INTO t3 VALUES (1, 'asd'), (3, 'asd1'), (4, 'asd2');
SELECT *
FROM t3;


SELECT *
FROM t1
  INNER JOIN
  (t1
    FULL JOIN t3 ON t1.num = t3.id) AS r1 ON t1.num = r1.num;


SELECT *
FROM t1
  INNER JOIN t2 ON t1.num = t2.num AND t2.value = 'xxx';

SELECT *
FROM t1
  INNER JOIN t2 ON t1.num = t2.num WHERE t2.value = 'xxx';


SELECT *
FROM t1
  LEFT JOIN t2 ON t1.num = t2.num AND t2.value = 'xxx';


SELECT *
FROM t1
  LEFT JOIN t2 ON t1.num = t2.num WHERE t2.value = 'xxx';


