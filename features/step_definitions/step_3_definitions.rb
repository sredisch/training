When(/^I click the Delivery button$/) do
  find('.Delivery').click
end

When(/^I select Business from the Address Type select box$/) do
  select('Business',:from => 'Address_Type_Select')
end

When(/^I enter Gannett in the Business Name field$/) do
  fill_in('Location_Name', :with => 'Gannett')
end

When(/^I enter (\d+) Jones Branch Drive in the Street Address field$/) do |arg1|
  fill_in('Street', :with => '7950 Jones Branch Drive')
end

When(/^I enter McLean in the City field$/) do
  fill_in('City', :with => 'McLean')
end

When(/^I select VA from the State the select box$/) do
  select('VA', :from => 'Region')
end

When(/^I enter 22102 in the Zip Code field$/) do |arg1|
  fill_in('Postal_Code', :with => '22102')
end

When(/^I click the Continue button$/) do
  click_button('Continue')
end

Then(/^I am taken to the Entrees page/) do
  expect(page).to have_title('Entrees Home - Domino\'s Pizza, Order Pizza Online for Delivery - Dominos.com')
end
