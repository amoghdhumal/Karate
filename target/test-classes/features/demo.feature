Feature: Title of your feature
Scenario:  Print Scenario
 * print 'hello'
 * def x = 200
 * def x = 300
 * print "sum is " + (x + y)
 
Scenario: Test Local Service
Given  url 'http://localhost:8082'
When  method GET
Then status 404

Scenario: Test Local Service  Found
Given  url 'http://localhost:8082/activity'
When  method GET
Then status 200
	* print response
	* print response.length
	* def count= response.length
	* match count == 10
	
	
 