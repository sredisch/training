When(/^I click the Order Online tab$/) do
  click_link('Order Online')
end

Then(/^I should see the Dominos Location Search page$/) do
  sleep 2
  expect(page).to have_selector(:id, "locationsSearchPage")
end
