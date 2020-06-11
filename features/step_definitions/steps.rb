require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

Given("open the website") do
  driver.navigate().to("http://qa.fabelio.com")
end

Then("user click on main menu") do
    driver.find_element(:link,'home').click
    driver.find_element(:link,'ruang-tamu').click
    driver.find_element(:xpath,'//*[@id="home"]/span').click
    driver.find_element(:xpath,'//*[@id="ruang-tamu"]/span').click
    sleep(2)
end

Then("user closing the browser") do
    driver.quit
end

Given("open the website") do
  driver.navigate().to("http://qa.fabelio.com")
end

Then("user click on main menu") do
    driver.find_element(:link,'showroom').click
    driver.find_element(:xpath,'//*[@id="showroom"]/span').click
    sleep(2)
end

Then("user closing the browser") do
    driver.quit
end
