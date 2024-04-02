Feature: Read Json File

 
Scenario: Json Reading
	* def jsoncontent = 
	  """
	  	[
	  	 {'name':'Amogh',
	  	 'code': '123'},
	  	 {'name':'Ved',
	  	 'code': '456'}
	  	]
	  """
	  * print jsoncontent
	  * print jsoncontent[0].name
	  * print jsoncontent[1].code
	  
#Given  url 'http://localhost:8082/activity'
#When  method GET
#Then status 404

