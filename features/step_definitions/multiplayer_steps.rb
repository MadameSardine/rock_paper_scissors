When(/^I register as the second player$/) do
  fill_in('player_name', :with => 'Misifu')
  click_button 'Register'
end

