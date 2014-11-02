Given(/^I have choosen to play vs robot$/) do
  	visit '/'
  	fill_in('player_name', :with => 'Sandrine')
  	click_button 'Register'
	click_link 'Play'
end

When(/^I choose rock$/) do
  choose("option", :option => "Rock")
  click_button 'Send'
end

Then(/^I should see if I have won$/) do
  expect(page).to have_content('wins')
end



