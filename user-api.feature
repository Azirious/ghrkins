Feature: User Management API

  Background:
    # Configure global variables or authentication if needed
    * def baseUrl = 'http://localhost:8080'  # or your real endpoint

  Scenario: Create a new user
    Given url baseUrl
    And path 'users'
    And request { 
      "name": "John Doe", 
      "role": "admin" 
    }
    When method POST
    Then status 201
    And match response == { 
      "id": "#notnull", 
      "name": "John Doe", 
      "role": "admin" 
    }

  Scenario: Get user by ID
    Given url baseUrl
    And path 'users/123'  # replace 123 with a valid ID if needed
    When method GET
    Then status 200
    And match response == { 
      "id": "#number",
      "name": "#string",
      "role": "#string"
    }
