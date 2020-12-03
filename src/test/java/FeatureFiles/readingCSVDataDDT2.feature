Feature: Karate test suite - CSV data
  Reading csv data for DDT

  Background:
    * def data = read('classpath:data.csv')

  Scenario Outline: CSV DDT Testing
    * print "<custId>, <custName>, <age>"
    * def json1 = {"last_name" : <custName>}
    * print json1

    Examples:
      | data |