E.
Q1. who is the senior most employee based on job title?
select * from employee
order by levels desc limit 1
Q2. which country have the most invoices?
select billing_country , count(*) as c from invoice
group by billing_country
order by c desc limit 1
Q3. what are top three value of total invoices
select total from invoice
order by total desc limit 3
Q4 . which city has the best customer ? we would like to 
throw a promotional music festival in the city we made the most money
write a query that returns one city that has the highest sum
of invoice totals return both the city name and sum of all invoice
totals.
select billing_city , sum(total) as a from invoice
group by billing_city
order by a desc limit 1
Q5 . who is the best customer ? the customer who has spent
the most money will be declared the best customer 
write a query that returns the person who has spent the most money

select c.first_name , sum(i.total) as a from customer c 
left join invoice i on c.customer_id = i.customer_id
group by c.first_name 
order by a desc limit 1
M:
Q1 .
write a sql query to return the first name ,email , last name
and genre of all rock music listeners. return your list ordered
alphabetically by email starting with a
select distinct(e.first_name) , e.email , g.name   from customer e 
left join invoice c on e.customer_id  = c.customer_id
left join invoice_line a on a.invoice_id = c.invoice_id
left join track t on t.track_id = a.track_id
left join genre g on g.genre_id = t.genre_id

where g.name = 'Rock'

order by e.email




