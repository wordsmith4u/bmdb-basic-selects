select * from customers;

-- count function
select count(*) from customers; 

-- count with an alias
select count(*) as row_count from customers; 

-- count with an alias, shorthand
select count(*) row_count from customers;

-- sum function 
select sum(creditlimit) FROM customers;



-- avg  & format function 
select format (avg(creditlimit),2) FROM customers;

-- avg, format & Concat function 
select concat('$',format (avg(creditlimit),2)) as avg_credit_limit FROM customers;

-- group by: avg, format & Concat function by country
select country, concat('$',format (avg(creditlimit),2)) as avg_credit_limit FROM customers
	group by country
    order by avg(creditLimit) desc;
    
-- group by: having: avg, format & Concat function by country where avg is > 0
select country, concat('$',format (avg(creditlimit),2)) as avg_credit_limit FROM customers
	group by country
    having avg(creditLimit) > 0
    order by avg(creditLimit) desc;
    
-- max credit limit
select max(creditLimit)
	from customers;
    
-- min credit limit
select min(creditLimit)
	from customers;