# Instructions
These file are executed and tested in Postgres datbase.
Indeing, and partitioning is not considered as the data set is small 
Addressed Primary key  on ACS_INCOME_2013 table, defined the not null columns in all tables
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
