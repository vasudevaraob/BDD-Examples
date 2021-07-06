Feature: Put API Demo
	
	Scenario: Put Demo 1
		Given url 'http://localhost:8081/api/v1/employees/11'
		And request {"firstName":"Cheshvika11111","lastName":"Burada1","emailId":"gayathri@gmail.com"}
		When method PUT
		Then status 200
		And print response
		And print responseStatus