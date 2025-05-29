INSERT INTO Product VALUES (1, 'BMW X5', 65000.00, 5, 'Available for purchase'),
(2, 'Mercedes C-Class', 45000.00, 3, 'Available for leasing'),
(3, 'Audi A4', 40000.00, 0, 'Unavailable'),
(4, 'Tesla Model S', 80000.00, 1, 'Available for leasing'),
(5, 'Ford Focus', 20000.00, 10, 'Available for purchase'),
(6, 'Toyota Corolla', 18000.00, 8, 'Available for leasing'),
(7, 'Honda Civic', 22000.00, 0, 'Unavailable'),
(8, 'Chevrolet Malibu', 25000.00, 4, 'Available for leasing'),
(9, 'Nissan Altima', 23000.00, 7, 'Available for purchase'),
(10, 'Hyundai Sonata', 24000.00, 9, 'Available for leasing');


INSERT INTO User VALUES ('AdminJoe', 'John', 'Doe', 'john@email.gr', 'password123', 12345678, 'Favierou', 123),
('AdminJane', 'Jane', 'Smith', 'jane@email.gr', 'securepass', 9876543, 'Gerokostopoulou', 45),
('MechJones', 'Mike', 'Jones', 'mike@email.gr', 'mikepass', 55512345, 'Kolokotroni', 78),
('MechaSarah', 'Sarah', 'Wilson', 'sarah@email.gr', 'sarah123', 11122233, 'Hfaistou', 12),
('david_brown', 'David', 'Brown', 'david@email.gr', 'davidpass', 44455566, 'Astiggos', 34),
('lisa_taylor', 'Lisa', 'Taylor', 'lisa@email.gr', 'lisapass', 77788899, 'Patrews', 56),
('robert_garcia', 'Robert', 'Garcia', 'robert@email.gr', 'robertpass', 22233344, 'Gounari', 89),
('emily_miller', 'Emily', 'Miller', 'emily@email.gr', 'emilypass', 66677788, 'Rhga Fereou', 23),
('thomas_clark', 'Thomas', 'Clark', 'thomas@email.gr', 'thomaspass', 99900011, 'Serrwn', 67),
('amanda_white', 'Amanda', 'White', 'amanda@email.gr', 'amandapass', 33344455, 'Antonys', 90);




INSERT INTO Customer VALUES ('david_brown'),
('lisa_taylor'),
('robert_garcia'),
('emily_miller'),
('thomas_clark');


INSERT INTO Mechanic VALUES ('MechJones'),
('MechaSarah');



INSERT INTO Admin VALUES ('AdminJoe'),
('AdminJane');



INSERT INTO Order_ VALUES (1, 1001, '2023-01-15', 'lisa_taylor', 1, 1, '2023-01-10', '2023-01-20', 'Finished', NULL, 65000.00),
(2, 1002, '2023-02-20', 'robert_garcia', 3, 1, '2023-02-15', '2023-02-25', 'Ready for Pickup', NULL, 42000.00),
(3, 1003, '2023-03-05', 'emily_miller', 6, 1, '2023-03-01', '2023-03-10', 'Pending', NULL, 55000.00),
(4, 1004, '2023-04-10', 'thomas_clark', 8, 1, '2023-04-05', '2023-04-15', 'Cancelled', NULL, 23000.00),
(5, 1005, '2023-05-15', 'thomas_clark', 4, 1, '2023-05-10', '2023-05-20', 'Finished', NULL, 28000.00),
(6, 1006, '2023-06-20', 'emily_miller', 9, 1, '2023-06-15', '2023-06-25', 'Ready for Pickup', NULL, 120000.00);



INSERT INTO Test_Drive VALUES (1, '2023-01-05 10:00:00', 'emily_miller', 'BMW X5'),
(2, '2025-02-10 11:30:00', 'lisa_taylor', 'Audi A4'),
(3, '2025-03-15 09:15:00', 'thomas_clark', 'Ford Mustang'),
(4, '2025-04-20 14:00:00', 'emily_miller', 'Volkswagen Golf'),
(5, '2025-05-25 13:45:00', 'robert_garcia', 'Toyota Camry');




INSERT INTO Repairs VALUES ('ABC123', 'Toyota Corolla', '2018', 'thomas_clark', 4500),
('XYZ456', 'BMW X5', '2020', 'lisa_taylor', 3000),
('LMN789', 'Ford Focus', '2019', 'emily_miller', 2500),
('DEF012', 'Chevrolet Malibu', '2021', 'thomas_clark', 2000);



INSERT INTO Trade_In VALUES (1, 'lisa_taylor', '2023-01-10 10:00:00', 'Toyota Corolla', '2018', 'Good condition, minor scratches',NULL),
(2, 'robert_garcia', '2023-01-11 11:30:00', 'Honda Civic', '2019', 'Excellent condition, no issues',NULL),
(3, 'emily_miller', '2023-01-12 14:15:00', 'Ford Focus', '2017', 'Fair condition, needs minor repairs',NULL),
(4, 'robert_garcia', '2023-01-13 09:45:00', 'Chevrolet Malibu', '2020', 'Like new, low mileage',NULL),
(5, 'thomas_clark', '2023-01-14 16:20:00', 'Nissan Altima', '2016', 'Good condition, well-maintained',NULL),
(6, 'thomas_clark', '2023-01-15 13:05:00', 'Subaru Impreza', '2018', 'Very good condition, all-wheel drive',NULL);





INSERT INTO ServiceHistory VALUES (1, 'ABC123', 'Oil Change', '2023-01-15', 'Regular maintenance'),
(2, 'XYZ456', 'Brake Replacement', '2023-02-20', 'New brake pads and rotors'),
(3, 'LMN789', 'Tire Rotation', '2023-03-10', 'Rotated tires for even wear'),
(4, 'DEF012', 'Battery Replacement', '2023-04-05', 'Replaced old battery with new one');


INSERT INTO Leasing VALUES (1, 'robert_garcia', 2, '2023-01-01', '2023-12-31', 'Finished', 4500.00),
(2, 'lisa_taylor', 7, '2023-02-01', '2023-11-30', 'Renting', 4900.00),
(3, 'emily_miller', 3, '2023-03-01', '2024-02-29', 'Renting', 5200.00),
(4, 'thomas_clark', 5, '2023-04-01', '2024-04-02', 'Cancelled', 4800.00);



INSERT INTO Messages VALUES (1, 'Do we have any electric vehicles in stock?', 'MechJones');
