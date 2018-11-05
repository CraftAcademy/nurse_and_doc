@javascript
Feature: Rsc can add new job
    As a RSC,
    In order to create jobs,
    I would like to click on the “+” button and fill in the jobs information.

    Background: Signed in as RSC on dashboard
        Given I am on the landing page
        And I click on "New"
        Then I should see "Create New Job"

    Scenario: RSC creates a new job
        And I fill in "Name" with "Heart Surgeon"
        And I click on "Submit"
        Then I should see "The job was successfully created"
        And I should see "Heart Surgeon"

    Scenario: RSC fills out form incorrectly
        And I fill in "Name" with " "
        And I click on "Submit"
        Then I should see "Name can't be blank"

    Scenario: RSC wants to add new job but decides not to
        And I click on "Cancel"
        Then I should be on the landing page