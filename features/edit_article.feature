Feature: Edit Articles
  As a blogger
  In order to keep my content accurate
  I would like to be able to edit my articles

Background:
  Given I have an article with title "Learning Rails 5" and content "Excited about learning a new framework"
  And I visit the "articles" page

Scenario: Edit an article [Happy Path]
  When I click "Edit" button
  Then I should be on "Edit Article" page
  When I fill in "Title" with "new title"
  And I fill in "Content" with "replacement text"

Scenario: Edit an article [Sad Path]
  When I click "Edit" button
  Then I should be on "Edit Article" page
  When I fill in "Title" with ""
  And I fill in "Content" with ""
  And I click "Create Article" button
  Then I should see "Title can't be blank"
  And I should see "Title is too short (minimum is 5 characters)"
  And I should see "Content can't be blank"