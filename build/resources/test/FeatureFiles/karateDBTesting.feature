Feature: Karate DB Testing test suite
  Interacting with DB

  Background: dbInit
    * def db = Java.type('Misc.MyDbUtil')


  Scenario: select statement test case
    * def rows = db.selectStatement("select * from tools")
    * print rows
    * match rows contains "Karate"

  Scenario: insert statement test case
    * def res = db.insertStatement("insert into tools values(20,'Sample','ABC')")
    * print res
    * match res == "Success"

  Scenario: update statement test case
    * def rowsAffected = db.updateStatement("update tools set toolName = 'Sample12' where toolId=20")
    * print rowsAffected
    * assert rowsAffected >= 1

  Scenario: delete statement test case
    * def rowsAffected = db.deleteStatement("delete from tools where toolId=20")
    * print rowsAffected
    * assert rowsAffected >= 1