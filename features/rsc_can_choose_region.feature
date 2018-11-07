@javascript
Feature: Rsc can choose region during signup process
    As a User
    In order to belong to a region
    I would like to be able to select a region on registration

    Background:
        Given the following region exist
            | region    |  
            | stockholm |
        
        Scenario: user choose region while signing up
            Given I fill in "Email" with "newrsc@email.com"
            And I fill in "Password" with "password"
            And I fill in "Password Confirmation" with "password"
            And I pick "stockholm" from region list
            And I click on "Create account"
            Then I should see the message "RSC user newrsc@email.com created."
 
    