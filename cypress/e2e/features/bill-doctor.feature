@bill-doctor @regression
Feature: Bill Doctor 
@bill-doctor_submission @lead
Scenario Outline: Lead submission
    Given User is in "bill doctor" landing page in "<Device>" view
    When User click on "$10k - $20k"
    When User click on "<payment_situation>"
    When User submits lead for email "<email>"
    Then User should see "Finding Your Offers!"
    When User click on "<housing_option>"
    And User click on "<employmeent_status>"
    And User click on "<payment>"
    And User submits lead for email "<email>" with optional info
    Then the url will contain "/offers"
    Examples:
     | payment_situation         | Device  | email                       | housing_option | employmeent_status | payment |
     | Paying above the minimums | desktop | mock+4581@evenfinancial.com | Rent           | Part Time          | Weekly  |
     | Paying above the minimums | mobile  | mock+4581@evenfinancial.com | Rent           | Full Time          | Biweekly|


@bill-doctor_ccpa
Scenario Outline: CCPA
    Given User is in "bill doctor" home page in "<Device>" view
    And User clicks on "Do Not Sell My Personal Information" link
    Then User should see '"Do Not Sell My Information" Request and Assertion of Privacy Rights'
    When User submits ccpa form
    Then User should see "We have received your request."
    Examples:
        | Device  |
        | desktop |
        | mobile  |

@bill-doctor_header_footer
Scenario Outline: Validate - Headers and Footers in every page in "<Device>" view
    Given User is in "bill doctor" landing page in "<Device>" view
    Then User should see "BillDoctor"
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

@bill-doctor_landing
Scenario Outline: Validate home page elements on Bill Doctor LowerPayments Page in "<View>"
    Given User is in "bill doctor" landing page in "<Device>" view
    And User should see "How much debt do you owe?"
    And User should see "About Bill Doctor"
    And User should see "3 Steps to Lower monthly payments"
    And User should see "we lower your debt"
    And User should see "Articles & Educational Resources"
    And User should see "FAQs"
    Examples:
            | Device  |
            | desktop |
            | mobile  |