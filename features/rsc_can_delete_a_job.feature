@javascript
Feature: Rsc can add new job
    As an RSC,
    In order to manage the jobs list,
    I would like to be able to delete jobs.

    Background: On landing page and can see list of jobs
        Given the following jobs exist in the database
            | profession | department | application_deadline | date_start | date_finish |
            | Doctor     | Radiology  | 10-01-2019           | 12-12-2018 | 12-12-2019  |
        Given I am on the landing page
        Then stop
    Scenario: Rsc deletes a job
        Then I click on "Remove"
        And I confirm popup
        Then I should see "Job was successfully deleted."
        And I should not see "Doctor"