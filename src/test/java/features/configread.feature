Feature: Config Read 

#Background:
#		* url 'https://gorest.co.in/public/v2'
  

Scenario: Test Get MicrosServices Service
	Given url endpoint
	* def query = {id:'6815701'}
	When path '/users'
	And params query
	When method GET
	Then status 200
		* print response.length
		
Scenario: Test Get MicrosServices Service
Given url endpoint
* def query = {id:'6815701'}
When path '/users1'
	And params query
	When method GET
	Then status 404
		