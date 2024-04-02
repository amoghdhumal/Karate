Feature: Read Json File

 
Scenario: Json Reading
	* def jsoncontent = 
	  """
	  	{'name':'Amogh',
	  	 'code': '123'}
	  """
	  * print jsoncontent
	  * print jsoncontent.name
	  * print jsoncontent.code
	  
#Given  url 'http://localhost:8082/activity'
#When  method GET
#Then status 404

