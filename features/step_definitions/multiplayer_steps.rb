Given(/^I have chosen to play vs an human$/) do
  visit '/'
  click_link 'Play vs Human'
end

Given(/^I have choosen to play vs human$/) do
  	visit '/'
	click_link 'Play vs Human'
	click_button 'Register'
end

Then(/^I should see that the other human has to make a choice$/) do
  expect(page).to have_content('Waiting for all players to make their pick')
end


When(/^I register as the second player$/) do
  fill_in('player_name', :with => 'Misifu')
  click_button 'Register'
end

