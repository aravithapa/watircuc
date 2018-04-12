Feature: Recipient add edit money sending money scenerios
  Scenario Outline:
    Given we are on the signup url
    When set the value in email as "<email>"
    And set the value in password as "<password>"
    And set the same value in password as "<rePassword>"
    Then sign up should be unsuccessful
    Examples:
      |email               |password|rePassword|
      |aravithapa@gmail.com|ravi1234|ravi1234  |
      |aravithapa@gmail.com|        |ravi1234  |
      |                    |ravi1234|ravi1234  |
      |                    |        |          |
      |aaaaaaaaaaaaaa@aaa.a|ravi1234|ravi1234  |

