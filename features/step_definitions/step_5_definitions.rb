When(/^I click Build Your Own pizza$/) do
  find(:xpath, '//a[@data-wt-panelname=\'byopizza\']').click
end

When(/^I choose Large Brooklyn Style$/) do
  find(:xpath, '//input[@value=\'P16IBKZA\']').click
end

When(/^I click next step$/) do
  find(:xpath, '//div[@class=\'selectionBoard\']//a[@class=\'js-next btn btn--small btn--next\']').click
end

When(/^I choose White Sauce$/) do
  choose('White Sauce')
end

When(/^I choose extra sauce$/) do
  find(:xpath, '//select[@name=\'Weight|Xw\']//option[@value=\'1.5\']').click
end

When(/^I click No Thanks to extra cheese$/) do
  click_button('No Thanks')
end

When(/^I select pepperoni$/) do
  check('Pepperoni')
end

When(/^I click triple pepperoni$/) do
  find(:xpath, '//select[@name=\'Weight|P\']//option[@value=\'3\']').click
end

When(/^I select Jalepenos$/) do
  check('Jalapeno Peppers')
end

When(/^I click double Jalepenos$/) do
  find(:xpath, '//select[@name=\'Weight|J\']//option[@value=\'2\']').click
end

When(/^I click Add to Order$/) do
  click_button('Add to Order')
end

When(/^I click Specialty Pizza$/) do
  click_link('Specialty Pizza')
end

When(/^I click Order for Italian Sausage and Pepper Trio$/) do
  find(:xpath, '/html/body/div[3]/div[1]/div/div/section[1]/div/div[4]/a').click
end

When(/^I click extra Green Peppers$/) do
  find(:xpath, '//input[@value=\'1/1|1.5\' and @name=\'S_PIZPT|Topping|G\']').click
end

When(/^I click extra Sliced Italian Sausage$/) do
  find(:xpath, '//input[@value=\'1/1|1.5\' and @name=\'S_PIZPT|Topping|Sb\']').click
end

When(/^I am taken to the specialty pizza Entrees page$/) do
  expect(page).to have_selector(:id,'categoryPage2')
end
