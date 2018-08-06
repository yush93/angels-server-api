# angels-server-api
### Rails-API with Token Based Authentication
***
#### Initial Configuration
To get the API-Server started, clone the repository and do following:

**In terminal:**
1. **Installing all the required gems**

    `bundle install`

2. **Setting up database**

    `rails db:create`

    *I have used PostgreSQL. For some reason the sqlite-3 (default db) is not working for me. So I had to use PostgreSQL. The database configurations are inside **database.yaml**. Please verify the configuration before running following command.*

3. **Setting up relations in database**

    `rails db:migrate`
    
    *The migration files are inside **db/migrate/** folder. It contains the code to create the relations and associations among them.*

4. **Setting up dummy data**

    `rails db:seed`
    
    *Run the following command to insert some dummy data to the created relations. It will help get started. Please check the file **seeds.rb** inside **db/** folder and make sure the **lines 8-21** are uncommented.*


#### Running the server

1. **Start Server**

    `rails s`
    

##### The API Server is now ready.
