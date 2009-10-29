Feature: Watchers gather information and report back
  In order to protect revenue
  As a System Administrator
  I want to watch something specific, and formulate a message about it

  Scenario: A watcher gathers info and creates a message
    Given I have a watcher
    When the watcher gathers info
    Then it should have a message
  
  
  
