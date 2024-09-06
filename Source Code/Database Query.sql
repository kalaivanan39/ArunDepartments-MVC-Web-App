create database mvc

use mvc

create table tbl_products
(
 id int primary key identity(1,1),
 product_name varchar(100),
 quantity int
 )

 insert into tbl_products values ('rice',100)

 go
 create procedure get_products
 as begin
 select * from tbl_products
 end

 go
 create procedure sp_insert
 (
 @product_name varchar(100),
 @quantity int
 )

 as begin
 insert into tbl_products values (@product_name,@quantity)
 end

 exec sp_insert 'dhall',20

 go
  create procedure sp_update
 (
 @id int,
 @product_name varchar(100),
 @quantity int
 )

 as begin
 update tbl_products set product_name = @product_name , quantity = @quantity 
 where id = @id
 end

 exec sp_update 1,'salt',33

 go
 create procedure sp_delete
 (
 @id int
 )
 as begin
 delete from tbl_products where id = @id
 end

  go
 create procedure get_products_details
 (
   @id int
   )
 as begin
 select * from tbl_products where id = @id
 end