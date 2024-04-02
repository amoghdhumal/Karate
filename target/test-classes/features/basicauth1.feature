Feature: Use Outline to create users

Scenario Outline: Basic outline create new user using data in the  data outline
Given url 'https://gorest.co.in/public/v2/users'
* header Authorization = 'Bearer f0ca68b6fa88f8c8a74f37b8c908518e160349cb9c00762237427709a372618f'   
And request 
"""
 {
 	"name" : "<name>",
 	"gender" : "<gender>"
  "status" : "<status>",
  "email" : "<email>",
  "job" : "<job>"
  }
"""
When method post
Then status 201
Then match response.email == "<email>"
  
Examples: 
  | name   | gender | status  | email  | job  |
  | AmoghA |    f   | active | 1611test1@1611 | rain |
  | Amod  |    m   | active    | 1611abc1@1611 | rain|