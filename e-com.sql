#tables creations
#cities
CREATE TABLE cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(50)
);
#genders 

create TABLE genders (
    gender_id INT PRIMARY KEY,
    gender_type VARCHAR(50)
);

#merchants

CREATE TABLE merchants (
    merchant_id INT PRIMARY KEY,
    merchant_name VARCHAR(50)
);
#customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    join_date DATE,
    city_id INT,
    gender_id INT,
    FOREIGN KEY (city_id)
        REFERENCES cities (city_id),
    FOREIGN KEY (gender_id)
        REFERENCES genders (gender_id)
);
#branches
CREATE TABLE branches (
    branch_id INT PRIMARY KEY,
    merchant_id INT,
    FOREIGN KEY (merchant_id)
        REFERENCES merchants (merchant_id)
);
#transactions 
create table transactions (transaction_id int primary key ,customer_id int ,transaction_date date ,transaction_status varchar(50) , burn_date date ,branch_id int ,
foreign key (customer_id) references customers (Customer_id) 
,foreign key (branch_id) references branches (branch_id) );

