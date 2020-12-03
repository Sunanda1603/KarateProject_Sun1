Feature: Karate test suite - CSV data
  Reading csv data for DDT

  Scenario Outline: CSV data driven testing
    * print "<custId> , <custName> , <age>"
    * def json1 = {"last_name" : <custName>}
    * print json1



    Examples:
    | read('classpath:data.csv') |