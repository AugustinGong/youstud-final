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

Scenario: User can sign in. In order to have access to the app as a student I want to sign in

  Given I am on the homepage 
  Then I should see link "accedi"
  When I fill in "email" with "xxx@xxx.it"
  And I fill in "password" with "xxxx"
  Then I should be on the homepage

Scenario: User can edit his profile

  Given I am on the profile  
  When I click "edit profile"
  Then I should be on the edit profile page