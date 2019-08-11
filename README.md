# Docker Compose for WordPress and XDebug

A Docker Compose configuration I use to debug WordPress sites with VSCode and Xdebug.

* Dump your WordPress site into `src/` 
* `docker-compose up`
* Create a wp-config.php file (required for WP CLI) by running  `docker exec wordpress-xdebug wp config create --dbname=wordpress --dbuser=wordpress --dbpass=wordpress --dbhost=db`
* Import your database SQL file by running `docker exec wordpress-xdebug wp db import <exported.sql>`

