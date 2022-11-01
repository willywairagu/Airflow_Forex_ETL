# Create a new directory called: "Airflow_Forex_ETL"
C:\Users\Wairagu>mkdir Airflow_Forex_ETL

# Change directory to "Airflow_Forex_ETL"
C:\Users\Wairagu>cd Airflow_Forex_ETL

# Run VS Code
C:\Users\Wairagu>code .


# Deploying Airflow
C:\Users\Wairagu\Airflow_Forex_ETL>docker-compose up -d

# Check all the running containers
C:\Users\Wairagu\Airflow_Forex_ETL>docker ps


# Go inside the airflow-worker container
C:\Users\Wairagu\Airflow_Forex_ETL>docker exec -it fdebb803a94d /bin/bash

# Test the new dag: "is_api_available"
airflow@fdebb803a94d:/opt/airflow$ airflow tasks test forex_pipeline is_api_available 2022-07-31

# Connect to the container
C:\Users\Wairagu\Airflow_Forex_ETL>docker exec -it 230f5c259ec6 /bin/bash

# Connect to the database "airflow" inside the container
root@230f5c259ec6:/# psql -Uairflow

# Check the new table: "rates"
airflow=# SELECT * FROM rates;


# Go into the airflow-worker container
C:\Users\Wairagu\Airflow_Forex_ETL>docker exec -it 01e04c68bf5d /bin/bash

# Change directory to /tmp
airflow@01e04c68bf5d:/opt/airflow$ cd /tmp

# Print the first 10 rows 
airflow@01e04c68bf5d:/tmp$ head processed_data.csv