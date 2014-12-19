 Feature: Order Dominos Pizza Online
  We want to step through a simple scenario for training

@homepageexists @orderonlinetab @addressinfo @continuebutton @selectstore
Scenario: Enter personal address and select a store
  Given I visit the Dominos home page
  When I click the Order Online tab
  Then I should see the Dominos Location Search page
  When I click the Locations button
    And I select Apartment from the Address Type select box
    And I enter Westbriar Condos in the Apartment Name field
    And I enter 2700 Bellforest Court in the Street Address field
    And I enter 201 in the Suite/Apt number field
    And I enter Vienna in the City field
    And I select VA from the State the select box
    And I enter 22180 in the Zip Code field
    And I click the Continue button
    And I am taken to the Locations page
    And I click the Order Carryout/Pickup button for store 4348
  Then I am taken to the Entrees page
