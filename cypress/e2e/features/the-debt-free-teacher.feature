@the-debt-free-teacher @regression
Feature: The debt free teacher

@the-debt-free-teacher_lead_submission @lead
Scenario Outline: Lead submission
    Given User is in "the debt free teacher" landing page in "<Device>" view
    When User click on "$10k - $20k"
    And User selects "preschool" from "Teaching Level"
    When User click on "<payment_situation>"
    When User submits lead for email "<email>"
    When User click on "<housing_option>"
    And User click on "<employmeent_status>"
    And User click on "<payment>"
    And User submits lead for email "<email>" with optional info
    Then the url will contain "/offers"
    Examples:
     | payment_situation         | Device  | email                       | housing_option | employmeent_status | payment |
     | Paying above the minimums | desktop | mock+4581@evenfinancial.com | Rent           | Part Time          | Weekly  |
     | Paying above the minimums | mobile  | mock+4581@evenfinancial.com | Rent           | Full Time          | Biweekly|


@the-debt-free-teacher_ccpa
Scenario Outline: CCPA
    Given User is in "the debt free teacher" landing page in "<Device>" view
    And User clicks on "Do Not Sell My Personal Information" link
    Then User should see '"Do Not Sell My Information" Request and Assertion of Privacy Rights'
    When User submits ccpa form
    Then User should see "We have received your request."
    Examples:
        | Device  |
        | desktop |
        | mobile  |

@the-debt-free-teacher_header_footer
Scenario Outline: Validate - Headers and Footers in every page in "<Device>" view
    Given User is in "the debt free teacher" landing page in "<Device>" view
    Then User should see "The Debt Free Teacher"
    When User clicks on "<Page>" in "<Device>" view 
    And User should see "Terms of Service" in "<Device>" view
    And User should see "Privacy Policy" in "<Device>" view
    And User should see "E-Sign Consent" in "<Device>" view
    And User should see "Credit Authorization Agreement" in "<Device>" view
    And User should see "CA Privacy Notice" in "<Device>" view
    And User should see "Do Not Sell My Personal Information" in "<Device>" view
    And User should see "© 2024 The Debt Free Teacher. All rights reserved." in "<Device>" view
    Examples:
        | Page                                | Device  |
        | About                               | desktop |
        | Terms of Service                    | desktop |
        | Privacy Policy                      | desktop |
        | E-Sign Consent                      | desktop |
        | Credit Authorization Agreement      | desktop |
        | CA Privacy Notice                   | desktop |
        | Do Not Sell My Personal Information | desktop |
        | About                               | mobile  |
        | Terms of Service                    | mobile  |
        | Privacy Policy                      | mobile  |
        | E-Sign Consent                      | mobile  |
        | Credit Authorization Agreement      | mobile  |
        | CA Privacy Notice                   | mobile  |

@the-debt-free-teacher_landing
Scenario Outline: Validate home page elements on The Debt Free Teacher Page in "<View>"
    Given User is in "the debt free teacher" landing page in "<Device>" view
    And User should see "How much debt do you owe?"
    And User should see "Results Don't Lie"
    And User should see "Your Questions, Answered"
    And User should see "The Debt Free Teacher"
    Examples:
            | Device  |
            | desktop |
            | mobile  |
