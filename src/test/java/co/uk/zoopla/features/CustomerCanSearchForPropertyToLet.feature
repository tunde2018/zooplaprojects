Feature: For Rent Search

Feature: For Sale Search
As a customer
I want the ability to search for any properties of my choice
So that I can choose one to rent


#  // BA write features above


  Scenario Outline: Search for any property for rent
    Given I navigate to Zoopla homepage
    When I enter "<Location>" into search field
    And I select "<MinPrice>" from Min price rent
    And I select "<MaxPrice>" from Max price for rent
    And  I select "<PropertyType>" from Property type
    And I select "<NoOfBeds>" from Bedrooms
    And I click on search button
    Then the search "<Location>" is displayed
    And I click on one of the search result

    Examples:
      |Location|MinPrice|MaxPrice|PropertyType|NoOfBeds|
      |London  |No min  |No max  |Show all    |No min  |