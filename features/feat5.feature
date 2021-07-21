Feature: home
  As a student
  I want to go to the homepage
  So that I can see homepage

Scenario: User can sign in. In order to have access to the app as a student I want to sign in
  Given I am on the homepage 
  Then I should see link "accedi"
  When I fill in "email" with "xxx@xxx.it"
  And I fill in "password" with "xxxx"
  Then I should be on the homepage
