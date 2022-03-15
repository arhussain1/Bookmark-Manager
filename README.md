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

Database setup instructions

1. Connect to psql
2. Create the bookmark manager database using psql
3. Make sure you're connected to bookmark manager database using the \c command
4. Run the SQL command in the db/migrations/01_create_bookamrks_table.sql file