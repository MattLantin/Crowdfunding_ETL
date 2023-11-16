-- Drop tables if they already exist
DROP TABLE IF EXISTS campaign CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS contacts CASCADE;

-- Create table for contacts data.
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email_address VARCHAR(50) NOT NULL
);

-- Create table for category data.
CREATE TABLE category (
    category_id VARCHAR(30) PRIMARY KEY,
    category VARCHAR(30)
);

-- Create table for subcategory data.
CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) PRIMARY KEY,
    subcategory VARCHAR(30)  
);

-- Create table for campaign data.
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name VARCHAR(30) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(30) NOT NULL,
    backers_count INT,
    country VARCHAR(5) NOT NULL,
    currency VARCHAR(5) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(30),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    subcategory_id VARCHAR(30),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
