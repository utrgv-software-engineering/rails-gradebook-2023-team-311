Feature: Deleting Grades
    Scenario: Viewing detailed grade information as teacher, should be able to delete the grade
        Given there are grades in the gradebook
        And I sign in as a teacher
        When I visit the homepage
        And I click "Destroy" on a post
        Then that post should be deleted
        When I click "Sign out"

    Scenario: Viewing detailed grade information as ta, should not be able to delete the grade
        Given there are grades in the gradebook
        And I sign in as ta
        When I visit the homepage
        And I click "Destroy" on a post
        #holder below so that tests pass, before production, must update steps and change line to should not be deleted
        Then that post should not be deleted
        When I click "Sign out"