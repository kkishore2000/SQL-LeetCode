-- Write your PostgreSQL query statement below
select distinct viewer_id as id from Views
where author_id = viewer_id

/*since we know that same author id and viewer id indicate the same person. we simply need to use the where clause to see if the authod id matches the viewer id*/