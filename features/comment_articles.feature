Feature: As a blog reader
  I would like to be able to comment on articles
  I would like to have the option of leaving my email with my comment

Background:
  Given I have an article with title "Learning Rails 5" and content "Excited about learning a new framework"
  And I visit the "articles" page

Scenario: Reader leaves a comment
  Given I click "Show" button
  Then I fill in "name" with "Magnus"
  And I fill in "comment" with "This is my comment on article"
  Then I click "Submit" button