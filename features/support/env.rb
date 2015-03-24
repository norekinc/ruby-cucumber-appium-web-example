require 'rspec/expectations'
require 'appium_lib'
 
CAPS = {
    'browserName' => 'Safari',
    'platformName' => 'iOS',
    'deviceName' => 'iPhone Simulator',
    'platformVersion' => '7.1',
     # 'app' => "safari"
  }
  
def server_url
  "http://127.0.0.1:4723/wd/hub"
end
 
def driver
  @driver ||= Appium::Driver.new(appium_lib: { server_url: server_url }, caps: CAPS)
  @driver.driver
end

def appium_driver
  driver #in case if still not initialized
  @driver
end
 
 
Before do
  appium_driver.start_driver
end

After do
  appium_driver.driver_quit
end
