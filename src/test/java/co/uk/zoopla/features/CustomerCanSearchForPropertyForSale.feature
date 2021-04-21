Feature: For Sale Search
  As a customer
  I want the ability to search for any properties of my choice
  So that I can choose one to buy


#  // BA write features above


  Scenario Outline: Search for in a City
    Given I navigate to Zoopla homepage
    When I enter "<Location>" into search field
    And I select "<MinPrice>" from Min price
    And I select "<MaxPrice>" from Max price
    And  I select "<PropertyType>" from Property type
    And I select "<NoOfBeds>" from Bedrooms
    And I click on search button
    Then the search "<Location>" is displayed
    And I click on one of the search result

  Examples:
  |Location|MinPrice|MaxPrice|PropertyType|NoOfBeds|
  |London  |No min  |No max  |Show all    |No min  |
#  |London  |£120,000|No max  |Show all    |No min  |
#  |London  |No min  |£400,000  |Show all  |No min  |
#  |London  |£120,000|£400,000  |Show all  |No min  |
#  |London  |£120,000|£400,000  |Houses    |No min  |
#  |London  |£120,000|£400,000  |Show all  |3+      |
#  |m24 2FZ  |£120,000|£400,000  |Show all     |3+  |
#  |Piccadilly Station|£120,000|£400,000|Show all|3+|

  Scenario Outline: Error page is displayed for search
    Given I navigate to Zoopla homepage
    When I enter "<Location>" into search field
    And I select "<MinPrice>" from Min price
    And I select "<MaxPrice>" from Max price
    And  I select "<PropertyType>" from Property type
    And I select "<NoOfBeds>" from Bedrooms
    And I click on search button
    Then an error page is displayed

  Examples:
    |Location|MinPrice|MaxPrice|PropertyType|NoOfBeds|
    |NNNNNNN |No min  |No max  |Show all    |No min  |


#  Scenario: Search for in a City
#    Given I navigate to Zoopla homepage
#    When I enter "London" into search field
#    And I select "No min" from Min price
#    And I select "No Max" from Max price
#    And  I select "Show all" from Property type
#    And I select "No min" from Bedrooms
#    And I click on search button
#    Then the search "London" is displayed
#
#
#  Scenario: Search for property in a City
#    Given I navigate to Zoopla homepage
#    When I enter "London" into search field
#    And I select "£120,000" from Min price
#    And I select "No Max" from Max price
#    And  I select "Show all" from Property type
#    And I select "No min" from Bedrooms
#    And I click on search button
#    Then the search "London" is displayed
#
#
#  Scenario: Search for Property in a City with max price
#    Given I navigate to Zoopla homepage
#    When I enter "London" into search field
#    And I select "No min" from Min price
#    And I select "£400,00" from Max price
#    And  I select "Show all" from Property type
#    And I select "No min" from Bedrooms
#    And I click on search button
#    Then the search "London" is displayed
#
#
#  Scenario: Search for Property in a City with min and max price
#    Given I navigate to Zoopla homepage
#    When I enter "London" into search field
#    And I select "£120,000" from Min price
#    And I select "£400,00" from Max price
#    And  I select "Show all" from Property type
#    And I select "No min" from Bedrooms
#    And I click on search button
#    Then the search "London" is displayed

#  Testers writer acceptance Criteria