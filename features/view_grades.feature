Feature: View Grades
    Scenario: view grades from homepage as teacher
      Given there are grades in the gradebook
      And I sign in as a teacher
      When I visit the homepage
      Then I should see everyone's grades
      When I click "Sign out"
    Scenario: view grades from homepage as ta
      Given there are grades in the gradebook
      And I sign in as ta
      When I visit the homepage
      Then I should see everyone's grades
      When I click "Sign out"

    Scenario: view specific grade from homepage as teacher
      Given there are grades in the gradebook
      And I sign in as a teacher
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Show" on a post
      Then I should see that user's detailed grade information
      When I click "Sign out"
    Scenario: view specific grade from homepage as ta
      Given there are grades in the gradebook
      And I sign in as ta
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Show" on a post
      Then I should see that user's detailed grade information
      When I click "Sign out"