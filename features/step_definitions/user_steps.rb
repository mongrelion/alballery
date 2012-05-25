# - Given - #
Given /^the following albums created by "(.*?)"$/ do |user_email, table|
  user = User.find_by_email user_email
  table.map_headers! 'Title' => :title, 'Year' => :year, 'Artist' => :artist
  table.hashes.each { |attributes| user.albums.create! attributes }
end

Given /^the user "([^"]*)" exists$/ do |email|
  Fabricate(:user, :email => email)
end
