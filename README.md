
# There are 5 step to Databasae connectivity: #
---------------
### 1. Register the Driver Class: ###
## Explain: ##
   -> This step loads the JDBC driver class into memory. It's essential to load the driver class before connecting to the database.
   
   ### Example: ###
   Class.forName("com.mysql.cj.jdbc.Driver");
   
---------------
### 2. Establish the Connection: ###
---------------
   -> After registering the driver class, you need to establish a connection to the database. 
   -> This is done using the DriverManager.getConnection() method, which takes the URL of the database, username, and password as parameters.
   
   Example: Connection connection = DriverManager.getConnection(url, username, password);

---------------   
### 3. Create a Statement/PreparedStatement Object: ###
---------------
   -> Once the connection is established, you create a Statement or PreparedStatement object. 
   -> This object is used to send SQL queries to the database. 
   -> You can create a statement using the createStatement() or prepareStatement() method of the Connection object.
   
   Example: Statement statement = connection.createStatement();

---------------
### 4. Execute SQL Queries: ###
---------------
   -> After creating the statement object..
         # you can execute SQL queries using the executeQuery() method for retrieving data
		 # executeUpdate() method for performing data manipulation operations (like insert, update, delete).
		 
   Example: ResultSet resultSet = statement.executeQuery("SELECT * FROM table_name");

---------------  
### 5. Process the Results (if any): ###
---------------
   -> If you executed a query that returns results (e.g., a SELECT query), you need to process the results.
   -> This typically involves iterating over the ResultSet object to retrieve data.
   
   Example: while (resultSet.next()) {    // Process each row of the result set
                  String columnName = resultSet.getString("column_name"); // Process data...
            }

  
