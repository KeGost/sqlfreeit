create database motocars;

USE [motocars]
GO
/****** Object:  Table [dbo].[all_sales]    Script Date: 14.02.2019 0:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[all_sales](
	[shop_name] [nvarchar](50) NOT NULL,
	[shop_address] [nvarchar](50) NOT NULL,
	[client_name] [nvarchar](50) NOT NULL,
	[car] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[sale_date] [date] NOT NULL
) ON [PRIMARY]




GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Попов', N'Audi A5', 100, CAST(N'2018-01-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Васильев', N'Audi A6', 110, CAST(N'2018-01-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Петров', N'Audi A7', 120, CAST(N'2018-01-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соколов', N'BMW X1', 140, CAST(N'2018-01-10' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Попов', N'Cadillac SRX', 155, CAST(N'2018-01-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соловьев', N'Citroen C4', 85, CAST(N'2018-01-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' Cсоветская, 43', N'Семенов', N'BMW X5', 100, CAST(N'2018-01-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Михайлов', N'Cadillac SRX', 155, CAST(N'2018-01-25' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Федоров', N'Citroen C4', 85, CAST(N'2018-01-26' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Алексеев', N'BMW X5', 100, CAST(N'2018-01-27' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Федоров', N'Audi A5', 100, CAST(N'2018-02-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Новиков', N'Audi A6', 110, CAST(N'2018-02-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Егоров', N'Audi A7', 120, CAST(N'2018-02-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Михайлов', N'Citroen C4 Picasso', 100, CAST(N'2018-02-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Попов', N'Audi A5', 100, CAST(N'2018-02-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соловьев', N'Citroen C4', 85, CAST(N'2018-02-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' Cсоветская, 43', N'Лебедев', N'Audi A8', 125, CAST(N'2018-02-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Семенов', N'Cadillac CTS', 150, CAST(N'2018-02-22' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Федоров', N'Audi A7', 120, CAST(N'2018-02-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Алексеев', N'BMW X3', 100, CAST(N'2018-02-24' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Николаев', N'Audi A5', 100, CAST(N'2018-03-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Степанов', N'Audi A6', 110, CAST(N'2018-03-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Егоров', N'Audi A8', 125, CAST(N'2018-03-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Козлов', N'BMW X4', 150, CAST(N'2018-03-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Николаев', N'Cadillac SRX', 155, CAST(N'2018-03-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Петров', N'BMW X5', 100, CAST(N'2018-03-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' Cсоветская, 43', N'Лебедев', N'Citroen C4 Picasso', 100, CAST(N'2018-03-21' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Михайлов', N'Cadillac CTS', 150, CAST(N'2018-03-22' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Васильев', N'Citroen C4', 85, CAST(N'2018-03-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Алексеев', N'Cadillac CTS', 150, CAST(N'2018-03-24' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Захаров', N'Audi A5', 100, CAST(N'2018-04-01' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Новиков', N'Audi A6', 110, CAST(N'2018-04-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Никитин', N'Audi A7', 120, CAST(N'2018-04-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Михайлов', N'Citroen C4 Picasso', 100, CAST(N'2018-04-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Макаров', N'Cadillac SRX', 155, CAST(N'2018-04-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соловьев', N'Citroen C4', 85, CAST(N'2018-04-13' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Лебедев', N'Citroen C3', 70, CAST(N'2018-04-15' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Андреев', N'Citroen C4', 85, CAST(N'2018-04-16' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Федоров', N'Citroen C3 Picasso', 80, CAST(N'2018-04-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Зайцев', N'Citroen C4 Picasso', 100, CAST(N'2018-04-24' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Федоров', N'Audi A5', 100, CAST(N'2018-05-02' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Новиков', N'Audi A6', 110, CAST(N'2018-05-03' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Петров', N'Audi A7', 120, CAST(N'2018-05-05' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Михайлов', N'Citroen C4 Picasso', 100, CAST(N'2018-02-11' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'4 колеса', N' Столыпина, 8', N'Попов', N'Audi A5', 100, CAST(N'2018-02-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Automall', N' Космонавтов, 5', N'Соловьев', N'BMW X3', 100, CAST(N'2018-03-20' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'All Cars', N' Cсоветская, 43', N'Лебедев', N'Audi A8', 125, CAST(N'2018-03-17' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Михайлов', N'Cadillac CTS', 150, CAST(N'2018-01-22' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Иномарка ', N' Звездная, 15', N'Федоров', N'Audi A7', 120, CAST(N'2018-01-23' AS Date))
GO
INSERT [dbo].[all_sales] ([shop_name], [shop_address], [client_name], [car], [price], [sale_date]) VALUES (N'Рулевой', N'Куприевича, 46', N'Алексеев', N'BMW X3', 100, CAST(N'2018-01-24' AS Date))
GO

select distinct shop_address from all_sales

create table shops (
id int not null identity primary key,
shop_name nvarchar(100),
shop_address nvarchar(100)
)

select distinct client_name from all_sales

create table clients (
id int not null identity primary key,
client_name nvarchar(100)
)

select distinct car from all_sales 

create table cars (
id int not null identity primary key,
car_name nvarchar(100),
price int
)

create table journal (
id int not null identity primary key,
sale_date date
)


create table deals (
shop_id int not null foreign key references shops(id),
car_id int not null foreign key references cars(id),
client_id int not null foreign key references clients(id),
sale_id int not null foreign key references journal(id)
)

insert into shops(shop_name, shop_address) select distinct shop_name, shop_address from all_sales

insert into cars(car_name, price) select distinct car, price from all_sales

insert into clients(client_name) select distinct client_name from all_sales

insert into journal(sale_date) select distinct sale_date from all_sales

insert into deals select shops.id, cars.id, clients.id, journal.id from all_sales 
join shops on shops.shop_name = all_sales.shop_name and shops.shop_address = all_sales.shop_address
join cars on cars.car_name = all_sales.car and cars.price = all_sales.price
join clients on clients.client_name = all_sales.client_name
join journal on journal.sale_date = all_sales.sale_date


-- a. Определите, в каком из автосалонов Петров приобрел машину 2018-01-05
select shop_name from shops
join deals on deals.shop_id = shops.id
join journal on journal.id = deals.sale_id
join clients on clients.id = deals.client_id
where journal.sale_date = '20180105' 

-- b. Вывести перечень автомобилей, даты и места их приобретения клиентов Лебедева и Егорова, отсортируйте по имени клиента

select cars.car_name, journal.sale_date, shops.shop_name, shops.shop_address from shops
join deals on deals.shop_id = shops.id
join journal on journal.id = deals.sale_id
join clients on clients.id = deals.client_id and clients.client_name in ('Лебедев', 'Егоров')
join cars on cars.id = deals.car_id
order by clients.client_name

-- c. Вывести суммы продаж в феврале всех автосалонов

select sum(cars.price) from cars
join deals on cars.id = deals.car_id
join journal on journal.id = deals.sale_id
where month(journal.sale_date) = 2

-- d. Определить салон(салоны), выполнивший наибольшее число продаж за весь период

select top 1 with ties count(journal.sale_date), shops.shop_name from shops
join deals on deals.shop_id = shops.id
join journal on journal.id = deals.sale_id
group by shops.shop_name
order by count(journal.sale_date) desc

-- e. Определить, каких автомобилей (названия) было продано больше всего в автосалоне Иномарка

select top 1 with ties count(cars.car_name), cars.car_name from cars 
join deals on cars.id = deals.car_id
join shops on shops.id = deals.shop_id and shops.shop_name = 'Иномарка'
group by cars.car_name
order by count(cars.car_name) desc

-- f. Определите число уникальных клиентов салона Automall

select count(distinct clients.client_name) from clients 
join deals on clients.id = deals.client_id
join shops on shops.id = deals.shop_id and shops.shop_name = 'Automall'

-- g. Сколько продаж (количество) было сделано в салоне "4 колеса" в марте

select count(*) from shops
join deals on shops.id = deals.car_id and shops.shop_name = '4 колеса'
join journal on journal.id = deals.sale_id
where month(journal.sale_date) = 3