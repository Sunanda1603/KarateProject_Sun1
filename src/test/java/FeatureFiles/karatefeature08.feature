Feature: Karate Test suite8
  REST API end-to-end testing

  Scenario: Create, fetch, update, delete employee test
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Sunanda","salary":"12345","age":"23"}
    When method POST
    Then status 200
    * def id = response.data.id
    * match response.data.name == "Sunanda"
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200

    Given url "http://dummy.restapiexample.com/public/api/v1/update/" + id
    And request {"name":"Sunanda","salary":"12345","age":"25"}
    When method PUT
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/delete/" + id
    When method DELETE
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200



