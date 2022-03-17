User Stories

As a user,
So that I can see my favourite websites,
I'd like to be shown a list of my bookmarks.

As a user,
So that I can save my favourite websites,
I'd like to save my bookmarks.

As a user,
So that my list of favourite websites doesn't get cluttered,
I'd like to delete a bookmark.

As a user,
So that I can add new websites to my list of bookmarks,
I'd like to update my bookmarks.

As a user,
So that I can contextualise my favourite website,
I'd like to add a comment to a bookmark.

As a user,
So that I can organise my bookmarks,
I'd like to be able to add a tag to a bookmark.

As a user,
So that I only see results I'm interested in at that moment,
I'd like to be able to filter bookmarks by tag.

As a administrator,
So that the system doesn't get compromised,
I'd like Users to only manage their own bookmarks.

#### Database setup instructions

1. Connect to psql
2. Create the bookmark manager database using psql
3. Make sure you're connected to bookmark manager database using the \c command
4. Run the SQL command in the db/migrations/01_create_bookamrks_table.sql file

#### Test database setup instructions
The test database is vital for our tests. If we have an ever changing database then many of our tests that are relying on a very specific set of data to present in the database such as a test that expect there to only be a specific set of URLs in our database. If we add one more URL then all tests like this will fail.

To combat this we need to create a fresh new database every time we run our tests (a database thats empty). Then we will add what we need for the purpose of our tests. 

To do this we need to create a new DATABASE, and also a new 'bookmarks' table.

  ##### setting up a test database
  For each environment we create we will need a totally new DATABASE. The one we already created is our 'production' dataabse, this will contain all the real time information i.e. for facebook this would contain real users information and friends and etc..

  We now need to create one for our tests, there could be others for a 'development' database where you can play around with it on your local machine, and save data to it. 

  1. run ``psql`` and create a new DATABASE called 'bookmark_manager_test' 
  2. within this new database create the 'bookmarks' table with a VARCHAR set to 60
  3. list the datbase using the correct command to see your database

  You have now created a new database which will specifically be used for our tests.

