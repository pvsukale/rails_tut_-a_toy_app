# Info

This is the repository I created for the first chapter of Rails tutorial.


## How to run locally

```
cd rails_tut_hello_app
bundle
rails s
```

## exercises and solutions

### Q:(For readers who know CSS) Create a new user, then use your browser’s HTML inspector to determine the CSS id for the text “User was successfully created.” What happens when you refresh your browser?

The message disappers because it's a flash message.

### Q: What happens if you try to create a user with a name but no email address?

There are no errors becuase we haven't added the validations yet.

### Q: What happens if you try create a user with an invalid email address, like “@example.com”?

It still works just fine.

### Q:Destroy each of the users created in the previous exercises. Does Rails display a message by default when a user is destroyed?

yes it does.

###  By referring to Figure 2.11, write out the analogous steps for visiting the URL /users/1/edit.

* GET Request hits the router then handles control to the edit method in user controller
* callback set_user finds the user using params and edit method renders an edit page
* User makes changes the content and makes a patch request to "/users"
* This invokes the update controller 
* callback set_user finds the user from database using params and updates using and active record query if this is successful a show user page is rendered with notice " User was successfully updated"

### Find the line in the scaffolding code that retrieves the user from the database in the previous exercise.

`@user = User.find(params[:id])`

### What is the name of the view file for the user edit page?

`edit.html.erb`





