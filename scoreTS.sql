CREATE TABLE tbl_score (
학번  CHAR(5),
학과  NVARCHAR2(20),
국어 NUMBER(3),
영어 NUMBER(3),
수학 NUMBER(3)

);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20001','001',64,65,79);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20002','003',70,92,99);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20003','002',56,55,52);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20004','001',67,57,55);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20005','003',75,58,74);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20006','004',52,97,78);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20007','005',85,72,92);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20008','002',62,64,62);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20009','003',81,95,86);
INSERT INTO tbl_score(학번, 학과, 국어, 영어, 수학)VALUES('20010','004',93,77,79);

SELECT * FROM tbl_score;

SELECT * FROM tbl_score WHERE 학번 = '20001';
SELECT * FROM tbl_score WHERE 학번 = '20002';
SELECT * FROM tbl_score WHERE 학번 = '20004';
SELECT * FROM tbl_score WHERE 학번 = '20005';
SELECT * FROM tbl_score WHERE 학번 = '20006';
SELECT * FROM tbl_score WHERE 학번 = '20007';
SELECT * FROM tbl_score WHERE 학번 = '20008';
SELECT * FROM tbl_score WHERE 학번 = '20009';
SELECT * FROM tbl_score WHERE 학번 = '20010';


SELECT * FROM tbl_score;
SELECT 학번, 학과,국어,영어,수학,
 (국어+영어+수학) AS 총점,
 (국어+영어+수학) /3 AS 평균
FROM tbl_score;

SELECT * FROM tbl_score;
UPDATE tbl_score SET 국어  = 92 WHERE 학번='20007';
UPDATE tbl_score SET 수학  = 88 WHERE 학번='20007';
UPDATE tbl_score SET 영어  = 90 WHERE 학번='20007';



DELETE FROM tbl_score WHERE 학번 ='20010';
SELECT * FROM tbl_score;


SELECT '과목총점',
        SUM(국어) AS 국어, 
        SUM(영어) AS 영어, 
        SUM(수학) AS 수학
        
FROM tbl_score
WHERE 학번 BETWEEN '20001' AND '20009'
GROUP BY '과목총점'

UNION ALL

SELECT '과목평균',
        AVG(국어) AS 국어, 
        AVG(영어) AS 영어, 
        AVG(수학) AS 수학     
FROM tbl_score
WHERE 학번 BETWEEN '20001' AND '20009'
GROUP BY '과목평균';
