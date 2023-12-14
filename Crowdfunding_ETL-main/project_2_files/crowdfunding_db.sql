
CREATE TABLE campaign (
    cf_id INTEGER   NOT NULL,
    contact_id INTEGER   NOT NULL,
    company_name VARCHAR   NOT NULL,
    description VARCHAR   NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR NOT NULL,
   	backers_count INTEGER NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    staff_pick VARCHAR NOT NULL,
    spotlight VARCHAR NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
	primary key (cf_id),
	foreign key (category_id) references category(category_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
	
   
);

CREATE TABLE category (
    category_id VARCHAR NOT NULL,
    category VARCHAR NOT NULL,
	primary key (category_id)
);

CREATE TABLE contacts (
    contact_id INTEGER NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
	primary key(contact_id)
   
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR NOT NULL,
    subcategory VARCHAR NOT NULL,
	primary key (subcategory_id)
    
);
select * 
from campaign;

select * 
from category;

select * 
from contacts;

select * 
from subcategory;

