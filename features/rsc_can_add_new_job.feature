@javascript
Feature: Rsc can add new job
    As a RSC,
    In order to create jobs,
    I would like to click on the “+” button and fill in the jobs information.

    Background: Signed in as RSC on dashboard
        Given I am on the landing page

    Scenario: RSC creates a new job
        And I click on "New"
        Then I should see "Create New Job"
        And I fill in "Name" with "Willy Wonka"
        And I click on "Submit"
        Then I should see "The job was successfully created"
        And I should see "Willy Wonka"