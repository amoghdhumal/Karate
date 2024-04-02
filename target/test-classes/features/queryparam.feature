Feature: Get Microservices Tesitng Request

Background:
		* url 'https://gorest.co.in/public/v2'
  

Scenario: Test Get MicrosServices Service
	* def query = {id:'6815701'}
	When path '/users'
	And params query
	When method GET
	Then status 200
		* print response.length
		
		
Scenario: Test Post MicrosServices Service
	When path '/posts'
	When method GET
	Then status 200
		* print response
		* def count = response.length
	