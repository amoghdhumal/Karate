
Feature: Auth token

Scenario: Create new user authentication failed
	Given url 'https://gorest.co.in/public/v2/users'
  When method post
  And request {'name':'amogh','status':'active','email':'261111@test.com','gender':'mail','job':'training'}
  #Then status 201
  * print response
  Then match response.message ==  "Authentication failed"

    
Scenario: Create new user Post and Authorization
	Given url 'https://gorest.co.in/public/v2/users'
  * header Authorization = 'Bearer f0ca68b6fa88f8c8a74f37b8c908518e160349cb9c00762237427709a372618f'   
  And request {'name':'amogh','status':'active','email':'261121@test.com','gender':'male','job':'training'}
  When method post
 	Then status 201
    Then match response.email == '261121@test.com'
    * print response
