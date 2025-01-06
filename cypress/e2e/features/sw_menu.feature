Feature: Menu Components

Background: Validation for Menu 
Given User Landed on welcome page 

Scenario: Validating History 
Then User successfully login
And User should be redirected to the dashboard
And User click on menu btn 
Then The user clicks on "History"
Then The displayed date should match today's date
And User should see "Other"
And User should see "Coffee Shops"
And User should see "Snacks & Sweets"
And User should see "Takeout & Delivery"
And User should see "Going Out"
And User should see "$35.00"
And User should see "$5.00"
And User should see "$15.00"
And User should see "$20.00"








# Scenario: Menu Components
# And User should see "Histoory"
# And User should see "Profile"
# And User should see "Set Goals"
# And User should see "Category Selection"
# And User should see "Select Amount"
# And User should see "Dashboard"
# And User should see "Forgor Password"
# And User should see "Reset Password"
# And User should see "Email Verification"
# And User should see "Install PWA"
# And User should see "Log In"

# Scenario: History Validation 
# Given User click on "History"
# Then User should see "History"
# And User should see "Date"
# And User should see "Category"
# And User should see "$"

# #!This one will need a scenario with login function as well
# Scenario: Profile Validation 
# Given User click on "Profile"
# Then User should see "Profile"
# And User should see "Full name"
# And User should see "Email"
# And User should see "Password"
# And User should see "Confirm Password"
# And User should see "Notifications"
# And User should see "Notifications Opt-out"
# And User should see "Save Changes"

# Scenario: Set Goal Validation
# Given User click on "Set Goals"
# Then User should see "Set a New Savings Goal"
# And User should see "Ammount"
# And User should see "Aim for something achievable within a week."
# And User should see "CONTINUE"

# Scenario: Category Selection Validation
# Given User click on "Category Selection"
# #!??? This one not done UI


# Scenario: Select Amount Validation
# Given User click on "Select Amount"
# #!??? This one same as Set Goal 

# Scenario: Dashboard Validation
# Given User click on "Dashboard"
# Then User should see "Dashboard"
# And User should see "Start by picking something to sacrifice."
# And User should see "Snacks & Sweets"
# And User should see "Takeout & Delivery"
# And User should see "Dining Out"
# And User should see "Other"
# And User should see "Online Shopping"
# And User should see "Coffee Shops"

# Scenario: Forgot Password Validation
# Given User click on "Forgot Password"
# Then User should see "Forget your password?"
# And User should see "Your email"
# And User should see "Reset Password"


# Scenario: Reset Password Validation
# Given User click on "Reset Password"
# Then User should see "Enter a new password below."
# And User should see "New password"
# And User should see "Update Password"


# Scenario: Email Verification Validation
# Given User click on "Email Verification"
# Then User should see "Email confirmation"
# And User should see "Resend verification email"

# Scenario: Install PWA Validation
# Given User click on "Install PWA"
# Then User should see "Install SaveWise"
# And User should see "Download"
# And User should see "Skipp app istallation"


# Scenario: Log In Validation
# Given User click on "Log In"
# Then User should see "Log In"
# And User should see "Email"
# And User should see "Password"
# And User should see "Log In"
# And User should see "Forgot Password?"
# And User should see "Sign up"




