Given(/^I visit "([^"]*)"$/) do |path|
  visit baseUrl() + path
  sleep 1
end