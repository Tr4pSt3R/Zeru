Feature: Deliver bite-sized note by email
    In order to learn in small incremental steps
    As a student
    I want to receive my notes by email when it's revision time

Scenario: Deliver note
  Given that I have previously added some notes
    | id |             note                   |    date     |
    |  1 | abelian groups is commutative      |             |

  And one of them, at least, is due for delivery today
  When the note is delivered
  And I check my email inbox
  Then I should see that I have a new note
