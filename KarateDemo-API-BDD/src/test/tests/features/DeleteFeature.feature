Feature: Delete Demo

  Scenario: Delete Demo 1
    Given url 'http://localhost:8081/api/v1/employees/11'
    When method DELETE
    Then status 200
    And print response
