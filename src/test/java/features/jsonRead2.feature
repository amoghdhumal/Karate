Feature: Read Json File

 
Scenario: Json Reading
	* def jsoncontent = 
	  """
	  	{
    "glossary": {
        "title": "example glossary",
		"GlossDiv": {
            "title": "S",
			"GlossList": {
                "GlossEntry": {
                    "ID": "SGML",
					"SortAs": "SGML",
					"GlossTerm": "Standard Generalized Markup Language",
					"Acronym": "SGML",
					"Abbrev": "ISO 8879:1986",
					"GlossDef": {
                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
						"GlossSeeAlso": ["GML", "XML"]
                    },
					"GlossSee": "markup"
                }
            }
        }
    }
}
	  """
	  * print jsoncontent.glossary.GlossDiv.GlossList.GlossEntry.ID
	  * match jsoncontent.glossary.GlossDiv.GlossList.GlossEntry.ID == 'SGML'
	 
	  
#Given  url 'http://localhost:8082/activity'
#When  method GET
#Then status 404

