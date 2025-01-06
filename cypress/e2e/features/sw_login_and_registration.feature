Feature: User Login and Registration Validation 

Background: User on Welcome Page Validation 
Given User Landed on welcome page 

Scenario: Successful login for existing user with valid credentials
Given The user clicks on "Log in"
Then User navigates to the login page
When User enters a valid email and password
And  And User clicks the login button
Then User should be redirected to the dashboard

Scenario: Successful account creation for a new user
Given The user clicks on "Get Started"
And User navigates to the registration page
When User enters a valid new email and new password
And User clicks the create account button
And User should be redirected to ammount setup page

Scenario: Sign in from regisstration page 
Given The user clicks on "Get Started"
And User navigates to the registration page
And The user clicks on "Sign In"
Then User navigates to the login page
When User enters a valid email and password
And  And User clicks the login button
Then User should be redirected to the dashboard


#!NEGATIVE CASES REGISTRATION

Scenario: Negative Case - User registration Bad email
Given The user clicks on "Get Started"
And User navigates to the registration page
When User enters a bad email
Then User should see "Invalid email"

Scenario: Negative Case - User registration Bad password
Given The user clicks on "Get Started"
And User navigates to the registration page
When User enters a bad password
Then User should see "Must be at least 8 characters in length"

Scenario: Negative Case - User registration Empty password and email
Given The user clicks on "Get Started"
And User navigates to the registration page
When User do not enters a password and email
Then User should see "Must be at least 8 characters in length"
And User should see "Email is required"

Scenario: Negative Case - User registration with taken email
Given The user clicks on "Get Started"
And User navigates to the registration page
When User enters already taken email
Then User should see "Email has already been taken"

#!NEGATIVE CASES LOG IN


Scenario: Negative Case - User Log In - Incorrect Email
Given The user clicks on "Log in"
Then User navigates to the login page
When User enters a not valid email
And  And User clicks the login button
Then User should see "Invalid login credentials. Please try again."

Scenario: Negative Case - User Log In - Incorrect Password
Given The user clicks on "Log in"
Then User navigates to the login page
When User enters a not valid password
And  And User clicks the login button
Then User should see "Invalid login credentials. Please try again."

Scenario: Negative Case - User Log In - Empty password and email
Given The user clicks on "Log in"
And User navigates to the login page
When User do not enters a password and email
Then User should see "Password is required"
And User should see "Email is required"

Scenario: Negative Case - User Log In - Bad email
Given The user clicks on "Log in"
And User navigates to the login page
When User enters a bad email
Then User should see "Invalid email"




# #!Reset Password doesn't work now()
# # Scenario: Successful login after password reset
# # Given user click on "LOGIN"
# # Then User navigates to the login page
# # And user click on "Forgot Password?"
# # And User has requested a password reset
# # And User should see "Succes!"
# # # And User navigates to the reset link from their email
# # # When User enters a new valid password
# # # And User logs in with the new password
# # # Then User should be redirected to the dashboard





