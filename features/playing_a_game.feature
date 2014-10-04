Feature: playing a game
	In order to beat my opponent
	As a registered player
	I want to choose an option (rock, paper, scissors)

	Scenario: Choosing an option
	Given I have registered
	When I choose rock
	Then I should see if I have won