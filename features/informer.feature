Feature: Informant tells you what important stuff is happening
  In order to protect revenue
  As a System Administrator
  I want to be informed about what is happening on my system
  
  Scenario: Just tell me the message
    Given I am watching something
    When the informer runs
    Then it should report a message
  
