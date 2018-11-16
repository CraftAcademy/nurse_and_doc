@javascript
Feature: Rsc can delete a hospital
    As an RSC,
    In order to manage the hospitals list,
    I would like to be able to delete hospitals.

    Background: On the landing page and can see list of hospitals
        Given the following hospitals exists
            | name       | region    | 
            | karolinska | stockholm | 

        And the following registered RSC exist
            | email         | password  | region     |
            | zak@email.com | password0 | stockholm  |

        And I am logged in as "zak@email.com"
        And I am on the landing page
        And I click on "Hospitals"

    Scenario: Rsc deletes a job
        Then I click on "Remove"
        And I confirm popup
        Then I should see "Hospital was successfully removed."
        And I should not see "karolinska"