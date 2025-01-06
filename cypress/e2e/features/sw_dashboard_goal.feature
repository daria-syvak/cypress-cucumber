Feature: Set Goal and Dashoard 

Background: User on Welcome Page Validation 
Given User Landed on welcome page 

Scenario: Setting and Completing Goal for the Existing User
Then User successfully login
And User should be redirected to the dashboard
And User should see a menu btn 
And User sets saving to each category 
Then User should see "You Hit Your Goal"
And The user clicks on "Set A New Goal"
Then User should be redirected to ammount setup page
And User should see "Set a New Savings Goal"
And User should see $20 default value 
Then User sets a goal amount "100"
And User should be redirected to the dashboard

#!This one will be cleaned
Scenario: Setiing and Competing Goal for a New User 
Then User successfully registred
Then User should be redirected to ammount setup page
And User should see "Set a New Savings Goal"
And User should see "Aim for something achievable within a week."
And User should see $20 default value 
And User should see "Continue"
Then User sets a goal amount "70"
And User should see "Each time you skip a purchase, log it here to see your savings grow."
When The user clicks on "Online Shopping"
When The user clicks on "20"
And The user clicks on "Going Out"
And The user clicks on "Add custom amount"
Then User adding amout "10"
And The user clicks on "Other"
And The user clicks on "Add custom amount"
Then User adding amout "45"
Then User should see "You Hit Your Goal"
And The user clicks on "Set A New Goal"
Then User should be redirected to ammount setup page
And User increase goal amount 30 times
And User decrease goal amount 10 times
Then User sets a goal amount "60"


# # And User decrease goal ammount 
# # And User clicks "Continue"
# # Then User should be redirected to the dashboard

# Scenario: Savings Selections 
# Given User should be redirected to the dashboard
# And user should see ""
# And user should see ""
# And user should see ""
# And user should see ""
# And user should see ""
# And user should see ""
# And User has requested a password reset
# And User should see "Succes!"

# # And User navigates to the reset link from their email
# # When User enters a new valid password
# # And User logs in with the new password
# # Then User should be redirected to the dashboard

# Scenario: Successful account creation for a new user
# Given user click on "GET STARTED"
# And User navigates to the registration page
# When User enters a valid email and password
# And User clicks the create account button
# # Then User should see a confirmation message
#  And User should be redirected to ammount setup page

# # Scenario: Successful login after account creation
# # Given User has successfully created an account
# # When User navigates to the login page
# # And User enters the newly created email and password
# # Then User should be redirected to the dashboard

