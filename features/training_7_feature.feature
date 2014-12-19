Feature: Order Dominos Pizza Online
  We want to step through a simple scenario for training

@homepageexists @orderonlinetab @addressinfo @continuebutton @selectstore
@orderbrooklynpizza @orderspecialtypizza @validateprice @validateselection
Scenario: Enter customer info, select a store, and order 2 pizzas
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
    And I am taken to the Entrees page
    And I click Build Your Own pizza
    And I choose Large Brooklyn Style
    And I click next step
    And I choose White Sauce
    And I choose extra sauce
    And I click next step
    And I click No Thanks to extra cheese
    And I select pepperoni
    And I click triple pepperoni
    And I select Jalepenos
    And I click double Jalepenos
    And I click Add to Order
    And I am taken to the Entrees page
    And I click Specialty Pizza
    And I click Order for Italian Sausage and Pepper Trio
    And I click extra Green Peppers
    And I click extra Sliced Italian Sausage
    And I click Add to Order
    And I am taken to the specialty pizza Entrees page
    And I click the checkout button
    And I am taken to the checkout page
    And I have ordered an extra large 16 inch Brooklyn pizza
    And the Brooklyn pizza has triple pepperoni, double jalapenos, and no robust inspired tomato sauce
    And the price of the Brooklyn pizza is 21.55
    And the quantity of Brooklyn pizza is 1
    And I have order an Italian sausage and pepper trio
    And the Italian sausage and pepper trio has extra green peppers and extra sliced Italian sausage
    And the price of the Italian sausage pizza is 11.99
    And the quantity of Italian sausage pizza is 1
    And the food subtotal is 33.54
    And the tax amount is 3.35
  Then the Order Total is 36.89
