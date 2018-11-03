Feature: Rsc can add new job
    As a RSC,
    In order to create jobs,
    I would like to click on the “+” button and fill in the jobs information.

    Background: Signed in as RSC on dashboard
        Given the following registered RSC exist
            | email           | password   |
            | rsc@email.com   | mypassword |
        Given I am on the landing page

    Scenario: RSC creates a new job
        And I click on "Add"
        Then I should see "New Job"
        And I fill in "Name" with "Doctor"
        And I click on "Save"
        Then I should see "Doctor"