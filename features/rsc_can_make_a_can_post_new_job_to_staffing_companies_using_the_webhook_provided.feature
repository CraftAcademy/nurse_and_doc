@javascript @webhook
Feature: Posting a job to staffing companies with webhook

    As a RSC,
    In order to post information about jobs in my region
    I would like to use the webhooks that staffing companies provided.

    Background:
        Given the following registered RSC exist
            | email            | password  | region    |
            | rupert@email.com | password0 | stockholm |

        Given the following licenses exists
            | name    |
            | Kirurgi |

        Given the following hospitals exists
            | name                |
            | stockholm sjukhuset |
        Given the following profession exists
            | name   |
            | Doctor |
        Given the following department exists
            | name    |
            | Surgery |
        Given the following caretype exists
            | name     |
            | Homecare |
        Given the following other requirement exists
            | name            |
            | Drivers License |

        And the following staffing companies exists
            | name     | email           | contact_name | phone      | webhook                                   | region     |
            | Nurse&Co | company1@me.com | Alexander    | 01234566   | https://api.webhook.com/v2/company.json?  | stockholm  |
            | Docs&Co  | company2@me.com | Sharon       | 0123345676 | https://api.webhook.com/v2/company2.json? | gothenburg |

        And the default user is logged out
        Given I am logged in as "rupert@email.com"
        Given I am on the landing page
        And I click on "Add New Job"

    Scenario: RSC posts a job to staffing companies using the webhooks provided
        Then I should see "Create New Job"
        And I fill in the job form with "valid" information
        And I click on "Submit"
        And I should see "The job was successfully created"
        And I wait 2 seconds
        And a post request should have been made to "https://api.webhook.com/v2/company.json?"
        And a post request should not have been made to "https://api.webhook.com/v2/company2.json?"
