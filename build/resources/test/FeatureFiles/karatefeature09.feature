Feature: Karate test suite9
  Using url and path

  Scenario: url and path usage test case1
    Given url "http://reqres.in"
    And path "/api/users?page=2"
    When method GET
    Then status 200
    And match response.page == "##"

  Scenario: url and path usage test case2
    Given url "http://reqres.in"
    And path "/api/users"
    And param page = 2
    When method GET
    Then status 200
    And match response.page == "##"