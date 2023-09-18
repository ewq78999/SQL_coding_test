-- A.게시글 제목, A.게시글 ID, B.댓글 ID, B.댓글 작성자 ID, B.댓글 내용, 댓글 작성일(중 202년 10월)
SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS ,DATE_FORMAT(B.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE 
FROM USED_GOODS_BOARD A 
JOIN USED_GOODS_REPLY B ON A.BOARD_ID = B.BOARD_ID
WHERE EXTRACT(YEAR FROM A.CREATED_DATE) = 2022 AND EXTRACT(MONTH FROM A.CREATED_DATE) = 10
ORDER BY B.CREATED_DATE, A.TITLE;