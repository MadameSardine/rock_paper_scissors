Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I have choose to play vs robot$/) do
  visit '/'
  click_link 'Play vs Robot'
end

When(/^I register my name$/) do
  fill_in('player_name', :with => 'Sandrine')
  click_button 'Register'
end

Then(/^I should be asked to "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I dont input my name$/) do
  click_button 'Register'
end

