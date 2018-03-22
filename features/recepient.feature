Feature: Recipient add edit money
  Sending money scenerios
  Background:
    Given we are on the login urls
  Scenario Outline:
    When I enter username as "<username>"
    And I enter password as "<password>"
    Then login should be unsucessful
    Examples:
      | username | password |
      | aravith  | ravi1234 |
      |          | ravi1234 |
      |  ravi    |          |
      |          |          |
