Feature: sample karate test script

  Scenario:  Send the request with all required parameters
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employees'
    Given header content-type = 'Application/JSON'
    When method get
    Then status 200
    * print response

  Scenario:  Send the request without header
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employees'
    When method get
    Then status 200
    * print response

  Scenario:  send unknown path
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employeef111s'
    Given header content-type = 'Application/JSON'
    When method get
    Then status 200
    * print response

  Scenario:  send the wrong status code check the response
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employees'
    Given header content-type = 'Application/JSON'
    When method get
    Then status 201
    * print response


  Scenario:  Send the request with all required parameters
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employee/1'
    Given header content-type = 'Application/JSON'
    When method get
    Then status 200
    * print response

  Scenario:  Send the request without header
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employee/1'
    When method get
    Then status 200
    * print response

  Scenario:  send unknown path
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employeef11/1'
    Given header content-type = 'Application/JSON'
    When method get
    Then status 200
    * print response

  Scenario:  send the wrong status code check the response
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employee/1'
    Given header content-type = 'Application/JSON'
    When method get
    Then status 201
    * print response

  Scenario:  send the wrong status code check the response
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employee/1,2,3,4'
    Given header content-type = 'Application/JSON'
    When method get
    Then status 200
    * print response



  Scenario:  Send the request with all required parameters
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/create'
    Given header content-type = 'Application/JSON'
    And request {"name":"test","salary":"123","age":"23"}
    When method post
    Then status 201
    * print response


  Scenario:  Send the request with name only
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/create'
    Given header content-type = 'Application/JSON'
    And request {"name":"test"}
    When method post
    Then status 201
    * print response


  Scenario:  Send the request without header
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/create'
    And request {"name":"test","salary":"123","age":"23"}
    When method post
    Then status 201
    * print response


  Scenario:  Send the request without request
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/create'
    Given header content-type = 'Application/JSON'
    When method post
    Then status 201
    * print response

  Scenario:  Send the request 200 status code
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/create'
    Given header content-type = 'Application/JSON'
    And request {"name":"test","salary":"123","age":"23"}
    When method post
    Then status 200
    * print response

  Scenario:  Send the request with all required parameters
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/update/21'
    Given header content-type = 'Application/JSON'
    And request {"name":"test","salary":"123","age":"23"}
    When method put
    Then status 200
    * print response


  Scenario:  Send the request with name only
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/update/21'
    Given header content-type = 'Application/JSON'
    And request {"name":"test"}
    When method put
    Then status 200
    * print response


  Scenario:  Send the request without header
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/update/21'
    And request {"name":"test","salary":"123","age":"23"}
    When method put
    Then status 200
    * print response


  Scenario:  Send the request without request
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/update/21'
    Given header content-type = 'Application/JSON'
    When method put
    Then status 200
    * print response

  Scenario:  Send the request 201 status code
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/update/21'
    Given header content-type = 'Application/JSON'
    And request {"name":"Arun","salary":"1234","age":"28"}
    When method put
    Then status 201
    * print response


  Scenario:  send the request with proper path
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/delete/2'
    Given header content-type = 'Application/JSON'
    When method delete
    Then status 204

  Scenario:  send the request with same user id
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/delete/2'
    Given header content-type = 'Application/JSON'
    When method delete
    Then status 204

  Scenario:  Send the request without header
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/delete/2'
    When method delete
    Then status 204

