Feature: RSC Dashboard
    As a RSC,
    In order to create and modify relevant informations to be sent out to SC,
    I would like to have a simple and user friendly dashboard.

    Scenario: Seeing the dashboard
        Given I am on the dashboard page
        Then I should see "RSC Dashboard"
        And I should see "Jobs" within the "sidebar" section
        And I should see "Staffing Companies"
        And I should see "Gothenburg Hospital"

