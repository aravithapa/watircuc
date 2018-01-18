Feature:
  'When I go to the Google search page, and search for an item,
  I expect to see some reference to that item in the result summary.'

  Scenario:
    Given that I have gone to the Google page
    When I enter the valid data on the page
    |Fields               |Values              |
    |First Name           |Tom                 |
    |Last Name            |Kenny               |
    |Email Address        |aravithapa@gmail.com|
    |Confirm Email Address|aravithapa@gmail.com|
    |country              |Sweden              |
    |Occupation           |Developer           |
    |Without For          |Chilli              |
    |Personal Code        | 12121              |
    |Good Luck            | thanks             |

    And click the Search Button
    Then "cats" should be mentioned in the results
