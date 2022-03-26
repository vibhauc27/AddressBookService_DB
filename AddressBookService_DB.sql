--UC1 
--Ability to create a Address Book Service DB

create database AddressBookService_DB;

use AddressBookService_DB;

--UC2 
--Ability to create a Address Book Table with first and last names, address, city, state, zip, phone number and email as its attributes

create table AddressBook_Table
(
id int primary key identity(1,1),
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar (100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);
select * from AddressBook_Table;