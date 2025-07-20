-- creating different views for the data 
use onlineretaildb;


-- view for sales summary 

create view view_sales_summary as 
select 	p.product_id,
		p.name as product_name,
        sum(oi.quantity) as total_units_sold,
        round(sum(oi.quantity * oi.price), 2) as total_sales
from order_items as oi
join products as p 
on p.product_id = oi.product_id
group by p.product_id, p.name;

select* from view_sales_summary;


-- view for the customer order history 

create view view_customer_order_history as
select 	o.order_date,
		c.name as custommer_name,
		o.order_id,
        o.status,
        o.total_amount
from orders as o
join customers as c
on c.customer_id = o.customer_id
order by order_date;


select* from view_customer_order_history;
        
		

-- view for pending payment customers who have not paid yet

create view  view_pending_payments as
select 	o.order_id,
		c.name AS customer_name,
		o.total_amount,
		o.status,
		coalesce(p.status, 'Not Paid') AS payment_status
from orders as o
join Customers as c 
on o.customer_id = c.customer_id
left join Payments as p 
on o.order_id = p.order_id
where p.payment_id is null or p.status != 'Completed';

select* from view_pending_payments;


-- function to get the total amount spent by the particular customer


delimiter //
create function GetTotalSpentByCustomer(cust_id int)
returns decimal (10,2)
deterministic
begin
    declare total decimal(10,2);
    select sum(p.amount) into total
    from Payments p
    join Orders as o on p.order_id = o.order_id
    where o.customer_id = customer_id and p.status = 'Completed';
    return ifnull(total, 0.00);
    end //
    
delimiter ;

drop function GetTotalSpentByCustomer;


SELECT name, GetTotalSpentByCustomer(customer_id) AS total_spent
FROM Customers;

SELECT GetTotalSpentByCustomer(3);


