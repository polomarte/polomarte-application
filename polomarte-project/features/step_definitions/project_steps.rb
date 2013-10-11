Given(/^I visit the new project page$/) do
  visit new_project_path
end

When(/^I fill the new project form with "(.*?)" as name$/) do |project_name|
  @actual_count = Project.count
  fill_in "project_name", :with => project_name
end

When(/^click on the "(.*?)" button$/) do |button_name|
  click_button button_name
end

When(/^I visit the list of projects$/) do
  visit projects_path
end

Then(/^the number of existent projects should be increased by one$/) do
  Project.count.should == @actual_count + 1
end

Then /^page should have (.+) message "([^\"]*)"$/ do |type, text|
  page.has_css?("p.#{type}", :text => text, :visible => true)
end

Given /^I have projects named (.+)$/ do |names|
  names.split(', ').each do |name|
    Project.create!(:name => name)
  end
end

Given /^I have no projects$/ do
  Project.delete_all
end

Then /^I should have ([0-9]+) articles?$/ do |count|
  Project.count.should == count.to_i
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end

