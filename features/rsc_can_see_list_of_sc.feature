@javascript

Feature: RSC Can See List of Staffing Companies
    As an RSC,
    In order to know what hospitals I have associations with,
    I would like to be able to see a list of staffing companies in my region

    Background: 
        Given the following staffing companies exists
            | name        | email           |
            | Nurse&co    | company1@me.com |
            | Docs&Co     | company2@me.com |
        Given the following registered RSC exist
            | email            | password   |
            | email@email.com  | mypassword |
        And the user is logged in as "email@email.com"

    Scenario: RSC can see list of staffing companies on the dashboard page
        Given I am on the landing page
        Then I should see "StaffingPortal"
        And I click on "Staffing Companies" within the "#sidebar" section
        Then I should see "Staffing Companies" within the ".form-header" section
        And I should see "Nurse&co"
        And I should see "Docs&Co"