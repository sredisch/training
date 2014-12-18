When(/^I click the checkout button$/) do
  find(:xpath, '/html/body/div[3]/div[1]/aside/div[1]/div/div[2]/div[1]/a/span').click
end

When(/^I am taken to the checkout page$/) do
  expect(page).to have_title('Review Order - Domino\'s Pizza, Order Pizza Online for Delivery - Dominos.com')
end

When(/^the price of the Brooklyn pizza is 21.55$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[2]/tbody/tr/td[4]').native.text
  expect(expected).to eq('$21.55')
end

When(/^the quantity of Brooklyn pizza is 1$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[2]/tbody/tr/td[3]/ul/li[1]/select/option[1]').native.text
  expect(expected).to eq('1')
end

When(/^the price of the Italian sausage pizza is 11.99$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[3]/tbody/tr/td[4]').native.text
  expect(expected).to eq('$11.99')
end

When(/^the quantity of Italian sausage pizza is 1$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[3]/tbody/tr/td[3]/ul/li[1]/select/option[1]').native.text
  expect(expected).to eq('1')
end

When(/^the food subtotal is 33.54$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[4]/tbody/tr[1]/td[2]').native.text
  expect(expected).to eq('$33.54')
end

When(/^the tax amount is 3.35$/) do
  expectedTax = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[4]/tbody/tr[2]/td[2]').native.text
  expect(expectedTax).to eq('$3.35')
end

Then(/^the Order Total is 36.89$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[4]/tbody/tr[3]/td[2]').native.text
  expect(expected).to eq('$36.89')
end
