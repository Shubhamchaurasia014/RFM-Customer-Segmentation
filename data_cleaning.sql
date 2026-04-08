/* Creating table with text datatype to prevent errors, so i
will change datatypes later after cleaning the dataset. */
CREATE TABLE online_retail(
  invoice_no TEXT,
  stock_code TEXT,
  description TEXT,
  quantity TEXT,
  invoice_date TEXT,
  unit_price TEXT,
  customer_id TEXT,
  country TEXT
);
SELECT * FROM online_retail;

DELETE FROM online_retail                        
WHERE invoice_no = 'InvoiceNo';

-- Remove null values
DELETE FROM online_retail
WHERE customer_id IS NULL
OR TRIM(customer_id) = '';

-- Clean quantity
DELETE FROM online_retail
WHERE quantity !~ '^[0-9]+$';

-- Clean unit price
DELETE FROM online_retail
WHERE unit_price !~ '^[0-9]+(\.[0-9]+)?$';

-- Checking invoice data
SELECT invoice_date FROM online_retail LIMIT 20;

-- Convert text datatypes to proper datatypes
ALTER TABLE online_retail
ALTER COLUMN quantity TYPE INTEGER USING quantity::INTEGER,
ALTER COLUMN unit_price TYPE NUMERIC USING unit_price::NUMERIC,
ALTER COLUMN customer_id TYPE INTEGER USING CAST(customer_id AS FLOAT)::INTEGER,
ALTER COLUMN invoice_date TYPE TIMESTAMP USING invoice_date::TIMESTAMP;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'online_retail';

-- Revenue column
SELECT *, quantity * unit_price AS revenue
FROM online_retail LIMIT 10;

-- RFM(recency, frequency, monetary) analysis
SELECT customer_id, 
EXTRACT(DAY FROM (SELECT MAX(invoice_date) FROM online_retail) - MAX(invoice_date)) AS recency,
COUNT(DISTINCT invoice_no) AS frequency,
SUM(quantity * unit_price) AS monetary
FROM online_retail
GROUP BY customer_id
ORDER BY monetary DESC;

-- Create RFM table for reusability
CREATE TABLE rfm_table AS
SELECT customer_id, 
EXTRACT(DAY FROM (SELECT MAX(invoice_date) FROM online_retail) - MAX(invoice_date)) AS recency,
COUNT(DISTINCT invoice_no) AS frequency,
SUM(quantity * unit_price) AS monetary
FROM online_retail
GROUP BY customer_id;

-- Save it to csv


