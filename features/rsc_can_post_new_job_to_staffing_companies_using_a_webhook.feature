@javascript @webhook
Feature: Posting a job to staffing companies with a webhook

    As a RSC,
    In order to send jobs to the staffing companies,
    I would like to create a new job and send it to staffing companies.

    Background:
        Given the following registered RSC exist
            | email         | password  | region    |
            | zak@email.com | password0 | stockholm |

        And the following licenses exists
            | name    |
            | Kirurgi |

        And the following hospitals exists
            | name                |
            | stockholm sjukhuset |

        And the following profession exists
            | name   |
            | Doctor |

        And the following department exists
            | name    |
            | Surgery |

        And the following caretype exists
            | name     |
            | Homecare |

        And the following other requirement exists
            | name            |
            | Drivers License |

        And the following staffing companies exists
            | name     | email           | contact_name | phone      | webhook                                   | region     |
            | Nurse&Co | company1@me.com | Alexander    | 01234566   | https://api.webhook.com/v2/company.json?  | stockholm  |
            | Docs&Co  | company2@me.com | Sharon       | 0123345676 | https://api.webhook.com/v2/company2.json? | gothenburg |

        And the default user is logged out
        And I am logged in as "zak@email.com"
        And I am on the landing page
        And I click on "Add New Job"

    Scenario: RSC posts a job to staffing companies using a webhook
        Then I should see "Create New Job"
        And I fill in the job form with "valid" information
        And I click on "Submit"
        And I should see "The job was successfully created"
        And I wait 2 seconds
        And a post request should have been made to "https://api.webhook.com/v2/company.json?"
        And a post request should not have been made to "https://api.webhook.com/v2/company2.json?"
