Feature: Write Articles
  As a blog administrator
  In order to create a useful blog
  I want to be able to create new categories
  
  Background:
    Given the blog is set up
    And I am logged into the admin page
    
    
  Scenario:
    Given I am on the admin page
    When I follow "Categories"
    Then I should see "Categories"
    
    
    Scenario: Successfully create categories
      Given I am on the new categories page
      When I fill in "category_name" with "Category1"
      And I fill in "category_keywords" with "Keyword1"
      And I fill in "category_permalink" with "Permalink1"
      And I fill in "category_description" with "Description1"
      And I press "Save"
      Then I should see "Category was successfully saved."
