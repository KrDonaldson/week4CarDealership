INSERT INTO address(street, city, "state", zip, country) VALUES
('771 Holmberg Street', 'Shawnee Mission', 'KS', '66215', 'United States'),
('75520 Kennedy Street', 'Washington', 'DC', '20425', 'United States'),
('85592 Granby Road', 'Monticello', 'MN', '55585', 'United States'),
('905 Hovde Junction', 'Sacramento', 'CA', '95818', 'United States'),
('5 Sage Way', 'Dulles', 'VA', '20189', 'United States'),
('71 Corry Junction', 'Arlington', 'VA', '22212', 'United States'),
('82 Lotheville Way', 'Southfield', 'MI', '48076', 'United States'),
('8 Forest Dale Park', 'New Haven', 'CT', '06533', 'United States'),
('49 Badeau Center', 'Raleigh', 'NC', '27621', 'United States'),
('2 Stone Corner Street', 'Athens', 'GA', '30610', 'United States');

INSERT INTO contact(phone, email) VALUES
('508-438-6496','bterney0@abc.net.au'),
('781-425-3910','gpentony1@nature.com'),
('546-595-0715','bcausley2@pagesperso-orange.fr'),
('660-230-3732','astockell3@nytimes.com'),
('202-353-7062','cscarlin4@foxnews.com'),
('635-850-6346','rlowsely5@jalbum.net'),
('760-786-9841','rpiddocke6@parallels.com'),
('360-221-5154','nmarvell7@hexun.com'),
('836-175-2101', 'jklee8@gizmodo.com'),
('888-571-2329', 'loultram9@icq.com');

