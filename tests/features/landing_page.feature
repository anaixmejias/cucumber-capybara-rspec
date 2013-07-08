#@javascript
Feature: Viewer visits the Home Page
  In order to read the page
  As a viewer
  I want to see the home page of my app

  Scenario: View form page
    Given I am on "/"
    Then I should see "Fill out this form to receive our newsletter."

  Scenario: Success Fill out form
    Given I am on "/"
    When I fill in "First Name" with "John"
    And I fill in "Last Name" with "Doe"
    And I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "1234"
    And I click "Sign in"
    Then I should see "Welcome! Hi there. You'll new receive our email newsletter"

  Scenario: Error Fill out form
    Given I am on "/"
    When I fill in "First Name" with "John"
    And I fill in "Last Name" with "Doe"
    And I fill in "Email" with "john@doe.com"
    And I click "Sign in"
    Then I should see "Error! Hi there. You have to enter all the fields."

  Scenario: Find heading on home page
  	Given I am on "/"
  	Then I should see "MY APP" in the selector ".pipola"
 
  Scenario: Find the link Home to the form
  	Given I am on "/"
  	Then I should see "Home" in a link

  Scenario: Find the link Contact to the form
  	Given I am on "/"
  	Then I should see "Contact" in a link

  Scenario: Find the link About to the form
  	Given I am on "/"
  	Then I should see "About" in a link

  Scenario: Search for a term
    
    #Given I am on youtube
    #When I fill in "search_query" with "text adventure"
    #And I click "search-btn"
    #Then I should see "GET LAMP: The Text Adventure Documentary"

  Scenario: Searching for a term

	#Given I am in google.com
	#When I enter "pizza"
	#Then I should see results