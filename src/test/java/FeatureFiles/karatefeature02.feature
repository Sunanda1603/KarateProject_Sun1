Feature: Karate Test suite2
  This feature file consists of scenarios demonstrating how to validate json content

  Scenario: JSON test case1
    Given def json =  { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: JSON test case2
    Given def json =
    """
  {
  "id" : "101",
  "tool": { "name":"Karate", "version":"0.9.6"}
  }
  """
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}