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
  Send request to get single users details
    Given path '/users/2'
    When method get
    Then status 200
    And print response

  Scenario:
  Send request and get the response as a Json format
    Given path '/users/2'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code whether incorrect path
    Given url 'https://reqres.in/apiii/users/2'
    When method get
    Then status 200
    And print response

  Scenario:
  Send the page number instead of user number
    Given url 'https://reqres.in/apiii/users/9'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code whether incorrect user number
    Given url 'https://reqres.in/api/users/8'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Send request to get single users details
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Send request and get the response as a Json format
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code whether incorrect path
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Send the user number instead of page number
    Given path '/users?page=1231'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code whether incorrect page number
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Check the page number 2 show the 7 to 12 id
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Check the page number 1 show the 1 to 6 id
    Given path '/users?page=1'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code
    Given path '/users/23'
    When method get
    Then status 404
    And print response

  Scenario:
  Send request to get invalid user details with 404 code
    Given path '/users/23'
    When method get
    Then status 404
    And print response

  Scenario:
  Send request to get valid user details 404 status code
    Given path '/users/67'
    When method get
    Then status 404
    And print response

  Scenario:
  Scheck the status code whether incorrect path
    Given path '/userwws/12'
    When method get
    Then status 404
    And print response

  Scenario:
  Send the page number instead of user number
    Given path '/users/2'
    When method get
    Then status 404
    And print response

  Scenario:
  Send the page number instead of user number
    Given path '/users/2'
    When method get
    Then status 200
    And print response

  Scenario:
  Check the status 200 for the API
    Given path '/users/67'
    When method get
    Then status 200
    And print response

  Scenario:
  Send request to get invalid user details with 200 code
    Given path '/users/182'
    When method get
    Then status 200
    And print response

  Scenario:
  Send request to get invalid user details with 200 code
    Given path '/users/12'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Send request to get single users details
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Send request and get the response as a Json format
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code whether incorrect path
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Send the user number instead of page number
    Given path '/users?page=1231'
    When method get
    Then status 200
    And print response

  Scenario:
  check the status code whether incorrect page number
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Check the page number 2 show the 7 to 12 id
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response

  Scenario:
  Check the page number 1 show the 1 to 6 id
    Given path '/users?page=1'
    When method get
    Then status 200
    And print response

  Scenario:
  Send the request to and check the status
    Given path '/users'
    When method post
    And request {name : 'morpheus' , job: 'leader'}
    Then status 201
    And print response

  Scenario:
  Send request name and check the code
    Given path '/users'
    When method post
    And request {name : 'morpheus'}
    Then status 201
    And print response

  Scenario:
  Send the request to and check the status
    Given path '/users'
    When method post
    And request {job: 'leader'}
    Then status 201
    And print response

  Scenario:
  Send request id and check the code
    Given path '/users'
    When method post
    And request {id: '1234'}
    Then status 201
    And print response

  Scenario:
  Send no requst and check the status code
    Given path '/users'
    When method post
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
  Send request name and check the code
    Given path '/users/2'
    When method put
    And request {name : 'karan'}
    Then status 200
    And print response

  Scenario:
  Send the request to and check the status
    Given path '/users/2'
    When method put
    And request {job: 'teacher'}
    Then status 200
    And print response

  Scenario:
  Send request id and check the code
    Given path '/users/2'
    When method put
    And request {id: '123'}
    Then status 200
    And print response

  Scenario:
  Send no requst and check the status code
    Given path '/users/2'
    When method put
    Then status 200
    And print response

  Scenario:
  Send the request to and check the status
    Given path '/users/2'
    When method put
    And request {name : 'morpheus' , job: 'Teacher'}
    Then status 201
    And print response

  Scenario:
  check the status code
    Given path '/users/2'
    When method delete
    Then status 204
    And print response

  Scenario:
  delete the same users and check the status
    Given path '/users/2'
    When method delete
    Then status 204
    And print response


  Scenario:
  Send the request to and check the status
    Given path '/register'
    When method put
    And request { "email": "eve.holt@reqres.in", "password": "pistol"}
    Then status 200
    And print response

  Scenario:
  Send request name and check the code and response to check the token
    Given path '/register'
    When method put
    And request { "email": "eve.holt@reqres.in", "password": "pistol"}
    Then status 200
    And print response

  Scenario:
  Send request email and password the code
    Given path '/register'
    When method put
    And request { "email": "eve.holt@reqres.in", "password": "pistol"}
    Then status 200
    And print response

  Scenario:
  Send request email and check the code
    Given path '/register'
    When method put
    And request { "email": "eve.holt@reqres.in"}
    Then status 200
    And print response

  Scenario:
  Send no request and check the status code
    Given path '/register'
    When method put
    Then status 200
    And print response

  Scenario:
  Send request password and check the code
    Given path '/register'
    When method put
    And request {"password": "pistol"}
    Then status 200
    And print response

  Scenario:
  Send the request to and check the status
    Given path '/register'
    When method put
    And request { "email": "sydney@fife"}
    Then status 200
    And print response

  Scenario:
  Send request name and check the code and response to check the token
    Given path '/register'
    When method put
    And request { "email": "sydney@fife"}
    Then status 200
    And print response

  Scenario:
  Send request email and password the code
    Given path '/register'
    When method put
    And request { "email": "sydney@fife"}
    Then status 200
    And print response

  Scenario:
  Send request email and check the code
    Given path '/register'
    When method put
    And request { "email": "sydney@fife",password: "wewfwe"}
    Then status 200
    And print response

  Scenario:
  Send no request and check the status code
    Given path '/register'
    When method put
    Then status 200
    And print response

  Scenario:
  Send request password and check the code
    Given path '/register'
    When method put
    And request {"password": "pistol"}
    Then status 200
    And print response

