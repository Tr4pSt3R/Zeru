Feature: Check for Delivery
  All throughout the day we have notes waiting to be delivered.
  As a webmaster I want the system to check as often as every hour
    for notes due for delivery

  Scenario: Early in the morning
    When it is 6pm
    Then the time-based scheduler should be run on the hour
