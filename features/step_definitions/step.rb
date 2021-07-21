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

When (/^ I fill in "(.?)" with "(.?)" $/)do |arg1,arg2|
	fill_in arg1, with: arg2
end

When (/^ I click "(.*?)" $/) do |arg1|
	click_on arg1
end


Then(/^I should see link "(.*?)"$/) do |arg1|
	expect(page).to have_link(text:/\A#{arg1}\Z/)
end

Given(/^I am on "(.*?)"$/) do |path|
  visit path
end

  