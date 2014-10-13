require 'selenium-webdriver'

class Screenshotter

  def self.take_screenshots(browser, pages)
    driver = Selenium::WebDriver.for browser
    pages.each{ |page| single_screenshot(page, driver) }
    driver.quit
  end

  def self.single_screenshot(page, driver)
    driver.navigate.to page.url
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { driver.find_element(:css, page.selector).displayed? }
    driver.save_screenshot(page.save_filepath)
  end

end