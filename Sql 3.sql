use classicmodels;
select*from products;

select productcode,productline,quantityInstock 
from products 
where productline = 'Motorcycles';

select productcode,productline,quantityInstock 
from products 
where productline in ('Motorcycles','classic Cars','Planes');

select productcode,productline,productname 
from products
where quantityInstock between 3000 and 9000;

select productcode,productline,productVendor
from products 
where productVendor like 'M%t';

select count(productline) as product
from products;

select sum(buyPrice) as sum_buyprice
from products;

select sum(buyPrice) as sum_buyprice
from products
where buyPrice> 40;

select max(buyPrice) as Max_price
from products;

select min(buyPrice)
from products;

select productline,count(Productname) as pro_name
from products
group by productline 
order by pro_name;

select productline,count(Productname) as pro_name
from products
where productline='Trucks and Buses'
group by productline 
order by pro_name;

select productline,count(Productname) as pro_name
from products
group by productline 
having  pro_name>7
order by pro_name;

select*from products;

select count(buyprice), sum(buyprice), avg(buyprice),productline
from products
group by productline 
having avg(buyprice)> 20
order by productline;

























