When(/^I click the Locations button$/) do
  find('.Locations').click
end

When(/^I select Apartment from the Address Type select box$/) do
  select('Apartment',:from => 'Address_Type_Select')
end

When(/^I enter Westbriar Condos in the Apartment Name field$/) do
  fill_in('Location_Name', :with => 'Westbriar Condos')
end

When(/^I enter 2700 Bellforest Court in the Street Address field$/) do
  fill_in('Street', :with => '2700 Bellforest Court')
end

When(/^I enter 201 in the Suite\/Apt number field$/) do
  fill_in('Address_Line_2', :with => '201')
end

When(/^I enter Vienna in the City field$/) do
  fill_in('City', :with => 'Vienna')
end

When(/^I enter 22180 in the Zip Code field$/) do
  fill_in('Postal_Code', :with => '22180')
end

When(/^I am taken to the Locations page$/) do
  expect(page).to have_selector(:id,'locationsResultsPage')
end


When(/^I click the Order Carryout\/Pickup button for store 4348$/) do
  find(:xpath,'//div[@data-storeid=\'4348\']//a[@data-type=\'Carryout\']').click
end
