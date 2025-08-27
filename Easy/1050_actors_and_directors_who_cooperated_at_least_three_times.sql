-- Write your PostgreSQL query statement below
select actor_id, director_id from ActorDirector
group by actor_id, director_id
having count(actor_id) >= 3 and count(director_id) >= 3

/*we need to find the actor and directer who worked with each other atleast 3 times, so we group by both actors as well as directors and use the count fucntion with having clause.*/