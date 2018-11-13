@javascript

Feature: Logged in user can only see Staffing Companies in their own region

    As a logged in user,
    In order to restrict content access,
    I would like to only see staffing companies in my region.

    Background:
        Given the following regions exist
            | name       |
            | stockholm  |
            | gothenburg |

        And the following staffing companies exists
            | name    | email           | region     |
            | Trib AB | company1@me.com | stockholm  |
            | Adecco  | company2@me.com | gothenburg |

        And the following registered RSC exist
            | email          | password  | region     |
            | zak@email.com  | password0 | gothenburg |
            | noel@email.com | password1 | stockholm  |

        And the default user is logged out

    Scenario: Logged in user can only see staffing companies in the stockholm region
        Given I am logged in as "zak@email.com"
        And I am on the landing page
        And I click on "Staffing Companies" within the "#sidebar" section
        Then I should see "Adecco"
        And I should not see "Trib AB"

    Scenario: Logged in user can only see content in the uppsala region
        Given I am logged in as "noel@email.com"
        And I am on the landing page
        And I click on "Staffing Companies" within the "#sidebar" section
        Then I should see "Trib AB"
        Then I should not see "Adecco"




