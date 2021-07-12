Feature: home
  As a student
  I want to go to the homepage
  So that I can see homepage

Scenario:
  When I go on the homepage
  Then I see the homepage

Scenario: User can create a post
  Given I am on the newbookpage    
  Then I see Aggiungi un nuovo libro

Scenario: User can login
  Given I am on the loginpage    
  Then I see Log in

Scenario: User can sign up
  Given I am on the signuppage    
  Then I see Sign up
