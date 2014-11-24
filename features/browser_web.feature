Feature: Appium simplest starter 
  As web app user
  I want see justgo home page
  So that I am impressed by its features
 
Scenario: Go to JustGo home page
  Given I have App running with appium 
  When I go to <justgo_url>
  Then I should see "JustGo" in header title
 
  @wip
Scenario: Login view on SIGN IN button select
  Given I have App running with appium 
  When I go to <justgo_url>
  And I select Sign in button on top right corner
  Then I should see "JustGo" in header title
