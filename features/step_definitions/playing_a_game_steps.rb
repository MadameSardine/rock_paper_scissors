Given(/^I have choosen to play vs robot$/) do
  	visit '/'
	click_link 'Play vs Robot'
	click_button 'Register'
end

When(/^I choose rock$/) do
  choose("option", :option => "Rock")
  click_button 'Send'
end

Then(/^I should see if I have won$/) do
  expect(page).to have_content('WIN')
end



