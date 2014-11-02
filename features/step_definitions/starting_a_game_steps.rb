Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |test|
  expect(page).to have_content(text)
end

When(/^I register my name$/) do
  fill_in('player_name', :with => 'Sandrine')
  click_button 'Register'
end
