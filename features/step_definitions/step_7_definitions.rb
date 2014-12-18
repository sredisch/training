When(/^I have ordered an extra large 16 inch Brooklyn pizza$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[2]/tbody/tr/td[2]/h3/a').native.text
  expect(expected).to eq('X-Large (16") Brooklyn Pizza')
end

When(/^the Brooklyn pizza has triple pepperoni, double jalapenos, and no robust inspired tomato sauce$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[2]/tbody/tr/td[2]/ul/li').native.text
  expect(expected).to eq('Whole: Triple Pepperoni, Double Jalapeno Peppers, Extra White Sauce, No Robust Inspired Tomato Sauce')
end

When(/^I have order an Italian sausage and pepper trio$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[3]/tbody/tr/td[2]/h3/a').native.text
  expect(expected).to eq('Italian Sausage & Pepper Trio')
end

When(/^the Italian sausage and pepper trio has extra green peppers and extra sliced Italian sausage$/) do
  expected = find(:xpath, '/html/body/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/table[3]/tbody/tr/td[2]/ul/li').native.text
  expect(expected).to eq('Whole: Extra Green Peppers, Extra Sliced Italian Sausage')
end
