USE motocars

-- 1. Создать представление статистики о продажах во всех автосалонах, которое будет содержать данные 
--		- Наименование автосалона
--		- Количество продаж 
--		- Сумма продаж 
--		- Количество клиентов

go 
create view stat_prod 
as 
select shops.shop_name, count(journal.sale_date) as 'Продажи', 
sum(cars.price) as 'Сумма продаж', count(clients.client_name) as 'Клиенты' 
from shops 
join deals on deals.shop_id = shops.id
join journal on journal.id = deals.sale_id
join cars on cars.id = deals.car_id
join clients on clients.id = deals.client_id
group by shops.shop_name

-- 2. Создать представления (2 отдельных) с данными о продажах в салоне Иномарка и 4 колеса 

go
create view inomarka_stat
as
select journal.sale_date, cars.car_name, cars.price 
from shops 
join deals on deals.shop_id = shops.id
join journal on journal.id = deals.sale_id
join cars on cars.id = deals.car_id
join clients on clients.id = deals.client_id
where shops.shop_name = 'Иномарка' 


go
create view fourwheels_stat
as
select journal.sale_date, cars.car_name, cars.price 
from shops 
join deals on deals.shop_id = shops.id
join journal on journal.id = deals.sale_id
join cars on cars.id = deals.car_id
join clients on clients.id = deals.client_id
where shops.shop_name = '4 колеса' 

 
-- 3(не сделан). Создать представление, которое будет содержать информацию о клиентах, 
-- которые сделали покупки во всех автосалонах 
-- (запрос должен быть независим от текущего числа автосалонов, 
-- т.е. должен работать даже если число автосалонов изменится)
--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

select distinct clients.client_name 
from clients 
join deals on deals.client_id = clients.id
join shops on deals.shop_id = shops.id
where shops.shop_name = '4 колеса'

intersect

select distinct clients.client_name 
from clients 
join deals on deals.client_id = clients.id
join shops on deals.shop_id = shops.id
where shops.shop_name = 'All Cars'


-- 4. Найти покупателей, которые приобретали машины в автосалоне Иномарка, 
-- при этом не приобретали автомобили в салоне 4 колеса, сохранить запрос как представление 
go
create view ino_not_4wheels
as 
select distinct clients.client_name from clients
join deals on deals.client_id = clients.id
join shops on shops.id = deals.shop_id 
where shops.shop_name = 'Иномарка' and shops.shop_name != '4 колеса'


-- 5(не сделан). Вывести список покупателей с отображением их статуса (если покупок больше 10 - VIP, 
-- от 10 до 6 - Gold, 5 и менее - Usual), сохранить запрос как представление
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
select clients.client_name, count(journal.sale_date)
from clients 
join deals on deals.client_id = clients.id
join journal on journal.id = deals.sale_id 
group by clients.client_name



--6.Создать запрос для отображения данных по автосалону Иномарка по следующим параметрам 
-- - Месяц минимальных продаж
-- - Месяц максимальных продаж 
-- - Среднее число продаж по месяцам
--   Результат вывести в виде трех строк, двух столбцов (наименование параметра, 
--   значение параметра), сохранить запрос как представлени


-- Минимальные продажи 
go 
create view inomarka
as

select top 1 month(journal.sale_date) as 'Месяц', sum(cars.price)/count(cars.price) as 'Продажи' 
from shops
join deals on deals.shop_id = shops.id and shops.shop_name = 'Иномарка'
join cars on cars.id = deals.car_id
join journal on journal.id = deals.sale_id
group by month(journal.sale_date)
order by sum(cars.price) asc

union all

-- Максимальные продажи 
select top 1 month(journal.sale_date) as 'Месяц', sum(cars.price)/count(cars.price) as 'Продажи' 
from shops
join deals on deals.shop_id = shops.id and shops.shop_name = 'Иномарка'
join cars on cars.id = deals.car_id
join journal on journal.id = deals.sale_id
group by month(journal.sale_date)
order by sum(cars.price) desc

select * from inomarka
