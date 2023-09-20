-- MCDP_CD가 CS or GS인 의사의 이름, 의사ID, 진료과, 고용일자를 조회_고용일자 내림차순, 이름 오른차순
SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD FROM DOCTOR
-- WHERE 문에서 'IS'는 NULL 때만 사용 가능, 다른 때는 '=' 사용  
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC; 