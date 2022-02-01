DROP TABLE IF EXISTS part CASCADE;
CREATE TABLE part(
    part_id SERIAL PRIMARY KEY,
    part_name varchar(50),
    descrip text,
    purchase_cost numeric(18,2),
    retail_cost numeric(18,2)
);

DROP TABLE IF EXISTS serv CASCADE;
CREATE TABLE serv(
    service_id SERIAL PRIMARY KEY,
    serv_name VARCHAR(50),
    service_rate NUMERIC(18,2),
    descrip TEXT
);

DROP TABLE IF EXISTS service_part CASCADE;
CREATE TABLE service_part(
    service_part_id SERIAL PRIMARY KEY,
    service_id INTEGER NOT NULL,
    part_id INTEGER NOT NULL,
    quantity NUMERIC(3,0),
    FOREIGN KEY	(service_id) REFERENCES serv(service_id),
    FOREIGN KEY	(part_id) REFERENCES part(part_id)
);


DROP TABLE IF EXISTS "address" CASCADE;
CREATE TABLE "address"(
    address_id SERIAL PRIMARY KEY,
    street VARCHAR(50) NULL,
    city VARCHAR(50) NULL,
    "state" VARCHAR(2) NULL,
    zip VARCHAR(50) NULL,
    country VARCHAR(50) NULL
);

DROP TABLE IF EXISTS contact CASCADE;
CREATE TABLE contact(
    contact_id SERIAL PRIMARY KEY,
    phone VARCHAR(15),
    email VARCHAR(50)
);

DROP TABLE IF EXISTS salesperson CASCADE;
CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES "address"(address_id) ON DELETE CASCADE,
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES "address"(address_id) ON DELETE CASCADE,
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES "address"(address_id) ON DELETE CASCADE,
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS car CASCADE;
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    make VARCHAR(50),
    model VARCHAR(50),
    color VARCHAR(50),
    "year" numeric(4,0),
    for_sale BOOLEAN NOT NULL
);

DROP TABLE IF EXISTS history CASCADE;
CREATE TABLE history(
    history_id SERIAL PRIMARY KEY,
    vin varchar(50) NOT NULL,
    car_id INTEGER NOT NULL,
    last_updated TIMESTAMP WITH TIME ZONE  DEFAULT timezone('utc', now()),
    -- FOREIGN KEY	(vin) REFERENCES car(vin),
    FOREIGN KEY	(car_id) REFERENCES car(car_id)
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY	(car_id) REFERENCES car(car_id),
    FOREIGN KEY	(customer_id) REFERENCES customer(customer_id)
);

DROP TABLE IF EXISTS ticket_history CASCADE;
CREATE TABLE ticket_history(
    ticket_history SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    history_id INTEGER NOT NULL,
    FOREIGN KEY	(ticket_id) REFERENCES ticket(ticket_id),
    FOREIGN KEY	(history_id) REFERENCES history(history_id)
);

DROP TABLE IF EXISTS service_ticket CASCADE;
CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    service_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL, 
    service_total_cost NUMERIC(18,2),
    FOREIGN KEY	(ticket_id) REFERENCES ticket(ticket_id),
    FOREIGN KEY	(service_id) REFERENCES serv(service_id),
    FOREIGN KEY	(car_id) REFERENCES car(car_id)
);

DROP TABLE IF EXISTS service_ticket_mechanic CASCADE;
CREATE TABLE service_ticket_mechanic(
    service_ticket_mechanic SERIAL PRIMARY KEY,
    mechanic_id INTEGER NOT NULL, 
    service_ticket_id INTEGER NOT NULL,
    FOREIGN KEY	(mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY	(service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);

DROP TABLE IF EXISTS invoice CASCADE;
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    FOREIGN KEY	(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY	(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY	(car_id) REFERENCES car(car_id)
);

DROP TABLE IF EXISTS payment CASCADE;
CREATE TABLE payment(
    payment_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    invoice_id INTEGER NOT NULL,
    total_cost NUMERIC(18,2),
    payment_time TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc', now()),
    FOREIGN KEY	(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY	(invoice_id) REFERENCES invoice(invoice_id)
);