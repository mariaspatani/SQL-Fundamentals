CREATE TABLE supplier(
    sno INT PRIMARY KEY,
    sname VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO  supplier  VALUES(1,'Leena','Kottayam');
INSERT  INTO supplier VALUES(2,'Meena','Kollam');
INSERT INTO supplier VALUES(3,'Neena','Pala');

CREATE TABLE Parts(
    Pno INT PRIMARY KEY,
    Sno INT,
    Qty INT,
    FOREIGN KEY(sno) references supplier(sno)
);
INSERT  into parts values(101,1,5);
INSERT  into parts values(102,2,10);
INSERT  into parts values(103,3,15);

-- increase the quantity of pno 3 by 10
UPDATE PARTS
SET Qty=Qty+10
where pno=103;

select * from parts;
--display the parts details supplied from' pala
select s.city,p.*
from supplier s JOIN parts p
on s.sno=p.sno
where s.city='Pala';
--create a view contains details of supplier and parts supplied by the supplier

CREATE VIEW V1 AS
SELECT s.sno,s.sname,p.pno from
supplier s join parts p
on s.sno=p.sno;

select * from v1;
