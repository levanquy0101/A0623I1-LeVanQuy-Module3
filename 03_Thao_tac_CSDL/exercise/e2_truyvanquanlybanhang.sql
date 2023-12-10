use quanlybanhang;

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select orders.oid, orders.odate, orders.ototalprice
from orders;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select customer.cname, product.pname
from customer
join orders on customer.cid = orders.cid
join orderdetail on orders.oid = orderdetail.oid
join product on orderdetail.pid = product.pid;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select customer.cname
from customer
left join orders on customer.cid = orders.cid
left join orderdetail on orders.oid = orderdetail.oid
where orderdetail.pid is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice)
select orders.oid, orders.odate, 
       sum(orderdetail.odqty * product.pprice) as total_price
from orders
join orderdetail on orders.oid = orderdetail.oid
join product on orderdetail.pid = product.pid
group by orders.oid, orders.odate;