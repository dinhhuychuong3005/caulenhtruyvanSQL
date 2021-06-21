create database SanPham;
use SanPham;
create table Customer (
customerId int not null primary key,
customerAge int not null,
customerName varchar(50) not null
);
create table Orders(
orderId int not null primary key,
customerId int not null,
orDate datetime not null,
orderProductQuantity int not null,
orderTotalPrice double not null,
foreign key (customerId) references customer(customerId));
create table Product(
productId int not null primary key,
productName varchar(50) not null,
productPrice double not null,
productQuantity int not null
);
create table chitietdonhang(
productId int not null ,
orderId int not null,
quantity int not null,
foreign key (productId) references product (productId),
foreign key (orderId) references orders (orderId),
primary key(orderId,productId)
);subject
