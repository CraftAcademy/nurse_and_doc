Feature: RSC Dashboard
    As an RSC,
    In order to know what live jobs I have,
    I would like to be able to see a list of jobs in my region.

    Background: Professions
        Given the following jobs exist in the database
            | profession        |
            | Doctor            |
            | Nurse             |
            | Assistant Nurse   |

    Scenario: RSC can see the dashboard
        Given I am on the dashboard page
        Then I should see "RSC Dashboard"
        And I should see "Doctor" within the "jobs" section
        And I should see "Nurse" within the "jobs" section
        And I should see "Assistant Nurse" within the "jobs" section

    Scenario: RSC can see the dashboard in swedish
        Given I am on the dashboard page
        Then I should see "RSC Dashboard"
        And I click on "Svenska"
        Then I should see "Läkare" within the "jobs" section
        And I should see "Sjuksköterska" within the "jobs" section
        And I should see "Undersköterska" within the "jobs" section
       