CREATE VIEW sale_view
AS
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

select * from sale_view;