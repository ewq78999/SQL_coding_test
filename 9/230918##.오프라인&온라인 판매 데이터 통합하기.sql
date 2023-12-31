-- ONLINE_SALE과 OFFLINE_SALE을 합쳐야함, 3월 데이터만 선택, OFFLINE_SALE의 USER_ID 값은 NULL로 표시
-- DATE_FORMAT(,'%Y-%m-%d') 은 날짜값을 문자열로 반환하는 함수

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT FROM ONLINE_SALE
WHERE SALES_DATE >= '2022-03-01' AND SALES_DATE <'2022-04-01'
-- WHERE DATE_FORMAT(SALES_DATE, '%Y-%m') ='2022-03'

UNION ALL

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT FROM OFFLINE_SALE
WHERE SALES_DATE >= '2022-03-01' AND SALES_DATE <'2022-04-01'
-- WHERE DATE_FORMAT(SALES_DATE, '%Y-%m') ='2022-03'

ORDER BY SALES_DATE, PRODUCT_ID, USER_ID;