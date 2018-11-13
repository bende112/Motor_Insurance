Given(/^I visit "([^"]*)"$/) do |path|
  visit baseUrl() + path
end

Then(/^Which\? reports components are displayed$/) do |components|
  # table is a table.hashes.keys # => [:Technology]
  components.hashes.each do |row|
    puts 'found report components column header [' + row['column Name'].to_s + ']'
    expect(page.has_content?(row['column Name'])).to eq(true)
  end
end

And(/^the TV & home entertainment link is present$/) do
  page.has_content?('TV & home entertainment')
end

When(/^the user click on the tv&home entertainment link$/) do
  find('.c_UoW').click()
end

Then(/^the user navigates to TV & home entertainment$/) do
  page.has_content?('TV & home entertainment')
end

And(/^the user navigate to Technology conponent$/) do
  pending
end

