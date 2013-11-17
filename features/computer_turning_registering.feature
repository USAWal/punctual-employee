Feature: Computer Turning Registering
  In order to evaluate my coming in and going out time
  As a punctual employee
  I need to have computer turning activity persisted.

  Scenario Outline: Register when computer was turned on
    Given it's <time>
    When I successfully run `punctual-employee --turned-on`
    Then <time> should be persisted as turned on time

    Examples:
      |         time          |
      | 9:36:13 on 25.12.2013 |
