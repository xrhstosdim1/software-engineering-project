drop database if exists project;
create database project;
use project;

CREATE TABLE Product
(
    ProductID INT(10) PRIMARY KEY,
    ProductName VARCHAR(100) UNIQUE,
    Price INT(8),
    Quantity INT(4) UNSIGNED,
    Status ENUM('Available for purchase','Available for leasing'),
    Image_path VARCHAR(150)
);


CREATE TABLE User
(
    Username VARCHAR(30) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName  VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    UserPassword VARCHAR(100),
    Telephone INT(15),
    Street VARCHAR(100),
    StreetNum INT(4)
	
);



CREATE TABLE Customer
(
    CustomerUsername VARCHAR(30) PRIMARY KEY,
     CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerUsername)   REFERENCES User(Username)
    ON UPDATE CASCADE ON DELETE CASCADE
  
);


CREATE TABLE Mechanic
(
    MechanicUsername VARCHAR(30) PRIMARY KEY,
     CONSTRAINT FK_MechanicID FOREIGN KEY (MechanicUsername)   REFERENCES User(Username)
    ON UPDATE CASCADE ON DELETE CASCADE
  
);


CREATE TABLE Admin
(
    AdminUsername VARCHAR(30) PRIMARY KEY,
     CONSTRAINT FK_AdminID FOREIGN KEY (AdminUsername)   REFERENCES User(Username)
    ON UPDATE CASCADE ON DELETE CASCADE
  
);



CREATE TABLE Order_
(
    OrderID INT(10)  PRIMARY KEY AUTO_INCREMENT,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CustomerName VARCHAR(30),
    ProductID INT(10) NOT NULL,
    Quantity INT(2),
    Sub_date DATETIME,
    F_date DATETIME,
    Status_ ENUM('Pending', 'Active', 'Ready for Pickup', 'Finished', 'Cancelled') DEFAULT 'Pending',
    MechanicName VARCHAR(30),
    Price INT(8),
    CONSTRAINT FP_CustomerID FOREIGN KEY (CustomerName)   REFERENCES Customer(CustomerUsername)
    ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FP_MechanicID FOREIGN KEY (MechanicName)   REFERENCES Mechanic(MechanicUsername)
    ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE Test_Drive
(
    TestDriveID INT(10) PRIMARY KEY AUTO_INCREMENT,
    TestDriveDate DATETIME UNIQUE NOT NULL,
    CustomerName VARCHAR(30),
    VehicleName VARCHAR(50) NOT NULL,
    status ENUM('Available', 'Pending', 'Confirmed'),
    CONSTRAINT FF_CustomerID FOREIGN KEY (CustomerName)   REFERENCES Customer(CustomerUsername)
    ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE Table Repairs
(
    CarPlate VARCHAR(6) PRIMARY KEY,
    CarName VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    OwnerName VARCHAR(30) NOT NULL,
    Mileage INT(10) NOT NULL,
    CONSTRAINT FL_CustomerID3 FOREIGN KEY (OwnerName)  REFERENCES Customer(CustomerUsername)
    ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Trade_In
(
    TradeID INT(10) PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(30),
    TradeDate DATETIME UNIQUE NOT NULL,
    CarName VARCHAR(50),
    CarModel VARCHAR(50),
    Description TEXT,	
    Price INT(8),
    TradeStatus ENUM('Pending', 'Approved', 'Denied') DEFAULT 'Pending',
    CONSTRAINT FX_CustomerID3 FOREIGN KEY (CustomerName)  REFERENCES Customer(CustomerUsername)
    ON UPDATE CASCADE ON DELETE CASCADE
   
);

CREATE TABLE CarCustomer
(
    CarCustomerID INT(10) PRIMARY KEY AUTO_INCREMENT,
    CarPlate VARCHAR(6) UNIQUE,
    CustomerName VARCHAR(30) NOT NULL,
    CONSTRAINT FA_CustomerName FOREIGN KEY (CustomerName)  REFERENCES Customer(CustomerUsername)
    ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE ServiceHistory(
    ServiceID INT(10) PRIMARY KEY AUTO_INCREMENT,
    CarCostumerID INT(10) NOT NULL,
    ServiceType VARCHAR(50) NOT NULL,
    ServiceDate DATE NOT NULL DEFAULT (CURRENT_DATE),
    Description TEXT,
    partsList JSON,
    CONSTRAINT FQ_CarCostumerID FOREIGN KEY (CarCostumerID)  REFERENCES CarCustomer(CarCustomerID)
    ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE Leasing
(
    LeasingID INT(10) PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(30),
    ProductID INT(10) NOT NULL,
    Start_date DATE,
    Final_date DATE,
    Status_ ENUM('Available', 'Pending', 'Renting', 'Finished', 'Cancelled'),
    Price INT(8),
    CONSTRAINT FZ_CustomerID FOREIGN KEY (CustomerName)   REFERENCES Customer(CustomerUsername)
    ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FZ_ProductID FOREIGN KEY (ProductID)   REFERENCES Product(ProductID)
    ON UPDATE CASCADE ON DELETE CASCADE

);


CREATE TABLE Messages(
    MessageID INT(10) PRIMARY KEY AUTO_INCREMENT,
    MessageText TEXT,
    SenderName VARCHAR(30),
    CONSTRAINT FA_Customerr FOREIGN KEY (SenderName)  REFERENCES User(Username)
    ON UPDATE CASCADE ON DELETE CASCADE
 
);


CREATE TABLE Trade_in_eleuthera
(
    TradeINID INT(10) PRIMARY KEY AUTO_INCREMENT,
    FreeDates DATETIME UNIQUE NOT NULL,
    Status_ ENUM('Available', 'Unavailable')
);


CREATE TABLE Package
(
    PackageID INT(10) PRIMARY KEY AUTO_INCREMENT,
    PackageOrderID INT(10) NOT NULL,
    PackcageStatus ENUM('Packed', 'Unpacked'),
    CONSTRAINT FP_PackageOrderID FOREIGN KEY (PackageOrderID) REFERENCES Order_(OrderID)
);

create table Wishlist 
(
    WishlistID INT(10) PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(30) NOT NULL,
    ProductID INT(10) NOT NULL,
    NewsLetter BOOLEAN,
    CONSTRAINT FK_CustomerWishlist FOREIGN KEY (CustomerName) REFERENCES Customer(CustomerUsername)
    ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_ProductWishlist FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
    ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Rating (
RatingID INT(10) PRIMARY KEY AUTO_INCREMENT,
RatinhgValue INT(2) NOT NULL

);