@american-loan-assistance @regression
Feature: American Loan Assistance

@american-loan-assistance_lead_submission @finalcheck

Scenario Outline: Lead submission
    Given User is in "american loan assistance" landing page in "<Device>" view
    When User click on "Get Started"
    And User click on "Within 48 hours"
    When User click on "<payment_situation>"
    And User click on "Yes"
    And User click on "Excellent 720-850"
    When User submits ALA lead form for email "<email>"
    Then User should see "You are being automatically directed to our partner to continue your loan selection."

    Examples:
     | payment_situation         | Device  | email                       |
     | Paying above the minimums | desktop | mock+4581@evenfinancial.com |
     | Paying above the minimums | mobile  | mock+4581@evenfinancial.com |


@american-loan-assistance_ccpa
Scenario Outline: CCPA
    Given User is in "american loan assistance" home page in "<Device>" view
    And User clicks on "Do Not Sell My Personal Information" link
    Then User should see '"Do Not Sell My Information" Request and Assertion of Privacy Rights'
    When User submits ccpa form
    Then User should see "We have received your request."
    Examples:
        | Device  |
        | desktop |
        | mobile  |

@american-loan-assistance_header_footer
Scenario Outline: Validate - Headers and Footers in every page in "<Device>" view
    Given User is in "american loan assistance" landing page in "<Device>" view
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
        | Do Not Sell My Personal Information | mobile  |

@american-loan-assistance_home 
Scenario Outline: Validate home page elements on American Loan Assistance Page in "<View>"
    Given User is in "american loan assistance" landing page in "<Device>" view
    And User should see "How much are you looking to consolidate?"
    And User should see "Consolidation loans"
    And User should see "Our Partner Network"
    And User should see "About American Loan Assistance"
    And User should see "Articles & Educational Resources"
    Examples:
            | Device  |
            | desktop |
            | mobile  |