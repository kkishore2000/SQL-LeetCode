-- Write your PostgreSQL query statement below
SELECT player_id,MIN( event_date) as first_login from Activity 
group by player_id

/*we are using group by clause to bundle the player_id and then use the min function to get the smallest date. */