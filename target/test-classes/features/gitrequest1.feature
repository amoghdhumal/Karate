Feature: Get Microservices Tesitng Request

Background:
		* url 'https://gorest.co.in/public/v2'
  

Scenario: Test MicrosServices Service
	When path '/users'
	When method GET
	Then status 200
		* print response
		
		
Scenario: Test Post MicrosServices Service
	Gievn path '/posts'
	When method GET
	Then status 200
		* print response
	