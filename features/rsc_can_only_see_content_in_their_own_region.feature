@javascript

Feature: Logged in user can only see content in their own region

    As a logged in user,
    In order to restrict content access,
    I would like to only see hospitals in my region.

    Background:
        Given the following regions exist
            | name      |
            | stockholm |
            | uppsala   |
        # Then stop
        And the following hospitals exists
            | name        | region    |
            | karolinska  | stockholm |
            | swehospital | uppsala   |
        Then stop
        And the following registered RSC exist
            | email            | region    |
            | rupert@email.com | stockholm |
            | noel@email.com   | uppsala   |
        And I am on the landing page
        And I click on "Log out"

    Scenario: Logged in user can only see content in the stockholm region
        Given the RSC user is logged in as "rupert@email.com"
        And I click on "Hospitals" within the "#sidebar" section
        Then I should see "karolinska"

    Scenario: Logged in user can only see content in the uppsala region
        Given the RSC user is logged in as "noel@email.com"
        And I click on "Hospitals" within the "#sidebar" section
        Then I should see "swehospital"

    Scenario: Logged in user cannot see content in the uppsala region
        Given the RSC user is logged in as "rupert@email.com"
        And I click on "Hospitals" within the "#sidebar" section
        Then I should not see "karolinska"



