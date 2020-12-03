Feature: Test fixture test suite
  Demo of using background, after scenario, after feature

  Background: Before scenario block
    * print "Before scenario"
    * configure afterScenario =
    """
    function()
    {
    karate.log("From after scenario");
    }
    """

    * configure afterFeature =
    """
    function()
    {
    karate.log("From after feature");
    }
    """

    Scenario: Test case1
      * print "From test case1"

    Scenario: Test case2
      * print "From test case2"