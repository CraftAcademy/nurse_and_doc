@javascript
Feature: Rsc can add new job
    As a RSC,
    In order to create jobs,
    I would like to click on the “+” button and fill in the jobs information.

    Background: Landing page, clicking new and being on form page
        Given I am on the landing page
        And I click on "Add New Job"

    Scenario: RSC creates a new job
        Then I should see "Create New Job"
        And I fill in job form
        And I click on "Submit"
        Then I should see "The job was successfully created"
        And I should see "Heart Surgeon"

    Scenario: RSC fills out form incorrectly
        And I fill in "Name" with " "
        And I click on "Submit"
        Then I should see "Name can't be blank"

    Scenario: RSC wants to add new job but decides not to
        And I click on "X"
        Then I should be on the landing page