Feature: Read CSV 
Scenario: Test CSV File
  * def configData =  karate.read('file:src/test/java/util/data.csv')
  * print configData
Given  url 'http://localhost:8082/activity'
When  method GET
Then status 200
Then macth configData contains $
#	* def configUser = configData.id
# 	* print configUser
#  * def confPass = configData.name
#  * print confPass
  
	
 