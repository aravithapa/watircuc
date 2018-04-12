Feature: Recipient add edit money
  Sending money scenerios
  Background:
    Given we are on the send money urls
    Scenario Outline: Recipient Details with invalid details
    When I set the full name to "<full name>"
    And I set the phone number to "<mobile number>"
    And I set the bank name to "<bank name>"
    And Does the list of banks are available "<bank name"
    And I set the bank branch number "<branch number>"
    And I set the email "<email address>"
    And I set the bank account number "<bank acc.num.>"
    Then I should see the "error Messages"
    Examples:
    |full name |mobile number|bank name|branch number|email address|bank acc.num.|
    |          |9847184936   |NIBL     |2121         |ravi@ra.com  |2121212      |
    |ravi thapa|adfdf98      |NIBL     |2121         |ravi@ra.com  |2121212      |
    |ravi thapa|9847185936   |         |2121         |ravi@ra.com  |2121212      |
    |ravi thapa|9847185936   |asdf     |2121         |ravi@ra.com  |2121212      |
    |ravi thapa|9847185936   |NIBL     |             |ravi@ra.com  |2121212      |
    |ravi thapa|9847185936   |NIBL     |2121         |ravira       |2121212      |
    |ravi thapa|9847185936   |NIBL     |2121         |rav          |2121212      |
    |ravi thapa|9847185936   |NIBL     |2121         |ravi@ra.com  |             |
    |ravi thapa|9847185936   |NIBL     |2121         |ravi@ra.com  |12121        |