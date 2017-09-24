Then(/^I should have mailto link with "([^"]*)"$/) do |email|
  expect(page).to have_xpath("//a[contains(@href,'mailto:#{email}')]")
end

