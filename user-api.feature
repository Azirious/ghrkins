Feature: Test User API Endpoints

  Background:
    * url 'https://jsonplaceholder.typicode.com'
    * header Accept = 'application/json'

  Scenario: Get a user by ID and verify response
    Given path '/users/1'
    When method GET
    Then status 200
    And match response == { id: 1, name: '#string', username: '#string', email: '#string' }
    And assert responseTime < 1000

  Scenario: Attempt to get a non-existent user
    Given path '/users/999'
    When method GET
    Then status 404
