Feature: Karate config test suite
  Reading global variable from karate config file

  Scenario: Test case config
    Given url baseURL
    And path listUsers
    When  method GET
    Then status 200