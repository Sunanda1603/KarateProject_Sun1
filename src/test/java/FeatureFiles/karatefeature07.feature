Feature: Karate test suite 5
  Testing REST API with JSON output
  @rest
  Scenario: REST API testing
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method GET
    Then status 200
    #And match response //employee_name contains "Tiger"
    And match responseType == 'json'
    #And print response
    * match response.status == "success"
    * match response.status == "#string"
    * match response.data == "#array"
    * print response.data[0].employee_name
    * match response.data[0].employee_name contains "Tiger"