Given(/^I visit the "([^"]*)" page$/) do |landing|
  visit landing
end

When(/^I click "([^"]*)" link$/) do |link|
  click_link_or_button link
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |item, content|
  fill_in item, with: content
end

When(/^I click "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^I should be on "([^"]*)" page$/) do |rails|
  page.current_url == rails
end
