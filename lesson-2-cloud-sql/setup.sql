CREATE DATABASE pknn_retail_db;
CREATE USER pknn_retail_user WITH ENCRYPTED PASSWORD 'passkey';
GRANT ALL ON DATABASE pknn_retail_db TO pknn_retail_user;

-- post this we can connect using the below shell command
-- psql --host=localhost --port=54321 --username=pknn_retail_user --dbname=pknn_retail_db -W