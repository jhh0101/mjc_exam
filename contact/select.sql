-- 판매정보
select
	st.id,
	st.sale_dt,
	st.price,
	st.qty,
	st.product,
	st.discount,
	lt.location,
	ct.name,
	ct.phoneNumber,
	ct.zipNumber,
	ct.email,
	ct.addr
from
	saled_tbl as st
inner join location_tbl as lt on
	st.location_id = lt.id
inner join contact_tbl as ct on 
	st.contact_id = ct.id;

-- 수강정보
select
	lt1.id,
	lt1.score,
	lt2.subject,
	lt2.teacher,
	lt2.room_num,
	lt2.start_dt,
	lt2.end_dt,
	ct.name,
	ct.phoneNumber,
	ct.zipNumber,
	ct.email,
	ct.addr
from
	learn_tbl as lt1
inner join lecture_tbl as lt2 on
	lt1.lecture_id = lt2.id
inner join contact_tbl as ct on 
	lt1.contact_id = ct.id;