Feature: The HostnameWatcher gathers the hostname and IP address, and reports back
  In order to determine which host is reporting
  As an Informant
  I want a HostnameWatcher to gather the hostname and IP address of the host system

  Scenario: Gather the hostname and IP
    Given I have a HostnameWatcher
    When it gathers info
    Then it should have a hostname and IP address
    And it should report the hostname and IP address as a message
  
  
  