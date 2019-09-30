Feature: Alert when ingredients are missing

Scenario: Water is missing
  Given the coffee machine is started
  And the bean tank is empty
  When I serve a coffee
  Then an alert "No more beans" is displayed
  And the coffee is not served 
  
Scenario: Beans are missing