Feature: Karate Test Suite1
  Demo of using variables in scenario

  Scenario: Karate Test case1
    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "c = ", c
    And karate.log("Test ended")


  Scenario: Karate Test case2
    Given def a = 30
    * def b = 20
    When def c = a + b
    Then assert c == 50
    * print "c = ", c
    * karate.log("Test ended")

  Scenario: Karate Test case3
    * def a = 30
    * def b = 30
    * def c = a + b
    * assert c == 60
    * print "c = ", c
    * karate.log("Test ended")