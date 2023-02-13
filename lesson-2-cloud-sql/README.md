# Google Cloud SQL

##### _Related code and notebooks_
1. <a href="./setup.sql">Setup Database and User</a> - Contains the list of postgresSQL commands for inital setup
2. <a href="./create_db_tables_pg.sql">Create table schemas</a> - Sql file to create tables  
3. <a href="./load_db_tables_pg.sql">Load Data</a> - Sql file to insert data
4. <a href="./explore.sql">Working with Data</a> - Running SQL commands againsts the datasets

----
##### Info on Google Cloud SQL
Google cloud SQL is the managed relational database service on Google Cloud Platform. It offers different distributions of relations databases, namely _MySql, SQL Server, PostgresSQL_.
 
In the lesson, we work with PostgresSQL by setting up a development instance of the database. One of the learnings for me personally was learning how to connect to the database instance without opening the instance for public access by any IP address. In summary, I made use of proxy connection to connect securely with the database instance.

To enable connecting with the database server, I made use of the `cloud sql proxy tool`. By executing the below script, we can open a socket connection with the database instance that allows to access the postgresSQL server over localhost, as if the server is running on the same machine. All of this over a secure proxy connection.
```shell
./cloud_sql_proxy -instances=<DB-instance-name>=tcp:54321 \
    -credential_file=$HOME/.config/gcloud/application_default_credentials.json
```

Post setting up the connection to the server, we can connect to the database server using the below command - 
```shell
psql --host=localhost --port=54321 --username=postgres --dbname=postgres -W
``` 
After this, we can move ahead with the development by setting up databases and namespaces for the users.

