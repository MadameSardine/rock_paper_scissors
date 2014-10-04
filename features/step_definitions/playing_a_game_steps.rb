Given(/^I have registered$/) do
  visit '/new_game'
  click_button 'Register'
end

When(/^I choose rock$/) do
  choose("option", :option => "rock")
  click_button 'Send'
end

Then(/^I should see if I have won$/) do
  expect(page).to have_content('BEATS')
end