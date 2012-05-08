Given /^I visit the "([^"]*)" page$/ do |page_name|
  path = get_page_path page_name
  visit path
  page.current_path.should eq path
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, with: value
end

Given /^I click on "([^"]*)"$/ do |link_or_button|
  click_on link_or_button
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content text
end

Then /^Show me the page$/ do
  page.save_and_open_page
end

Then /^Stop and debug$/ do
  binding.pry
end

def get_page_path(page_name)
  case page_name
  when 'home'
    root_path
  when 'registration'
    new_user_registration_path
  else
    raise ArgumentException, "no route defined for #{page_name} page."
  end
end
