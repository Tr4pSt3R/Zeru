Feature: Delivery
  All throughout the day we have notes waiting to be delivered.
  As a webmaster I want the system to check as often as every hour
    for notes due for delivery

  Scenario: Run scheduler
    Given that one note is ready for release
    When I run the scheduler
    Then the user of this note should receive an email
