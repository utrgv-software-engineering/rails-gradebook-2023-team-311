Feature: Add Grade
    Scenario: signed in as teacher and adding a grade
        Given there are grades in the gradebook
        And I sign in as a teacher
        When I visit the homepage
        And I click "New Grade"
        And I fill out the form and submit
        Then I should have added a grade
    Scenario: signed in as ta and adding a grade
        Given there are grades in the gradebook
        And I sign in as ta
        When I visit the homepage
        And I click "New Grade"
        And I fill out the form and submit
        Then I should have added a grade