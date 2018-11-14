@javascript

Feature: Rsc Can Only See Jobs In Their Own Region

    As a logged in Rsc,
    In order to restrict content access,
    I would like to see Jobs in my region.

    Background:
        Given the following jobs exist in the database
            | profession | region     | hospital |
            | doctor     | stockholm  | sodra    |
            | nurse      | gothenburg | karo     |

        And the following registered RSC exist
            | email            | password  | region     |
            | rupert@email.com | password0 | stockholm  |
            | noel@email.com   | password1 | gothenburg |

        And the default user is logged out

    Scenario: Logged in user can only see content in the stockholm region
        Given I am logged in as "rupert@email.com"
        And I am on the landing page
        And I click on "Jobs" within the "#sidebar" section
        Then I should see "doctor"
        And I should not see "nurse"

    Scenario: Logged in user can only see content in the gothenburg region
        Given I am logged in as "noel@email.com"
        And I am on the landing page
        And I click on "Jobs" within the "#sidebar" section
        Then I should see "nurse"
        Then I should not see "doctor"