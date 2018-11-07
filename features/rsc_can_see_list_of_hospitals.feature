@javascript
Feature: RSC Can See List of Hospitals
    As an RSC,
    In order to know what hospitals I have associations with,
    I would like to be able to see a list of hospitals in my region.

    Background: 
        Given the following hospitals exists
            | name        | 
            | Hospital 1  | 
            | Hospital 2  |

    Scenario: 
        Given I am on the landing page
        And I click on "Hospitals" within the "#sidebar" section
        Then I should see "Hospital 1" within the ".list-card" section
        And I should not see "Hospital 3" within the ".list-card" section
    


