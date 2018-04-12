Feature:
    Scenario: Purchase two books
    When I purchase "Pragmatic Unit Testing (C#)"
    And I continue shopping
    And I purchase "Pragmatic Version Control"
    And I checkout
    And I enter "Cheezy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "cheezy@example.com" in the email field
    And I select "Credit card" from the pay type dropdown
    And I place my order
    Then I should see "Thank you for your order"