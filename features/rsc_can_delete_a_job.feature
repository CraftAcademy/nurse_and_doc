@javascript
Feature: Rsc can delete a job
    As an RSC,
    In order to manage the jobs list,
    I would like to be able to delete jobs.

    Background: On the landing page and can see list of jobs
        Given the following jobs exist in the database
            | profession | region    | department | application_deadline | date_start | date_finish |
            | Doctor     | stockholm | Radiology  | 10-01-2019           | 12-12-2018 | 12-12-2019  |

        And the following registered RSC exist
            | email            | password  | region     |
            | rupert@email.com | password0 | stockholm  |

        And I am logged in as "rupert@email.com"
        And I am on the landing page

    Scenario: Rsc deletes a job
        Then I click on "Remove"
        And I confirm popup
        Then I should see "Job was successfully deleted."
        And I should not see "Doctor"