# Airflow-Forex-ETL-Data-Pipeline

The ETL process will extract data from fixer.io API, transform it, and load it to a PostgreSQL database. This project aims to have an automated process that constantly feeds the PostgreSQL database with data. Every 2 minutes, the ETL process will load an updated batch of Forex data.

### The components of the architecture are:

1. Airflow Webserver
2. Airflow Scheduler
3. Airflow Worker
4. Airflow Trigger
5. Flower
6. Postgres Database
7. pgAdmin UI
8. Redis Database

__Note__
To learn the basics of airflow and how to get started read this article.... 
https://medium.com/@the_data_plumber/a-deep-dive-into-apache-airflow-part-1-278357d17699

## Creating the Pipeline
1. Run docker-compose up -d to set up Airflow.
2. Log in to Airflow at localhost:8080.
3. Create the necessary connections.
4. Execute the Pipeline.
5. Log in to PgAdmin at localhost:5050.
6. Set up a new server.
7. Query the data.
