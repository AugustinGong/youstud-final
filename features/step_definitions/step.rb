When(/^I go on the homepage$/) do
    visit root_path
end
  
Then(/^I see the homepage$/) do
	expect(page).to have_content("Benvenuto in YOUSTUD")
end

Given(/^I am on the newbookpage$/) do
    visit new_book_path
end

Then(/^I see Aggiungi un nuovo libro$/) do
	expect(page).to have_content("Aggiungi un nuovo libro")
end

Given(/^I am on the loginpage$/) do
    visit new_user_session_path
end

Then(/^I see Log in$/) do
	expect(page).to have_content("Log in")
end

Given(/^I am on the signuppage$/) do
    visit new_user_registration_path
end

Then(/^I see Sign up$/) do
	expect(page).to have_content("Sign up")
end



  