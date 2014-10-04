Feature: Starting the game
	In order to play Rock, Paper, Scissors,
	As a player
	I want to start a game

	Scenario: Registering
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"

	Scenario: Registering part 2
		Given I am on the new game page
		When I register my name
		Then I should be asked to "choose one option"