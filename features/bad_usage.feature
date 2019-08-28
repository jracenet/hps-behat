Feature: Bad usage

  As a lazy coffee user
  I can ignore the message displayed by the machine
  So I can have coffee and let other people have to clean after me

  @BD-1 @OPEN @priority-low
  Scenario: Full grounds does not block coffee
    Given the coffee machine is started
    And I handle everything except the grounds
    When I take "50" coffees
    Then message "Empty grounds" should be displayed
    And coffee should not be served
    And coffee should not be served
