Feature: Get Microservices Tesitng Request

 
Scenario: Test MicrosServices Service
	Given url 'https://gorest.co.in/public/v2/users'
	When method GET
	Then status 200
		* print response
		* print response.length
		* def count = response.length
		* match count == 10
		* def name = response[1].name 
		* print name
#Given  url 'http://localhost:8082/activity'
#When  method GET
#Then status 404

