@javascript

Feature: RSC creates a staffing companies
    As a RSC,
    In order to create a new company,
    I would like to access the dashboard, click on the “staffing companies” button and fill in the company name.

    Background: 
        Given the following staffing companies exists
            | name        | 
            | Company 1   | 
            | Company 2   |

    Scenario: RSC can successfully add new companies
        Given I am on the landing page
        Then I should see "RSC Dashboard"
        And I click on "Staffing Companies" within the "#sidebar" section
        And I should see "Company 1"
        And I should see "Company 2"
        And I fill in "Add Company name" with "Company 3"
        And I fill in "Add Email" with "company3@rsc.com"
        And I click on "Add"
        Then I should see "Company 3"

    Scenario: RSC cannot add companies if it already exists
        Given I am on the landing page
        And I click on "Staffing companies"
        Then I see "Company 1"
        And I fill in "Add Company" with "Company 2"
        And I click on "Add"
        Then I should see "Staffing company already exists. Your company could not be saved."