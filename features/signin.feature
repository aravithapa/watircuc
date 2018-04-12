Feature: Recipient add edit money sending money scenerios
  Scenario Outline:
    Given we are on the signin url
    When i fill username as <email>
    And i fill password as <password>
    Then Login is unsuccess
    Examples:
    |email             |password|
    |ravi@remitasia.com|ravi1235|
    |ravi@remitasia.com|        |
    |                  |ravi1236|
    |                  |        |
    |ravi@remitasia.com|ravi1234|