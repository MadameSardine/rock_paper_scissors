Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I am on the new game page$/) do
  visit '/new_game'
end

When(/^I register my name$/) do
  fill_in('player_name', :with => 'Sandrine')
  click_button 'Register'
end

Then(/^I should be asked to "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end


