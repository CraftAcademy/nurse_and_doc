@javascript
Feature: Rsc can add new job
    As a RSC,
    In order to create jobs,
    I would like to click on add new job and fill in the jobs information.

    Background: Landing page, clicking new and directed to the form page
        Given the following licenses exists
            | name    | 
            | Kirurgi |

        Given the following hospitals exists
            | name                |
            | stockholm sjukhuset |

        Given the following profession exists
            | name       |
            | Doctor     |

        Given the following department exists
            | name       |
            | Surgery    |

        Given the following caretype exists
            | name       |
            | Homecare   |

        Given the following other requirement exists
            | name            |
            | Drivers License |
            
        Given I am on the landing page
        And I click on "Add New Job"

    Scenario: RSC creates a new job
        Then I should see "Create New Job"
        And I fill in the job form with "valid" information     
        And I click on "Submit"
        Then I should see "The job was successfully created"
        And I should see "Doctor"

    Scenario: RSC fills out form incorrectly
        And I fill in the job form with "invalid" information
        And I click on "Submit"
        Then I should see "Profession can't be blank,License can't be blank,Scope can't be blank"

    Scenario: RSC wants to add new job but decides not to
        And I click on "X"
        Then I should be on the landing page