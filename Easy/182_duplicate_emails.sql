SELECT email AS Email FROM Person
group by email
having count(*) > 1

learned having, it is used with group by not where clause.
it is different from where clause even though they do pretty much same job.
we use having clause after group by, while we use where clause before group by. 