@javascript

Feature: Hospitals have a list of departments

    As an RSC,
    In order to view departments associated with a specific hospital,
    I would like see a list of departments when i click on a hospital.

    Background: 
    Given the following registered RSC exist
        | email         | password  | region    |
        | zak@email.com | password0 | stockholm |

    Given the following hospitals exists
        | name        | region    |
        | karolinska  | stockholm |

    And the default user is logged out
    
    Scenario: Rsc can see a list of departments for every hospital
        Given I am logged in as "zak@email.com"
        And I am on the landing page
        And I click on "Hospitals" within the "#sidebar" section
        Then I should see "karolinska"
        And I click on "Show"  
        Then I should see "Departments"
        And I should see "Quarantine" within "#rightbar" section