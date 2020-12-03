Feature: Karate test suite12
  Calling static and non-static variable file

  Scenario: Static variable test case
    * def constants = Java.type('Misc.AutomationConstants')
    * print constants.devURL
    * print constants.getdevURL()

  Scenario: Non-Static variable test case
    * def env1 =
    """
    function()
    {
    var temp = Java.type('Misc.AutomationConstants');
    var constants = new temp();
    return constants.qaURL;
    }
    """
    * def qaURL = call env1
    * print qaURL
    * print env1()

  Scenario: Non-Static variable test case2
    * def env1 =
    """
    function()
    {
    return (new (Java.type('Misc.AutomationConstants'))).qaURL;

    }
    """
    * def qaURL = call env1
    * print qaURL
    * print env1()
