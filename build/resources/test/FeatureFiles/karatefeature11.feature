Feature: Karate test suite11
  Demo of using JavaScript functions within scenario

  Scenario: JavaScript test case1
    * def fn1 = function(){ return 123; }

    * def fn2 =
    """
    function(id)
    { karate.log(id); }
    """

    * print fn1()
    * fn2("Sun")