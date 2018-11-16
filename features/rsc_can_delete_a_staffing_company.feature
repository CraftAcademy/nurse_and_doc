@javascript
Feature: Rsc can delete a staffing company
    As an RSC,
    In order to manage the staffing company list,
    I would like to be able to delete staffing companies.

    Background: On the landing page and can see list of staffing companies
        Given the following staffing companies exists
            | name    | email           | region     |
            | Trib AB | company1@me.com | stockholm  |

        And the following registered RSC exist
            | email         | password  | region     |
            | zak@email.com | password0 | stockholm  |

        And I am logged in as "zak@email.com"
        And I am on the landing page
        And I click on "Staffing Companies" within the "#sidebar" section

    Scenario: Rsc deletes a staffing company
        Then I click on "Remove"
        And I confirm popup
        Then I should see "Staffing Company was successfully removed."
        And I should not see "Trib AB"