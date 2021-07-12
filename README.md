# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

When (/^ I click "(.*?)" $/) do |arg1|
	click_link arg1
end

When('I click {string}') do |string|
    click_link string
end
  

Given(/^I am on the home page$/) do
    visit "/dashboard"
end


Scenario: User can create a post
            Given I am on the home page 
            When I click "Nuovo Libro"       
            Then I should see "Aggiungi un nuovo libro"


Feature: 1st feature
    In order to sell a book
    As a student 
    I want to create a post

        Scenario: User can edit his profile
            Given I am on the profile
            When I click 'Modifica Profilo'
            Then I should see "Edit User"



        Scenario: User can see details of all the books
            Given I am on the homepage
            When I click 'Scopri di più'
            Then I should see "Dettagli del libro"

        Scenario: User can manage his books
        Given I am on the mybookspage    
        Then I see Tutti i miei libri

Given(/^I am on the mybookspage$/) do
    visit usersbook_path
end

Then(/^I see Tutti i miei libri$/) do
	expect(page).to have_content("Tutti i miei libri")
end