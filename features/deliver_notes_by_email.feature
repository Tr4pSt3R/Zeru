Feature: Deliver bite-sized note by email
    In order to learn in small incremental steps
    As a student
    I want to receive my notes by email when it's revision time

Scenario: Deliver note
  Given that I have previously added some notes
    | id | note                                | delivery date  |
    |  1 | abelian groups are commutative      | 22/01/2015     |
    |  2 | the dot is a meta-character         | 21/01/2015     |
    |  3 | latex is for math typsetting        | 01/01/2015     |
    |  4 | gherkin has a plain english syntax  | 02/01/2015     |
    |  5 | mean is measure of average          | 22/02/2015     |

  When one of them is due for delivery today
  And I check my email inbox
  Then I should see that I have a new note
