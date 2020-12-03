Feature: Karate test suite10
  Data driven testing

  @ddt
  Scenario Outline: DDT test case
    Given url "http://reqres.in"
    And path "/api/users?page=<pno>"
    When method GET
    Then status 200
    And match response.page == "##"

    Examples:
    | pno |
    | 1 |
    | 2 |
    | 3 |
    | 4 |
    | 5 |