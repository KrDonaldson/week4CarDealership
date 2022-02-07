-- ALTER TABLE salesperson
-- ADD role VARCHAR(50);

UPDATE salesperson
SET role = 'Sales Consultant'
WHERE salesperson_id = 2;

UPDATE salesperson
SET role = 'Key Account Manager'
WHERE salesperson_id = 1;

UPDATE salesperson
SET role = 'Direct Salesperson'
WHERE salesperson_id = 3;

UPDATE salesperson
SET role = 'Account Manager'
WHERE salesperson_id = 4;

UPDATE salesperson
SET role = 'Sales Representative'
WHERE salesperson_id = 5;

UPDATE salesperson
SET role = 'Sales Representative'
WHERE salesperson_id = 6;