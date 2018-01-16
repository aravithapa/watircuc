=begin
Scenario: Edit email with invalid email
When change the email into "<email>"
Then email should not be changed to "ravi@asdfadf"
But prompt message that email is not valid

Example:
    |email            |
|raviremitasia.com|
|ravi@remitasia   |
|ravi@remitasia   |

         Scenario: Edit email valid email
When change the email into "<email>"
Then email should be changed to "ravi@remitasia.com"

Scenario: Edit address with valid address
When change the address into "samakhusi"
Then address should be changed to "samakhusi"

Scenario: Edit current address with valid address
Given navigate to the editing address page
When change the current address into "Kathmandu"
Then current address should be changed to "Kathmandu"

Scenario: Edit address with valid ZIP code
Given navigate to the editing Zipcode page
When change the zipcode into "44600"
Then zip code should  be changed to "44600"

Scenario: Edit address with invalid Zipcode
Given navigate to the editing ZipCode page
When change the email into "asdf"
Then zip code should not be changed to "asdf"
But prompt message that this is invalid

Scenario: Edit address with valid phone number
Given navigate to the editing  phone number page
When change the email into "9847185936"
Then phone number should  be changed to "9847185936"

Scenario: Edit phone number
Given navigate to the editing phone number page
When change the phone into "9847185936"
Then phone number should not be changed to "9847185936"
But prompt message that this is invalid

Scenario: Edit phone number with invalid phpne number
Given navigate to the editing phone number page
When change the phone into "asdfsdf"
Then phone number should not be changed to "asdfsdf"
But prompt message that this is invalid

Scenario: Does the varification email sent to the changed email
When email changed to new email
Then a varification code  should sent to that email

Scenario: Does the profile has all existing information
When editing the profile
Then the profile should have all existing information
=end