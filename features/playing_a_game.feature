Feature: playing a game
	In order to beat my opponent
	As a registered player
	I want to choose an option (rock, paper, scissors)

	Scenario: Choosing an option
		Given I have registered
		When I choose rock
		Then I should see if I have won

	Scenario: Playing again
		Given I have played a game
		When I follow "Play again"
		Then I should see "choose one option"

	Scenario: Forgot to choose an option
		Given I have registered
		When I don't choose an option
		Then I should see "choose one option"