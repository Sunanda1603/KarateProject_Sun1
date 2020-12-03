Feature: Karate test suite3
  This feature file consists of scenarios demonstrating how to validate xml content

  Scenario: XML test case1
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    Then print xml
    * match xml/info/id == 101
    * match xml.info.id == "101"
    * match xml/info/tool contains "<name>Karate</name><version>0.9.6</version>"
    * match xml contains "<name>Karate</name><version>0.9.6</version>"

  Scenario: XML test case2
    Given def xml =
    """
  <info>
      <id>101</id>
      <tool>
          <name>Karate</name>
          <version>0.9.6</version>
      </tool>
       <tool>
          <name>IntelliJ</name>
          <version>2020.2</version>
      </tool>
  </info>
  """
    Then print xml
    * match xml/info/id == 101
    * match xml.info.id == "101"
    * match xml/info/tool[1] contains "<name>Karate</name><version>0.9.6</version>"
    * match xml/info/tool[2] contains "<name>IntelliJ</name><version>2020.2</version>"
    * match xml contains "<name>Karate</name><version>0.9.6</version>"
    * assert xml/info/tool/name[contains(.,"Karate")] == Karate