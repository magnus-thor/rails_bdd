Feature: As a blog reader
  I would like to be able to comment on articles
  I would like to have the option of leaving my email with my comment

Background:
  Given I have an article with title "Learning Rails 5" and content "Excited about learning a new framework"
  And I visit the "articles" page

Scenario: Reader leaves a comment
  Given I click "Show" button
  Then I fill in "Name" with "Magnus"
  And I fill in "Comment" with "This is my comment on article"
  Then I click "Create Comment" button
  Then I should see "This is my comment on article"

Scenario: Reader leaves a field empty [Sad Path]
  Given I click "Show" button
  Then I fill in "Name" with ""
  And I fill in "Comment" with ""
  Then I click "Create Comment" button
#  Then I should see "Comments is invalid"

  Scenario: Reader leaves an email
    Given I click "Show" button
    Then I fill in "Name" with "Magnus"
    And I fill in "Comment" with "This is my comment on article"
    And I fill in "Email" with "maggi@test.com"
    Then I click "Create Comment" button
    And I click "maggi@test.com"
