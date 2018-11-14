@javascript
Feature: Posting a job to staffing companies with webhook

    As a RSC,
    In order to post information about jobs in my region
    I would like to use the webhooks that staffing companies provided.

    Background:
        Given the following jobs exist in the database
            | profession | region    | department | application_deadline | date_start | date_finish |
            | Doctor     | stockholm | Radiology  | 10-01-2019           | 12-12-2018 | 12-12-2019  |

        And the following registered RSC exist
            | email            | password  | region    |
            | rupert@email.com | password0 | stockholm |

        And the following staffing companies exists
            | name     | email           | contact_name | phone      | webhook                                   | region     |
            | Nurse&Co | company1@me.com | Alexander    | 01234566   | https://api.webhook.com/v2/company.json?  | stockholm  |
            | Docs&Co  | company2@me.com | Sharon       | 0123345676 | https://api.webhook.com/v2/company2.json? | gothenburg |

        Given I am on the landing page
        And I click on "Add New Job"

    Scenario: RSC posts a job to staffing companies using the webhooks provided
        Then I should see "Create New Job"
        And I fill in the job form with "valid" information
        And I click on "Submit"
        And I should see "The job was successfully created"
        And a post request should be have been made "Nurse&Co" with webhook "https://api.webhook.com/v2/company.json?"
        And a post request should not be have been made "Docs&Co" with webhook "https://api.webhook.com/v2/company2.json?"
