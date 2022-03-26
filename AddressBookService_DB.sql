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

--UC3 
--Ability to insert new Contacts to Address Book

insert into AddressBook_Table(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
values
('Moxie', 'Steve', 'Panji', 'Goa', 'Goa', 123456, 124567890, 'Moxie@gmail.com'),
('Vibha', 'Rao', 'Sagar', 'Sagar', 'Karnataka', 456123, 7894561230, 'vba@gmail.com'),
('Vind', 'Shah', 'HBR Nagar', 'Delhi', 'Delhi', 560037, 4567891230, 'vind@gmail.com'),
('Choii', 'Hegde', 'Kalyan Nagar', 'Bangalore', 'Karnataka', 560103, 0456123895, 'Choii@gmail.com');

select * from AddressBook_Table;

--UC4 
--Ability to edit existing contact person using their name

update AddressBook_Table set City = 'Pune' where FirstName = 'Moxie';
update AddressBook_Table set State = 'MP' where LastName = 'Hegde';
select * from AddressBook_Table;


--UC5 
--Ability to delete a person using person's name

delete from AddressBook_Table where FirstName = 'Choii';
select * from AddressBook_Table;


--UC6
--Ability to Retrieve Person belonging to a City or State from the Address Book 

select * from AddressBook_Table where City = 'Pune' or State = 'Karnataka';
