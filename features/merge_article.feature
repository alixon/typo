Feature: Merge Articles
  As a blog administrator
  In order to keep the same contents in one place
  I want to be able to merge two articles
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And The following articles exists
      | id | title | body  |
      | 2  | Foo   | Bar   |
      | 3  | Foo 2 | Bar 2 |
    
  Scenario: Merge two articles successfully
    Given I am on the article edit page for "Foo"
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on the edit article page
