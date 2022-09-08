Feature: sample API testing

  Background:
    * url 'https://reqres.in/api'

  Scenario:
  check the status code
    Given path '/users/2'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code for page number 2
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response


  Scenario:
  check the status code for un found user data
    Given path '/users/23'
    When method get
    Then status 404
    And print response


  Scenario:
  Send the request to and check the status
    Given path '/users'
    When method post
    And request {name : 'morpheus' , job: 'leader'}
    Then status 201
    And print response

  Scenario:
  Send the request to and check the status
    Given path '/users/2'
    When method put
    And request {name : 'morpheus' , job: 'Teacher'}
    Then status 200
    And print response

  Scenario:
  check the status code
    Given path '/users/2'
    When method delete
    Then status 204
    And print response