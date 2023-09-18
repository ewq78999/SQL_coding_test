# FIRST_HALF 테이블의 기본 키는 FLAVOR, FIRST_HALF F 형식으로 F에 FIRST_HALF를 할당시킴
SELECT F.FLAVOR FROM FIRST_HALF F
JOIN ICECREAM_INFO I ON F.FLAVOR = I.FLAVOR
WHERE TOTAL_ORDER > 3000 AND I.INGREDIENT_TYPE = 'fruit_based'
ORDER BY TOTAL_ORDER DESC;