-- 수강학생별로 수강중인 과목의 가장빠른 시작일자시간과 가장늦은 끝일자시간을 출력
select name, MIN(start_dt)
	, MAX(end_dt)
from
	learn_view
GROUP BY
	name;

-- 각과목별로 수강하는 학생 인원수를 출력하세요.
select subject, COUNT(subject) count
from
	learn_view
GROUP BY
	subject;

-- 각과목별로 최우수점수 학생 이름과 score 가 맨위로 정렬되도록 출력하세요.
SELECT subject, name, score
FROM learn_view
WHERE (subject, score) IN (
    SELECT subject, MAX(score)
    FROM learn_view
    GROUP BY subject
)
ORDER BY score DESC;

-- 각과목별로 최하위점수 학생 이름과 score 가 맨위로 정렬되도록 출력하세요.
FROM learn_view
WHERE (subject, score) IN (
    SELECT subject, MIN(score)
    FROM learn_view
    GROUP BY subject
)
ORDER BY score ASC;

-- 각고객별로 판매총금액을 내림차순으로 출력하세요.
SELECT name, SUM(price * qty - discount) as total_balence
FROM sale_view
GROUP BY name
ORDER BY total_balence DESC;

-- 각상품별로 판매총금액을 내림차순으로 출력하세요.
SELECT product, SUM(price * qty - discount) as total_balence
FROM sale_view
GROUP BY product
ORDER BY total_balence DESC;