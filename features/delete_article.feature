Feature: delete Articles
  As a blogger
  In order to keep my content accurate
  I would like to be able to delete articles

  Background:
    Given I have an article with title "Learning Rails 5" and content "Excited about learning a new framework"
    And I visit the "articles" page

  Scenario:
    When I click "Delete" button
    Then I should have "0" articles in database