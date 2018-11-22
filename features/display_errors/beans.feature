Feature: Beans

  As a coffee lover
  I have to put fresh beans from time to time
  So I can have coffee when I need it

  Background:
    Given the coffee machine is started
    And I handle everything except the beans

  @ORPHAN @priority-high
  Scenario: After adding beans, the message "Fill beans" disappears
    Given I take "40" coffees
    When I fill the beans tank
    Then message "Ready" should be displayed

  @ORPHAN @priority-low
  Scenario: It is possible to take 40 coffees before there is really no more beans
    Given I take "40" coffees
    Then coffee should be served
    When I take a coffee
    Then coffee should not be served
    And message "Fill beans" should be displayed

  @ORPHAN @priority-high
  Scenario: Message "Fill beans" is displayed after 38 coffees are taken
    When I take "38" coffees
    Then message "Fill beans" should be displayed
