--Table1
CREATE TABLE customer_data (
  Customer_id INT,
  Name char,
  Sex char,
  Province char,
  Tel char,
  primary key ("Customer_id")
);
insert into customer_data values
(1, 'A', 'BKK', 'M', '081-234-567'),
(2, 'B', 'BKK', 'M', '082-345-678'),
(3, 'C', 'Chiang Mai', 'F', '083-456-789'),
(4, 'D', 'Phare', 'F', '084-567-890'),
(5, 'E', 'Nan', 'M', '085-678-912');

--Table2
CREATE TABLE menu_data (
  Menu_id INT,
  Food_Name char,
  Cost real,
  Selling_Price real,
  primary key ("Menu_id")
);

insert into menu_data values
(1, 'Corn Soup', 20, 40),
(2, 'French Fries', 25, 35),
(3, 'Spaghetti Carbonara', 40, 70),
(4, 'Fish & Chip', 70, 99),
(5, 'Pork Chop', 80, 129);

--Table3
CREATE TABLE employee_data (
  employee_id INT,
  employee_Name char,
  sex char,
  position char,
  primary key ("employee_id")
);

insert into employee_data values
(1, 'Anna', 'F', 'Manager'),
(2, 'T', 'M', 'Assitant Manager'),
(3, 'Mike', 'M', 'Chef'),
(4, 'Julia', 'F', 'Staff'),
(5, 'Jame', 'M', 'Staff');

--Table4
CREATE TABLE payment_term (
  Payment_id INT,
  Payment_method char,
  primary key ("Payment_id")
);

insert into payment_term values
(1, 'Cash'),
(2, 'Credit Card'),
(3, 'Transfer');

--Table5
CREATE TABLE daily_order (
  order_no INT,
  order_date date,
  menu_id int,
  Qty int,
  customer_id int,
  In_charge int,
  payment_method int,
  foreign key ("menu_id") references 
  "menu_data"("Menu_id"),
  foreign key ("customer_id") references 
  "customer_data"("Customer_id"),
  foreign key ("In_charge") references 
  "employee_data"("employee_id"),
  foreign key ("payment_method") references 
  "payment_term"("payment_id")
);

insert into daily_order values
(1, '2022-12-01', 1,1,1,1,2),
(2, '2022-12-01', 2,1,1,1,2),
(3, '2022-12-01', 3,1,1,1,2),
(4, '2022-12-02', 5,1,2,4,1),
(5, '2022-12-02', 3,1,2,4,1),
(6, '2022-12-03', 3,1,3,2,3);

.mode column
.header on
select * from menu_data;

--Query 1 Summary Sale amount by menu
with sub as (
select 
  doa.order_date,
  doa.menu_id,
  Food_name,
  Selling_Price,
  Qty,
  Selling_Price*Qty as Total_selling
  from daily_order as doa
  join menu_data as md
  on doa.menu_id = md.Menu_id
  )
select 
      Food_name,
      Total_selling
from sub
group by Food_name
order by Total_selling desc



