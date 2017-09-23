
Then(/^I should have "([^"]*)" articles in database$/) do |number|
  expect(Article.count).to eq number.to_i
end

