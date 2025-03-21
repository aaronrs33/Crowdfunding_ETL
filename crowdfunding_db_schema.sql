-- Create contacts table
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50)
);

-- Create category table
CREATE TABLE category (
	category_id VARCHAR(30) PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);

-- Create subcategory table
CREATE TABLE subcategory (
	subcategory_id VARCHAR(30) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

-- Create campaign table
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(150),
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(10),
	backers_count INT NOT NULL,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(30) NOT NULL,
	subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);








	