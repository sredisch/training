When(/^I click the "(.*?)" tab$/) do |arg1|
  click_link("Order Online")
end

Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_selector(:id, 'locationsSearchPage')
end
