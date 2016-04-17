COPY consumer_complaints FROM '/tmp/data/ConsumerWhole.txt'  DELIMITER ',' CSV;
COPY acs_income_2013 FROM '/tmp/data/e20135us0015000.txt'  DELIMITER ',' CSV;
COPY acs_income_2013 FROM '/tmp/data/m20135us0015000.txt'  DELIMITER ',' CSV;
COPY acs_geo_2013 FROM '/tmp/data/GeoFile.txt'  DELIMITER ',' CSV;