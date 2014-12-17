When(/^I click the Order Online tab$/) do
  click_link('Order Online')
end

Then(/^I should see the Dominos Location Search page$/) do
  expect(page).to have_title('Location Search - Domino\'s Pizza, Order Pizza Online for Delivery - Dominos.com')
end
