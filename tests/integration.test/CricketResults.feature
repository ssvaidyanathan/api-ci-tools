Feature: As a Cricket API consumer, I want to get India rankings in all formats so that I can build a page
	
	#This test can be run against the mock and the real backend
	Scenario: The Cricket API should show that India's ODI ranking was 3
		Given I set query parameters to 
		| 	parameter   | 	value 		|
		|	team		|	India		|
		|	formatType	|	ODI			|
		When I GET /rankings
		Then response code should be 200
		Then response body path $.query.results.Team.Ranking should be 3

	#This test can be run against the mock and the real backend
	Scenario: The Cricket API should show that India's T20 ranking was 1
		Given I set query parameters to 
		| 	parameter   | 	value 		|
		|	team		|	India		|
		|	formatType 	|	T20			|
		When I GET /rankings
		Then response code should be 200
		Then response body path $.query.results.Team.Ranking should be 1

	#This test can be only be run against the mock and cannot be replicated in the real backend
	#Scenario: The Cricket API should show that India's Test ranking was 1
	#	Given I set query parameters to 
	#	| 	parameter   | 	value 		|
	#	|	team		|	India		|
	#	|	formatType 	|	Test		|
	#	When I GET /rankings
	#	Then response code should be 200
	#	Then response body path $.query.results.Team.Ranking should be 1

	#Error scenarios
	Scenario: The Cricket API should return a 400 if the correct parameters aren't passed
		Given I set query parameters to 
		| 	parameter   | 	value 		|
		|	team		|				|
		When I GET /rankings
		Then response code should be 400

	Scenario: The Cricket API will return an error if you search for a non playing country
		Given I set query parameters to 
		| 	parameter   | 	value 		|
		|	team		|	China		|
		|	formatType 	|	T20			|
		When I GET /rankings
		Then response code should be 404