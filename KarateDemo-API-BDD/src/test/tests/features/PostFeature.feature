Feature: Post API Demo
	
	Scenario: Post Demo 1
		Given url 'http://localhost:8081/api/v1/employees'
		And request {"firstName":"Cheshvika1","lastName":"Burada1","emailId":"gayathri@gmail.com"}
		When method POST
		Then status 200
		And match $ contains {id:"#notnull"}
		