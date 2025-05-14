-- Question 1
-- Query to create a normalized table in 1NF
create table Orders(
       OrderID int,
       CustomerName varchar(100)
       Product varchar(100)
       primary key (OrderID, Product)
); 

-- Question 2
-- Customer Table

create table Customers(
       CustomerID int primary key auto_increment,
       CustomerName varchar(100) not null
);

-- Product Table 

create table Products(
       ProductID int primary key auto_increment,
       ProductName varchar(100) not null
);

-- Orders Table

create table Orders(
       OrderID int primary key auto_increment,
       CustomerID int,
       ProductID int,
       foreign key(CustomerID) references Customers(CustomerID),
       foreign key(ProductID) references Products(ProductID)
);