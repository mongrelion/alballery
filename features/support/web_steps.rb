Given /^I visit the "([^"]*)" page$/ do |page_name|
  path = get_page_path page_name
  visit path
  page.current_path.should eq path
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content text
end

def get_page_path(page_name)
  case page_name
  when 'home'
    root_path
  else
    raise ArgumentException, "no route defined for #{page_name} page."
  end
end
