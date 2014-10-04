Feature: Starting the game
	In order to play Rock, Paper, Scissors,
	As a player
	I want to start a game

	Scenario: Registering
		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"