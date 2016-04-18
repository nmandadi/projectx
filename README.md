# Instructions
This evaluation assignment is executed using Postgres database both on Windows and Linux environments.  Ignored indexing, partitioning on the tables because of small data set.  Defined a primary key on ACS_INCOME_2013 table and set several not null columns on all tables.  Referential integrity constraints will ensure best data integrity, but needs discussions with other teams and need more time.
Implementation of this assignment is broken down into multiple tasks like, data analysis, data cleansing, database objects delimitation and loading of all 4 data files into corresponding tables. Data validation is done by comparing the records count from source to target with random row checks for the data quality.

For convenience 3 Jpg report files are included for quick glance, and separate folder is created for these reports.  Each report is a zip file in this folder, and the reports analysis is based on the users prospective.  Main purpose of this project is to process the data from different agencies on the complaints, so three reports are based on the number of complaints from states, product,top and bottom 5 zip codes.  Users might want to see the complaints from different races and income levels as well.  Please follow the instructions as described in order for successful installation.
## SCP the below files to /tmp on the postgres server machine
```
create_tables.sql
load_data.sql
data.tar.gz
```

## Uncompress zipped data file
```
tar -xvzf data.tar.gz
```

## Set database details and credentials
```
export HOST=localhost
export DB=postgres
export PORT=5432
export USER=testuser
export PASS=test1234
```

## Run DDL statements
```
PGPASSWORD=$PASS psql -h $HOST -U $USER -p $PORT -d $DB -f /tmp/create_tables.sql > /tmp/create.out
```

## Load data
```
PGPASSWORD=$PASS psql -h $HOST -U $USER -p $PORT -d $DB -f /tmp/load_data.sql > /tmp/load.out
```
