Feature: RSC Can See List of Hospitals
        As an RSC,
        In order to know what hospitals I have associations with,
        I would like to be able to see a list of hospitals in my region.

Background: 
        Given the following hospital exists
            | name        | 
            | Karolinska  | 
            | Sophiahemmet|

Scenario: 
Given I am on the landing page
When I click on the link "Hospitals"
Then I should see "Karolinska"
And I should not see "St.Mary"



