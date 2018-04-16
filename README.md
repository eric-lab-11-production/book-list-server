# Project Name

Book Application - server-side

**Author**: Eric Singleton
**Version**: 1.0.0 
## Overview
This is the backend relating to the client-side repo in the same organization. This is an assignment as well as a learning experience to expand upon Cross Origin Resource Sharing between a front end hosted as a github page and the backend which lives through Heroku

## Getting Started
This runs on Nodejs so if you desire too, after downloading you will need to install node. After which you can run npm i and it should install the required dependencies. So no conf file exists, you will have to set your confvars to the desired local variables.

## Architecture
Along with node, the dependencies used are Express, PG, and CORS. This allow for the communication with the postgreSQL database on heroku and the cross origin request. 

## Change Log
* 04-14-2018 10:00am - Created the file structue for the server repo
* 04-14-2018 11:00am - Setup a basic node server and tested to see if it connects
* 04-14-2018 11:45am - Setup a local database for testing
* 04-14-2018 12:00pm - Made sure the confvars matched herokus confvars
* 04-14-2018 1:30pm - Added a clienturl confvar for redirects
* 04-14-2018 2:00pm - Added cors dependency
* 04-14-2018 3:00pm - Testing cors locally and with heroku
* 04-14-2018 5:00pm - Testing different routes 
* 04-14-2018 8:00pm - Route adjustments with setting headers
* 04-15-2018 2:00pm - Checked confvars and confirmed working redirects locally and production
* 04-15-2018 11:00pm - Removed comments and edited a GET request to match the assignment

## Credits and Collaborations
MDN
Stackoverflow