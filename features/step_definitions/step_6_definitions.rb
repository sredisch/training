When(/^I click the checkout button$/) do
  click_link('Checkout')
end

When(/^I am taken to the checkout page$/) do
  expect(page).to have_title('Review Order - Domino\'s Pizza, Order Pizza Online for Delivery - Dominos.com')
end

When(/^the price of the Brooklyn pizza is 21.55$/) do
  expected = find(:xpath, '//table[@data-product-code=\'P16IBKZA\']//td[@class=\'price\']').native.text
  expect(expected).to eq('$21.55')
end

When(/^the quantity of Brooklyn pizza is 1$/) do
  expected = find(:xpath, '//table[@data-product-code=\'P16IBKZA\']//option[@selected=\'\']').native.text
  expect(expected).to eq('1')
end

When(/^the price of the Italian sausage pizza is 11.99$/) do
  expected = find(:xpath, '//table[@data-product-code=\'PASACPT\']//td[@class=\'price\']').native.text
  expect(expected).to eq('$11.99')
end

When(/^the quantity of Italian sausage pizza is 1$/) do
  expected = find(:xpath, '//table[@data-product-code=\'PASACPT\']//option[@selected=\'\']').native.text
  expect(expected).to eq('1')
end

When(/^the food subtotal is 33.54$/) do
  within(:xpath, '//table[@class=\'order-summary__totals\']') do
    within('tr:nth-child(1)') do
    expected = find('td:nth-child(2)').native.text
    expect(expected).to eq('$33.54')
      end
    end
end

When(/^the tax amount is 3.35$/) do
  within(:xpath, '//table[@class=\'order-summary__totals\']') do
    within('tr:nth-child(2)') do
    expected=find('td:nth-child(2)').native.text
    expect(expected).to eq('$3.35')
    end
  end
end

Then(/^the Order Total is 36.89$/) do
  within(:xpath, '//table[@class=\'order-summary__totals\']') do
    within('tr:nth-child(3)') do
    expected=find('td:nth-child(2)').native.text
    expect(expected).to eq('$36.89')
    end
  end
end
