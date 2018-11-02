@javascript
Feature: RSC Dashboard
    As an RSC,
    In order to know what live jobs I have,
    I would like to be able to see a list of jobs in my region.

    Background: Jobs
        Given the following jobs exist in the database
            | name              |
            | Doctor            |
            | Nurse             |
            | Assistant Nurse   |

    Scenario: RSC can see the dashboard
        Given I am on the staffing companies page
        And I click on "Jobs"
        Then I should be on the jobs index
        And I should see "Doctor" within the ".card" section
        And I should see "Nurse" within the ".card" section
        And I should see "Assistant Nurse" within the ".card" section
       