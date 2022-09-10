Feature: sample karate test script

  Scenario:  Get the all employee data
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employees'
    Given header content-type = 'Application/JSON'
    When method get
    Then status 200
    * print response


  Scenario:  get single employee data
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/employee/1'
    Given header content-type = 'Application/JSON'
    When method get
    Then status 200
    * print response


  Scenario:  create a new customer
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/create'
    Given header content-type = 'Application/JSON'
    And request {"name":"test","salary":"123","age":"23"}
    When method post
    Then status 201
    * print response


  Scenario:  update the employee data
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/update/21'
    Given header content-type = 'Application/JSON'
    And request {"name":"test","salary":"123","age":"23"}
    When method put
    Then status 200
    * print response


  Scenario:  delete the employee data
    Given url 'https://dummy.restapiexample.com/'
    Given path 'api/v1/delete/2'
    Given header content-type = 'Application/JSON'
    When method delete
    Then status 204

