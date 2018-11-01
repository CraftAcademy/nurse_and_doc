Feature: RSC Can See List of Hospitals
        As an RSC,
        In order to know what hospitals I have associations with,
        I would like to be able to see a list of hospitals in my region.

Background:
        Given the following user exists
        |email            |password    |
        |email@email.com  |mypassword  |

Scenario: 
Given I am on the landing page
When I click on the link "Hospitals"
Then I should see "Hospital 1"


