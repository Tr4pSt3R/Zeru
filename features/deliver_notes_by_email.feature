# Feature: Deliver notes
#    We have seen that some students are night creatures.
#    Some students revise best in the morning and some less so.
#    The best thing is not to have a fixed delivery time. The
#    system must be flexible enough to send emails at any time of the
#    day that the student chooses
#
#    Scenario: When I revise best at night
#    Given that I have added five notes
#    And I want them all delivered the following day at 11pm
#    When I check my email the following day at 11pm
#    Then all five notes must be grouped into one email and sent to me

Feature: Deliver bite-sized note by email
    In order to learn in small incremental steps
    As a student
    I want to receive my notes by email when it's revision time

Scenario: Deliver note
  Given that I have previously added some notes
    | id | note                                | delivery date  |
    |  1 | abelian groups are commutative      | tomorrow       |

  When the note is due for delivery
  Then I should receive an email with this note
