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

        And the following hospitals exists
            | name        | region    |
            | karolinska  | stockholm |
            | swehospital | uppsala   |

        And the following registered RSC exist
            | email            | password  | region    |
            | rupert@email.com | password0 | stockholm |
            | noel@email.com   | password1 | uppsala   |

        And the default user is logged out

    Scenario: Logged in user can only see content in the stockholm region
        Given I am logged in as "rupert@email.com"
        And I am on the landing page
        And I click on "Hospitals" within the "#sidebar" section
        Then I should see "karolinska"
        And I should not see "swehospital"

    Scenario: Logged in user can only see content in the uppsala region
        Given I am logged in as "noel@email.com"
        And I am on the landing page
        And I click on "Hospitals" within the "#sidebar" section
        Then I should see "swehospital"
        Then I should not see "karolinska"




