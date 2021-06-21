use quanlybanhang;
insert into customer(cID,cName,cAge)
values  (1,'Minh Quan',10),
        (2,'Ngoc Oanh',20),
		(3,'Hong Ha',50);
        alter table orders modify oTotalPrice int null;
insert into orders(oId,cId,oDate,oTotalPrice)
values(1,1,'2006-3-21',null),
(2,2,'2006-3-23',null),
(3,1,'2006-3-16',null);
insert into product(pId, pName, pPrice)
values (1,'May Giat',3),
 (2,'Tu Lanh',5),
 (3,'Dieu Hoa',7),
 (4,'Quat',1),
 (5,'Bep Dien',2);
 insert into orderdetail(oId, pId, odQTY)
 values (1,1,3),
  (1,3,7),
  (1,4,2),
  (2,1,1),
  (2,5,4),
  (2,3,3);
  select oID,oDate,oTotalPrice from orders;
  select * from Customer,orders where Customer.cID = orders.cId;
  select orders.oId, product.pId,product.pName,orderdetail.oId,orderdetail.pId
  from orders,orderdetail,product
  where orders.oId = orderdetail.oId and product.pId = orderdetail.pId;
  