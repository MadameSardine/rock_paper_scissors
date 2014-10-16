Given(/^I have chosen to play vs an human$/) do
  visit '/'
  click_link 'Play vs Human'
end

When(/^I register as the second player$/) do
  fill_in('player_name', :with => 'Misifu')
  click_button 'Register'
end

