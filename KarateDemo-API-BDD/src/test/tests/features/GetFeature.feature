Feature: Get API Demo

  Background: 
    * url 'http://localhost:8081/api/v1'
    * header Accept = 'application/json'

  #Simple Get request
  Scenario: Get Demo 1
    Given url 'http://localhost:8081/api/v1/employees/'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # Get with Background
  Scenario: Get Demo 2
    Given path '/employees/4'
    When method GET
    Then status 200

  # Get with Assertions
  Scenario: Get Demo 3
    Given path '/employees/'
    When method GET
    Then status 200
    And print response

  #And match response.x[0].firstName !=null
  Scenario: Get Demo 4
    Given url 'http://localhost:8081/api/v1/employees/6'
    When method GET
    Then status 200
    And match $ == {"id":6,"firstName":"satesh","lastName":"sir","emailId":"sir@gmaoil"}

  Scenario: Testing that GET response contains specific field
    Given url 'http://localhost:8081/api/v1/employees'
    When method GET
    Then status 200
    And match $ contains {id:"4"}
