@financially-free-nurse @regression
Feature: Financially free nurse
@financially-free-nurse_lead_submission @lead
Scenario Outline: Lead submission
    Given User is in "financially free nurse" landing page in "<Device>" view
    When User click on "$10k - $20k"
    And User selects "Registered Nurse (RN)" from "nurse specialty"
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

@financially-free-nurse_ccpa
Scenario Outline: CCPA
    Given User is in "financially free nurse" landing page in "<Device>" view
    And User clicks on "Do Not Sell My Personal Information" link
    Then User should see '"Do Not Sell My Information" Request and Assertion of Privacy Rights'
    When User submits ccpa form
    Then User should see "We have received your request."
    Examples:
        | Device  |
        | desktop |
        | mobile  |

@financially-free-nurse_header_footer
Scenario Outline: Validate - Headers and Footers in every page in "<Device>" view
    Given User is in "financially free nurse" landing page in "<Device>" view
    When User clicks on "<Page>" in "<Device>" view
    Then User should see "Financially Free Nurse" in "<Device>" view
    And User should see "Terms of Service" in "<Device>" view
    And User should see "Privacy Policy" in "<Device>" view
    And User should see "E-Sign Consent" in "<Device>" view
    And User should see "Credit Authorization Agreement" in "<Device>" view
    And User should see "CA Privacy Notice" in "<Device>" view
    And User should see "Do Not Sell My Personal Information" in "<Device>" view
    And User should see "© 2024 Financially Free Nurse. All rights reserved." in "<Device>" view
    Examples:
        | Page                                | Device  |
        | About                               | desktop |
        | Resources                           | desktop |
        | Terms of Service                    | desktop |
        | Privacy Policy                      | desktop |
        | E-Sign Consent                      | desktop |
        | Credit Authorization Agreement      | desktop |
        | CA Privacy Notice                   | desktop |
        | Do Not Sell My Personal Information | desktop |
        | About                               | mobile  |
        | Resources                           | mobile  |
        | Terms of Service                    | mobile  |
        | Privacy Policy                      | mobile  |
        | E-Sign Consent                      | mobile  |
        | Credit Authorization Agreement      | mobile  |
        | CA Privacy Notice                   | mobile  |

@financially-free-nurse_home
Scenario Outline: Validate home page elements on Financially Free Nurse Page in "<View>"
    Given User is in "financially free nurse" home page in "<Device>" view
    And User should see "Nurturing care"
    And User should see "What we have done in 2024"
    And User should see "How can we help you?"
    And User should see "Financial Situation Quiz"
    And User should see link "Get Started"
    And User should see "DIY Budget Tool"
    And User should see link "Claim yours Free"
    And User should see "Debt Free Plan"
    And User should see "Free Financial Resources"
    And User should see link "Find Resources"
    And User should see "Our healthcare system relies on millions of nurses"
    And User should see link "Find out more about us"
    And User should see "Free Financial Resources"
    And User should see "we lower your debt"

    Examples:
            | Device  |
            | desktop |
            | mobile  |
