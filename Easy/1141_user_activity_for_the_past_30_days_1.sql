-- Write your PostgreSQL query statement below
select activity_date as day, count(distinct user_id) as active_users
from Activity
where activity_date > '2019-06-27'
and activity_date <= '2019-07-27'
group by activity_date

/*to get the active users, we need to first group by the activity date so that we only get the unique dates, then we need to count unique user_ids too. so basically we are geting unique dates and unique users.*/