Feature: Bacic Authentication

Scenario: Test Local basic auth first
  * def configData =  karate.read('file:src/test/java/util/global.json')
  * print configData
 	* def configUser = configData.username
 	* print configUser
  * def confPass = configData.password
  * print confPass
  
  * def userPrefix = configData.suffix
  * print userPrefix
  * def endpoint = 'https://' + configUser + ':' + confPass +'@'+ userPrefix
  * print endpoint
Given url endpoint
When method GET
Then status 200
Then match $ contains 'Congratulations'
 * print response

	
 