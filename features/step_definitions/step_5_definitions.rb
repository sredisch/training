When(/^I click Build Your Own pizza$/) do
  find(:xpath, '/html/body/div[3]/div[1]/div/div/div[4]/a/div[2]/h2').click
end

When(/^I choose Large Brooklyn Style$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/form/div[3]/div[3]/div/div[5]/div[5]/div[2]/label/input').click
end

When(/^I click next step$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/form/div[3]/div[1]/a[2]').click
end

When(/^I choose White Sauce$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/form/div[3]/div[3]/div/div[6]/div[3]/div[2]/div[4]/label/input').click
end

When(/^I choose extra sauce$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/form/div[3]/div[3]/div/div[6]/div[3]/div[2]/div[4]/div/select/option[3]').click
end

When(/^I click No Thanks to extra cheese$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/form/div[3]/div[3]/div/div[4]/div/button[2]').click
end

When(/^I select pepperoni$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/form/div[3]/div[3]/div/div[7]/div[2]/div/div[1]/div[1]/label/input').click
end

When(/^I click triple pepperoni$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/form/div[3]/div[3]/div/div[7]/div[2]/div/div[1]/div[1]/div/div/select/option[5]').click
end

When(/^I select Jalepenos$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/form/div[3]/div[3]/div/div[7]/div[3]/div/div[2]/div[1]/label/input').click
end

When(/^I click double Jalepenos$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/form/div[3]/div[3]/div/div[7]/div[3]/div/div[2]/div[1]/div/div/select/option[4]').click
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
  find(:xpath, '/html/body/div[20]/div/div[2]/div/div[2]/form/div[2]/div[2]/div[2]/div/div/div[2]/div[4]/div[5]/input').click
end

When(/^I click extra Sliced Italian Sausage$/) do
  find(:xpath, '/html/body/div[20]/div/div[2]/div/div[2]/form/div[2]/div[2]/div[2]/div/div/div[2]/div[6]/div[5]/input').click
end

When(/^I am taken to the specialty pizza Entrees page$/) do
  expect(page).to have_title('Entrees | Specialty Pizza - Domino\'s Pizza, Order Pizza Online for Delivery - Dominos.com')
end
