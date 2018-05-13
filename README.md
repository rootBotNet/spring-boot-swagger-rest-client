# spring-boot-swagger-rest-client
This is the client side which uses the ext-service-swagger-rest-api to access the spring-boot-swagger-rest-service.
The client currently only adds new users to the h2 database and views all users in that database.

#Running the programme.
  1)clean install -U
  2)tomcat7:run
  
  You can access the programme at http://localhost:8087.
  This will direct you to a welcome page where you can navigate to add a new user or view all users.
  
  The ext-service-swagger-rest-api needs to be built first. This client is dependant on it.

#The following has not been implemented.
  1)Login
  2)Session Management
  3)Security.
  
  I have removed all unnecessary and commented code for clarity purposes.
