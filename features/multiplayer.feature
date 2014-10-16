Feature: multiplayer
	In order to have fun with my friends
	As a rock, paper, scissors fan
	I want to be able to play with someone else

	Scenario: Playing vs Human
		Given I am on the homepage
		When I follow "Play vs Human"
		Then I should see "What's your name?"

	Scenario: Choosing an option vs human
		Given I have choosen to play vs human
		When I choose rock
		Then I should see that the other human has to make a choice

	Scenario: Registering a second player
		Given I have chosen to play vs an human
		When I register as the second player
		Then I should see "choose one option"