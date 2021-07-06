Feature: Sample API Tests

  Scenario: Test a sample get API
    Given url 'http://localhost:8081/api/v1/employees/'
    When method GET
    Then status 200
