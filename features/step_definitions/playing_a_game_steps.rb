Given(/^I have registered$/) do
  visit '/new_game'
  click_button 'Register'
end

When(/^I choose rock$/) do
  choose("option", :option => "Rock")
  click_button 'Send'
end

Then(/^I should see if I have won$/) do
  expect(page).to have_content('beat' || 'EVEN')
end

Given(/^I have played a game$/) do
  visit'/new_game/result'
end