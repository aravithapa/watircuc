Feature: Recipient add edit money sending money scenerios
  Scenario Outline:
    Given we are on the profile url
    When i fill firstname as <firstname>
    And i fill lastname as <lastname>
    And i fill email as <email>
    And i fill zipcode as <zipcode>
    And i fill phone as <phone>
    And i fill dob as <dob>
    And i fill country as <country>
    And i fill city as <city>
    And i fill street as <street>

    Then Login is unsuccess
    Examples:
     |firstname|lastname|email             |zipcode|phone     |dob      |country|city     |street   |
     |ravi     |Thapa   |ravi@remitasia.com|nepal  |9847185936|2018-10-2|Nepal  |Kathmandu|Samakhusi|