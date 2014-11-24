Given(/^I have App running with appium$/) do
 # Make sure you have started appium server 
end
 
When(/^I go to <justgo_url>$/) do
  driver.get 'http://justgo.com'
end

Then(/^I should see "(.*?)" in header title$/) do |title_part|
  driver.title.should include title_part
end

When(/^I select Sign in button on top right corner$/) do
  sign_in_btn = driver.find_element(css: '.sign-in-btn').click
end
