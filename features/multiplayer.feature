Feature: multiplayer
	In order to have fun with my friends
	As a rock, paper, scissors fan
	I want to be able to play with someone else

	Scenario: Registering a second player
		Given I am on the new game page
		When I register as the second player
		Then I should see "choose one option"