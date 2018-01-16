Feature: Recipient add edit money
  Sending money scenerios
  Background:
    Given we are on the send money urls
  Scenario: Recipient expected date,fee,mid market rate to receiver is valid
    When I set the send country to "<send country>"
    And I set the value to "<send amount>"
    And I set the recipient country to "<recipientcountry>"
    Then I should see the as like this:
      |send country|send amount|recipient country|recipient amount|rescive days|fee |Exchange rate|
      |AED         |100        |NPR              |13643           |2 days  **  |0.78|137.8        |


  Scenario Outline: Recipient expected date,fee,mid market rate to receiver is invalid
    When I set the send country to "<send country>"
    And I set the value to "<send amount>"
    And I set the recipient country to "<recipient country>"
    Then I should see the error message "Invalid Character!!"
    Examples:
      |send country|send amount|recipient country|recipient amount|rescive days|fee |mid-market rate|
      |AED        |100        |NPR               |13643           |0 days  **  |0.78|137.8          |
      |AED        |0000       |NPR               |0               |2 days  **  |0   |137.8          |

Feature:
  After a valid calculation of sending amount we are in next url where it contains data of recipient.
  Background:
    Given we are in the next url of send money
  Scenario: Recipient Details with valid details
    When I set the full name to "Ravi"
    And I set the phone number to "9847185936"
    And I set the bank name to "Nepal Investment Bank"
    And I set the bank branch number "2121"
    And I set the email "aravithpa@gmail.com"
    And I set the bank account number "2112121212"
    Then I should see the complete amount page with payment data

  Scenario: Existing Recepient
    When I select the existing recepient "<recepient id>"
    Then I should see full name to "Ravi"
    And I should see the phone number to "9847185936"
    And I should see the bank name to "Nepal Investment Bank"
    And I should see the bank branch number "2121"
    And I should see the email "aravithpa@gmail.com"
    And I should see the bank account number "2112121212"
    Then I should see see the complete amount page with payment data

  Scenario Outline: Recipient Details with invalid details
    When I set the full name to "<full name>"
    And I set the phone number to "<mobile number>"
    And I set the bank name to "<bank name>"
    And Does the list of banks are available "<bank name"
    And I set the bank branch number "<branch number>"
    And I set the email "<email address>"
    And I set the bank account number "<bank acc. num.>"
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

  Recipient Details
  Full Name //Valid
  Phone number //valid
  Bank Name
  //dropdown has all bank account
  //valid
  Bank Branch number
  //if dont know showing branch name
  //valid
  email
  optional
  //if enterend //valid
  Bank Account number
  used local currency account only// valid
Feature:
  After the user profile has been completed with valid recepient then we are in the complete payment url
  Background:
    Given we are in the next url of Complete payment

  Scenario: Completed the process of sending money and here all the data should be valid
    When when there is the valid sending money when sender had not paid all the money
    And  we need recipient "<id>"
    And I should see "<Time of payment>"
    And Calculation of "<sender amount>" is same as of "<sending page amount>"
    And Calculation of "<recepient amount>" is same as of "<sending page recepient amount>"
    And "<sender name>" is same as "<sending page name>"
    And "<sender phone>" is same as "<sending page phone>"
    And "<sender address>" is same as "<sending page address>"
    And "<sender email>" is same as "<sending page email>"
    And User <"bank name"> to transfer money
    And Transfer account name is <"sender name">
    And Transfer account number is <"transfering number">
    And Transfer sort code is <"sort code">
    And Transfer should deposit money within "<date>"
    And "<recepient name>" is same as "<previous page email>"
    And "<recepient phone>" is same as "<previous page phone>"
    And "<recepient bank>" is same as "<previous page bank>"
    And "<recepient address>" is same as "<previous page address>"
    And "<recepient bank account no.>" is same as "<previous page bank account no.>"
    And "<recepient email>" is same as "<previous page recepient email>"
    Then I should see "<process complete>" message


  Scenario: Completed the process of sending money and here we will try with invalid inputs
    When when there the data is not shown correct valud
    And recepient "<id>" is not same as of "<correct id>"
    And Time of payment date is <"date"> is not same as "<correct date>"
    And Calculation of "<sender amount>" is not same as "<actual amount>"
    And Calculation of "<recepient amount>" is not same as "<actual amount>"
    And "<sender name>" is not same as  "<sender name>"
    And "<sender phone>" is not same as  "<sender page phone>"
    And "<sender addresss>" is not same as  "<sending page address>"
    And "<sender email>" is not same as  "<sending page email>"
    And user "<bank name>" to transfer money
    And Transfer account name is not equal "<sender name>"
    And Transfer account number is not equal <"transfering number">
    And Transfer sort code is not equal <"sort code">
    And Transfer should deposit money within "<date>" is not equal to "<to_deposit_date>"
    And "<recepient name>" is not same as "<previous page email>"
    And "<recepient phone>" is not same as "<previous page phone>"
    And "<recepient bank>" is not same as "<previous page bank>"
    And "<recepient address>" is not same as "<previous page address>"
    And "<recepient bank account no.>" is not same as "<previous page bank account no.>"
    And "<recepient email>" is not same as "<previous page recepient email>"
    Then I should see the error message "<Error Message>"