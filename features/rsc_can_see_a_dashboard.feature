@javascript
Feature: RSC Dashboard
    As a RSC,
    In order to create and modify relevant informations to be sent out to RSC,
    I would like to have a simple and user friendly dashboard.

    Scenario: RSC can see the dashboard
        Given I am on the landing page
        Then I should see "RSC Dashboard"
        And I should see "Jobs" within the "#sidebar" section
        And I should see "Hospitals" within the "#sidebar" section
        And I should see "Staffing Companies" within the "#sidebar" section

    # Scenario: RSC can see the dashboard in swedish
    #     Given I am on the landing page
    #     Then I should see "RSC Dashboard"
    #     And I click on "Svenska"
    #     Then I should see "Jobb" within the "#sidebar" section
    #     And I should see "Sjukhus" within the "#sidebar" section
    #     And I should see "Bemanningsföretag" within the "#sidebar" section