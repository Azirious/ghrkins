Feature: User API Test

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Get all users
    Given path 'users'
    When method GET
    Then status 200
    And match responseType == 'json'
    And match response[0].id == 1

  Scenario: Get a specific user
    Given path 'users/1'
    When method GET
    Then status 200
    And match response.id == 1
    And match response.name != null

  Scenario: Create a new user
    Given path 'users'
    And request { name: 'John Doe', email: 'john@example.com' }
    When method POST
    Then status 201
    And match response.name == 'John Doe'
