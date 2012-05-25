# - Given - #
Given /^([0-9]+) albums$/ do |n|
  n.to_i.times { Fabricate(:album) }
end

# - Then - #
Then /^I should see a list of ([0-9]+) albums$/ do |n|
  page.should have_content 'Albums'
  page.should have_css 'ul.albums'
  page.should have_css 'ul.albums li', :count => n
end
