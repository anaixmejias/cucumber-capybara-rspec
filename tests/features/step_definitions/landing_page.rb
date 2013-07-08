Given(/^I am on "(.*?)"$/) do |arg1|
  visit "/app"
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content(text)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I click "(.*?)"$/) do |button|
  click_button(button)
end

Then (/^I should see "(.*?)" in the selector "(.*?)"$/) do |text, selector|
  page.should have_selector(selector, :text => text)
end
 
Then (/^I should see "(.*?)" in a link$/) do |text|
  page.should have_link(text)
end
#Given (/^I am on "(.+)"$/) do |url|
#  visit (url)
#end
#Given (/^I am on (.+)$/) do |url|
#	visit ""
  #visit "http://www.youtube.com"
#end

#Given (/^I am in (.+)$/) do |url|
 # visit ""
  #visit "http://www.google.com"
#end

#When /^I enter "([^"]*)"$/ do |term|
  #fill_in('q',:with => term)
#end

#Then /^I should see results$/ do
 # page.should have_css('div#res li')
#end