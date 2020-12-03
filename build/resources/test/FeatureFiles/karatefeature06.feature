Feature: Karate test suite 6
  Testing karate with external payload file
  @soap
  Scenario: SOAP API testing
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read('../PayloadData/soapAPIInput.xml')
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    And match response contains "122"
    And match response //CelsiusToFahrenheitResult == 122
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == "xml"
    And assert responseTime <= 2000