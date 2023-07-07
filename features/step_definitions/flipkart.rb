Given /^User navigates to Flipkart home page$/ do
  Capybara.default_driver = :selenium_chrome
  page.driver.browser.manage.window.maximize
  visit "https://www.flipkart.com/"
end

When /^User search for iphones$/ do
  #fill_in 'element-class', with: 'Text to enter'
  element = find('._3OO5Xc ._3704LK', wait: 2)
  element.set('iphone')
  find('._3704LK').send_keys(:enter)
end

Then /^Verify iphones are displayed in search results$/ do
  elements = find_all('._13oc-S ._4rR01T')

  elements.each do |element|
  assert element.text.include?("APPLE iPhone")
  end
end