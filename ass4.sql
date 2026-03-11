"Q1: INNER JOIN
Show all purchase orders along with the supplier name who provided them."

SELECT po.po_id,po.po_date,po.status,s.supplier_name
FROM purchase_orders po
INNER JOIN suppliers s
    ON po.supplier_id = s.supplier_id;


"Q2: LEFT JOIN
Show all customers and any sales orders they have placed. Include customers who have not placed any orders."

select c.customer_name, s.sales_order_id,s.order_date
from customers c
Left Join sales_orders s
ON c.customer_id = s.customer_id;


"Q3: RIGHT JOIN
Show all sales orders and the name of the customer who placed them. Include orders even if customer info is
missing."

select so.sales_order_id, so.order_date, c.customer_name
from cutomers c
right join sales_orders so
on c.customer_id = so.customer_id;


"Q4: FULL OUTER JOIN
Show all suppliers and all warehouses together. Include suppliers without warehouses and warehouses without
suppliers."
select s.supplier_name, w.warehouse_name
from suppliers s
full outer join warehouses w
on s.supplier_id = w.supplier_id;

"Q5: INNER JOIN
Show each sales order along with its shipment details (shipment date and status)."
select so.sales_order_id, so.order_date, s.shipment_date, s.shipment_status
from sales_order so
inner join shipments s
on so.sales_order_id = s.sales_order_id;


"Q6: LEFT JOIN
Show all warehouses and the inventory stored in them. Include warehouses with no inventory."
select w.warehouse_name, i.product_id, i.quantity_on_hand
from warehouses w
left join inventory i
on w.warehouse_id = i.warehouse_id;


"Q7: FULL OUTER JOIN
Show all purchase orders and all purchase order items together. Include orders without items and items without
orders."

select p.po_id, po.po_item_id
from purchase_orders p
full outer join purchase_order_items po
on p.po_id = po.po_id;


"Q8: INNER JOIN
Show each customer along with the products they ordered and the quantity."
select c.customer_name, soi.product_id, soi.quantity
from customers c
inner join sales_order_items soi
on c.customers = soi.sales_order_items


"Q9: LEFT JOIN
Show all suppliers and the purchase orders linked to them. Include suppliers with no purchase orders."
select s.supplier_name, p.po_id, p.status
from suppliers s
left join purchase_order p
on s.supplier_id = p.supplier_id;


"Q10: RIGHT JOIN
Show all warehouses and any inventory linked to them. Include warehouses even if inventory is missing."
select w.warehouse_name, i.product_id
from inventory i
right join warehouses w
on i.warehouse_id = w.warehouse_id;


"Q11: FULL OUTER JOIN
Show all customers and all suppliers together. Include unmatched rows from both sides."

select c.customer_name, s.supplier_name
from customers c
full outer join suppliers s
on c.customer_id = s.customer_id;


"Q12: INNER JOIN
Show all shipments along with the warehouse name from which they were shipped."

 select s.shipment_id w.warehouse_name s.shipment_status
from shipments s
inner join warehouses w
on s.shipment_id = w.shipment_id;


"Q13: LEFT JOIN
Show all sales orders and their shipment dates. Include orders that have not been shipped yet."
select so.sales_order_id, sh.shipment_date
from sales_orders so
left join shipments sh
ON so.sales_order_id = sh.sales_order_id;


"Q14: RIGHT JOIN
Show all purchase orders and the supplier names. Include orders even if supplier info is missing."
select po.po_id, s.supplier_name
from suppliers s
right join purchase_orders po
on s.supplier_id = po.supplier_id;


"Q15: FULL OUTER JOIN
Show all sales orders and all purchase orders together. Include unmatched rows from both sides."
select so.sales_order_id, po.po_id
from sales_order so
full outer join purchase_order po
on so.sales_order_id = po.sales_order_id;


"Q16: INNER JOIN
Show inventory details along with the purchase order item price for the same product."
select i.product_id, po.unit_price
from inventory i
inner join purchase_order_items po
on i.inventory_id = po.inventory_id;


"Q17: LEFT JOIN
Show all customers and the shipment status of their orders. Include customers without shipments."
select c.customer_name, s.shipment_status
from customers c
left join shipments s
on c.customer_id = s.customer_id;


"Q18: RIGHT JOIN
Show all warehouses and the shipment status of orders shipped from them. Include warehouses with no shipments."
select w.warehouse_name, s.shipment_status
from shipments s
right join warehouses w
on s.shipment_id = w.shipment_id;


"Q19: FULL OUTER JOIN
Show all inventory items and all sales order items together. Include unmatched rows from both sides."
select i.product_id, soi.quantity
from inventory i
full outer join sales_order_items soi
on i.inventory_id = soi.inventory_id;



"Q20: INNER JOIN
Show all purchase order items along with the purchase order details (order date and status)."
select poi.po_item_id, po.po_id, po.po_date, po.status
from purchase_order po
inner join purchase_order_items poi
on po.po_id = poi.po_id;







