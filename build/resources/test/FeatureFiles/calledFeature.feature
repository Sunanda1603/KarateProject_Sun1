Feature: Karate test suite - called
  Called Feature

  Scenario: called feature test
    Given url "http://reqres.in"
    And path "/api/users?page=2"
    When method GET
    Then status 200
    And match response.page == 1