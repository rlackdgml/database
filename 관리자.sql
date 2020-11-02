-- 테스트
CREATE TABLESPACE scoreTS
DATAFILE 'scoreTS.dbf'    
SIZE 1M                 
AUTOEXTEND ON NEXT 1K;  

-- 사용자 생성
CREATE USER score        
IDENTIFIED BY score     
DEFAULT TABLESPACE scoreTS;  

-- 사용자에게 권한 부여하기
GRANT DBA TO score; 