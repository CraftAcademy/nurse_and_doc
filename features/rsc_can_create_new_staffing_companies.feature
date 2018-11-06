@javascript

Feature: RSC creates a staffing companies
    As a RSC,
    In order to create a new company,
    I would like to access the dashboard, click on the “staffing companies” button and fill in the company name.

    Background: 
        Given the following staffing companies exists
            | name        | email           |  personal_name  | phone       |  webhook                                      |
            | Company 1   | company1@me.com |  Alexander      | 01234566    | https://api.webhook.com/v2/company.json?      |
            | Company 2   | company2@me.com |  Sharon         | 0123345676  | https://api.webhook.com/v2/company2.json?     |
        Given I am on the landing page

    Scenario: RSC can successfully add new companies
        And I click on "Staffing Companies" within the "#sidebar" section
        And I should see "Company 1"
        Then I click on "Add new company"
        When I fill in company form with "valid" information
        And I click on "Add Company"
        Then I should see "The staffing company was successfully created"

    Scenario: RSC cannot add companies if it already exists
        And I click on "Staffing Companies" within the "#sidebar" section
        Then I click on "Add new company"
        When I fill in company form with "invalid" information
        And I click on "Add Company"
        Then I should see "Email has already been taken"