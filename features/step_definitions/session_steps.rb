# - Given - #
Given /^I am logged in as "([^"]*)" with password ("[^"]*")$/ do |email, pass|
  user = Fabricate(:user, :email => email, :password => pass, :password_confirmation => pass)
  visit new_user_session_path
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => user.password
  click_on 'Sign in'
  page.should have_content 'Signed in successfully.'
end
