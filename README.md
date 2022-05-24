## Requirement
 - Docker
 - Docker compose 
 - Terminal
 

## Steps::

- Run ```docker compose up``` to make all the nececary container.
- --skipable-- Seed the your MySQL db with seeder.sql.
- Go to test-php8 container, using ```docker exec -it test-php8 /bin/bash```.
- Copy the config from ```bb-config-sample.php``` to ```bb-config.php```.
- Update permision using ```chmod u+rw /var/www/html/bb-data/{cache,uploads}```
- If you prefer fresh start, go to ```http://localhost:8004/install/index.php```.
- Else simply remove the install folder:  ```/var/www/html/install/```

##Files
- Docker-compose: to build 2 container: 1 base to serve the app using php + apache, the other will be for database (MySQL).
- Dockerfile script.
- MySQL seeder. Prepared admin: user: ```foo@bar.baz``` --- pass: ```foo```.
