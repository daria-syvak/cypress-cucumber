@veteran-debt-assistance @regression
Feature: Veteran Debt Assistance

@veteran-debt-assistance_lead_submission @lead
Scenario Outline: Lead submission
    Given User is in "veteran debt assistance" landing page in "<Device>" view
    When User click on "$10k - $20k"
    And User selects "U.S. Army" from "U.S. Military Branch"
    And User selects "Patriotism" from "Reason Enlisted"
    When User click on "<payment_situation>"
    When User submits lead for email "<email>"
    When User click on "<housing_option>"
    And User click on "<employmeent_status>"
    And User click on "<payment>"
    And User submits lead for email "<email>" with optional info
    Then the url will contain "/offers"
    Examples:
     | payment_situation         | Device  | email                       | housing_option              | employmeent_status | payment |
     | Paying above the minimums | desktop | mock+4581@evenfinancial.com | Own with Mortgage           | Part Time          | Weekly  |
     | Paying above the minimums | mobile  | mock+4581@evenfinancial.com | Own with Mortgage           | Full Time          | Biweekly|

@veteran-debt-assistance_ccpa
Scenario Outline: CCPA
    Given User is in "veteran debt assistance" landing page in "<Device>" view
    And User clicks on "Do Not Sell My Personal Information" link
    Then User should see '"Do Not Sell My Information" Request and Assertion of Privacy Rights'
    When User submits ccpa form
    Then User should see "We have received your request."
    Examples:
        | Device  |
        | desktop |
        | mobile  |

@veteran-debt-assistance_header_footer
Scenario Outline: Validate - Headers and Footers in every page in "<Device>" view
    Given User is in "veteran debt assistance" landing page in "<Device>" view
    Then User should see "Veteran Debt Assistance"
    When User clicks on "<Page>" in "<Device>" view
    And User should see "Terms of Service" in "<Device>" view
    And User should see "Privacy Policy" in "<Device>" view
    And User should see "E-Sign Consent" in "<Device>" view
    And User should see "Credit Authorization Agreement" in "<Device>" view
    And User should see "CA Privacy Notice" in "<Device>" view
    And User should see "Do Not Sell My Personal Information" in "<Device>" view
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

@veteran-debt-assistance_home
Scenario Outline: Validate home page elements on Veteran Debt Assistance Page in "<View>"
    Given User is in "veteran debt assistance" landing page in "<Device>" view
    And User should see "How much debt do you owe?"
    And User should see "No fees unless your debt is resolved."
    And User should see "FAQs"
    And User should see "When debt arises, we're here to help you regain financial control."
    And User should see "Articles & Educational Resources"
    Examples:
            | Device  |
            | desktop |
            | mobile  |