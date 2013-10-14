When(/^I fill (.+) field with "(.*?)"/) do |field, value|
  fill_in field, :with => value
end

When(/^click on the "(.*?)" button$/) do |button_name|
  click_button button_name
end

When(/^I visit the list of projects$/) do
  visit projects_path
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

Then /^I should have ([0-9]+) (.+)?$/ do |count, model|
  case model
    when "projects"
      Project.count.should == count.to_i
    when "tasks"
      Task.count.should == count.to_i
    else
      raise "Model not found"
  end


end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content I18n.t(content)
end

Given(/^I visit the (.+) (.+) page$/) do |project_name, page|
  case page
    when "new"
      visit new_project_path
    when "show"
      visit project_path Project.where(:name => project_name).first_or_create
    when "edit"
      visit edit_project_path Project.where(:name => project_name).first_or_create
    else
      raise "Page not found"
  end
end

Given(/^(.+) has tasks (.+)$/) do |project_name, tasks|
  project = Project.find_by(:name => project_name)
  tasks.split(', ').each do |task|
    Task.create!(:description => task, :project => project)
  end
end