INSERT INTO part(part_name, descrip, purchase_cost, retail_cost) VALUES
('Battery', 'The battery delivers the electricity needed to run your vehicles 
electrical components. Without a battery, your car wont run','3118.24', 
'5999.99'),
('Engine', 'The heart and soul of your vehicle is the internal combustion engine
. The engine block features parts such as the timing chain, camshaft, crankshaft
, spark plugs, cylinder heads, valves and pistons', '1622.82', '2999.99'),
('Rear Suspension', 'As with the front suspension, the rear suspension 
contributes to the handling and ride quality of the vehicle. Systems can vary, 
but they usually are made up of shocks, coil springs, ball joints, control arms 
and CV joints', '4072.91', '6999.99'),
('Rear Axle', 'Key part of the suspension system to which the rear wheels are 
mounted', '4588.37', '5999.99'),
('Muffler', 'Keeps the exhaust system quiet through the use of baffles or other 
materials that reduce or muffle the sound.', '3397.41', '4999.99'),
('Alternator', 'Part of the electrical system, the alternator charges the 
battery and powers the electrical system while your car is running.', '462.37',
'599.99'),
('Radiator', 'The radiator is responsible for helping the engine keep cool by 
removing heat from coolant before it is pumped back through the engine.', 
'2264.89', '3999.99'),
('Catalytic Converter', 'A device that controls emissions from your vehicle, the 
catalytic converter transforms harmful gases and pollutants into less harmful 
emissions before they leave the cars exhaust system.', '4598.36', '5999.99'),
('Transmission', 'The transmission is a gearbox filled with gears and gear 
trains that makes effective use of the engines torque to change the gears and 
power the vehicle.', '4371.55', '5999.99'),
('Breaks', 'Found on all four wheels, your brakes are one of the most important 
safety systems on your vehicle. Disc brakes can be found on the front and back 
wheels and feature brake pads and calipers. Drum brakes with brake shoes and 
wheel cylinders may be found on the back wheels of some vehicles.', '1280.31',
'2999.99');

INSERT INTO serv(serv_name, service_rate, descrip) VALUES
('Oil Change', '53.26', 'This is an oil change'),
('Oil Filter Change', '53.26', 'Included with Oil Change but we still charge 
you.'),
('Wiper Blades Replacement', '199.99', 'We are charging you just for the 
inconvenience.'),
('Air Filter Replacement', '199.99', 'We are charging you just for the 
inconvenience.'),
('Scheduled Maintenance', '98.76', 'Thank you for taking care of your car.'),
('Battery Replacement', '98.76', 'This is not terribly difficult to do. But 
it is sometimes necessary.');

INSERT INTO mechanic(first_name, last_name, address_id, contact_id) VALUES
('Sapphira', 'Fawdry', 1, 1),
('Pearline', 'Vidler', 2, 2),
('Ilario', 'Trevor', 3, 3),
('Felike', 'Cudihy', 4 , 4),
('Lisetta', 'Okenden', 5 , 5),
('Sabine', 'McKelvey', 6 , 6 ),
('Peyton', 'Subhan', 7 , 7),
('Noll', 'Bingell', 8, 8);

INSERT INTO customer(first_name, last_name, address_id, contact_id) VALUES
('Maurits', 'Greschke', 9, 9),
('Farica', 'Gurko', 10, 10),
('Ardenia', 'McGlynn', 1, 1),
('Carine', 'Gricks', 2, 2),
('Willi', 'Bouldon', 3, 3),
('Quentin', 'Boulsher', 4 , 4),
('Lorinda', 'Sangra', 5 , 5),
('Terence', 'Percy', 8, 8);

INSERT INTO salesperson(first_name, last_name, address_id, contact_id) VALUES
('Xylina', 'Daoust', 9, 9),
('Angil', 'Smallpeice', 10, 10),
('Maggi', 'Handley', 1, 1),
('Mozes', 'Aylesbury', 2, 2),
('Sileas', 'Brighouse', 3, 3),
('Hamlen', 'Davidsen', 4 , 4),
('Gail', 'Bentick', 5 , 5),
('Skippy', 'Bottoner', 8, 8);

INSERT INTO car(vin, make, model, color, "year", for_sale) VALUES
('1G6DF5E50C0256339', 'Cadillac', 'Escalade EXT','Crimson',2007,FALSE),
('5FNYF3H27AB138887','Toyota','Celica','Green',2001,FALSE),
('YV126MFC8F1015455','Chevrolet','S10','Fuscia',1995,TRUE),
('2LNBL8CV6AX759417','Pontiac','Tempest','Crimson',1961,FALSE),
('1G6DC8E3XE0193522','Jeep','Grand Cherokee','Green',1996,FALSE),
('KMHEC4A43FA791306','Infiniti','QX','Red',1999,FALSE),
('4T3BA3BB9AU647631','Cadillac','Escalade','Aquamarine',2007,TRUE),
('1N6AF0KY7FN101423','Chevrolet','Tahoe','Blue',1998,TRUE),
('1GT022CG7EF996299','Volkswagen','rio','Turquoise',2001,TRUE),
('4T1BF1FK7CU013701','Mitsubishi','Outlander Sport','Violet',2011,TRUE),
('3C6JR6CT3DG281044','Chevrolet','Silverado 1500','Red',2006,TRUE),
('1N4AB7AP1DN803756','Nissan','Rogue','Indigo',2012,FALSE),
('1FAHP3FN5AW622360','Buick','Verano','Turquoise',2012,TRUE),
('1VWAH7A33EC863215','MINI','Countryman','Mauv',2012,FALSE),
('SCFEBBBK0EG356202','GMC','2500 Club Coupe','Blue',1998,FALSE),
('1C4AJWAG1DL948850','Chrysler','Aspen','Teal',2007,FALSE),
('WAUHF98PX7A429509','Maserati','Biturbo','Crimson',1985,TRUE),
('5NPEB4AC3EH345291','Dodge','Charger','Fuscia',2011,TRUE),
('WDDNG7DB1CA845739','Land Rover','Range Rover','Yellow',2003,TRUE),
('WBY2Z2C59EV000279','Mercedes-Benz','M-Class','Blue',2002,FALSE);

INSERT INTO history(car_id, vin) VALUES
(1, '1G6DF5E50C0256339'),
(2, '5FNYF3H27AB138887'),
(4, '2LNBL8CV6AX759417'),
(5, '1G6DC8E3XE0193522'),
(6, 'KMHEC4A43FA791306');

INSERT INTO ticket(car_id, customer_id) VALUES
(1, 1),
(2, 2),
(4, 3),
(5, 4),
(6, 2);

INSERT INTO invoice(salesperson_id, customer_id, car_id) VALUES
(1, 7, 39),
(2, 3, 38),
(3, 3, 37),
(7, 4, 33),
(1, 7, 31);

INSERT INTO payment(customer_id, invoice_id, total_cost) VALUES
(7, 1, 4345),
(3, 2, 14740),
(3, 3, 10067),
(4, 4, 7109),
(7, 5,7515);

INSERT INTO serv(serv_name, service_rate, descrip) VALUES
('Alternator Replacement', 250, 'Car wont start? Engine stalling? Electrical
issues? Battery not charging? You may need a new alternator.'),
('Break Service', 85, 'Your service tech will check your brake pads, rotors, 
clips and calipers to make sure that every component is working as it should'),
('Break Replacement', 95, 'Break pads worn? We got you covered!'),
('Transmission Replacement', 175,'A time-consuming operation, this involves 
disconnecting fluid lines, electrical wiring, engine mounts, exhaust system 
components, axles or driveshafts and more.')

INSERT INTO service_part(service_id, part_id, quantity) VALUES
(6, 1, 1),
(7,6,1),
(10,9,1),
(9,10,4);

INSERT INTO part(part_name, descrip, purchase_cost, retail_cost) VALUES
('oil filter', 'The filters job is to cycle the clean oil back through the 
engine parts to keep the components running as smoothly as possible.', 0.20, 15)

INSERT INTO service_part(service_id, part_id, quantity) VALUES
(2, 11, 1);

INSERT INTO service_ticket(ticket_id, service_id, car_id, service_total_cost) VALUES
(1, 1, 1, 153.26),
(1, 2,1, 50.00),
(3, 6,4, 228.76),
(4, 8,5, 250),
(5, 10,6, 6524.99)

INSERT INTO service_ticket_mechanic(mechanic_id, service_ticket_id) VALUES
(1,1),
(5,2),
(1,3),
(8,4),
(1,5);

INSERT INTO ticket_history(ticket_id, history_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);