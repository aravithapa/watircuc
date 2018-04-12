Feature: Recipient add edit money sending money scenerios
  Scenario Outline:
    Given we are on the calcpage url
    When I select the recepient country as "<recipientCountry>"
    And I select the sending country as "<sendCountry>"
    And I set the sending amount as "<sendAmount>"
    Then It should show the amount

    Examples:
      |sendCountry|sendAmount|recipientCountry |
      |GBP        |2000       |AUD             |
      |GBP        |2000       |IDR             |
      |GBP        |2000       |PHP             |
      |GBP        |2000       |SGD             |
      |GBP        |2000       |NPR             |
      |AUD        |2000       |IDR             |
      |AUD        |2000       |PHP             |
      |AUD        |2000       |SGD             |
      |AUD        |2000       |NPR             |