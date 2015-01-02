 Feature: Order Dominos Pizza Online
  We want to step through a simple scenario for training

@homepageexists @orderonlinetab @addressinfo @continuebutton @address
Scenario: Enter company name and address to order pizza
  Given I visit the Dominos home page
  When I click the Order Online tab
  Then I should see the Dominos Location Search page
  When I click the Delivery button
    And I select Business from the Address Type select box
    And I enter Gannett in the Business Name field
    And I enter 7950 Jones Branch Drive in the Street Address field
    And I enter McLean in the City field
    And I select VA from the State the select box
    And I enter 22102 in the Zip Code field
    And I click the Continue button
  Then I am taken to the Entrees page
