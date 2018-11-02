@javascript

Feature: RSC Can See List of Staffing Companies
    As an RSC,
    In order to know what hospitals I have associations with,
    I would like to be able to see a list of staffing companies in my region

    Background: 
        Given the following staffing companies exists
            | name        | 
            | Company 1   | 
            | Company 2   |

    Scenario: RSC can see list of staffing companies on the dashboard page
        Given I am on the landing page
        Then I should see "RSC Dashboard"
        And I click on "Staffing Companies" within the "#sidebar" section
        Then I should see "Staffing Companies" within the ".card-title" section
        And I should see "Company 1"
        And I should see "Company 2"