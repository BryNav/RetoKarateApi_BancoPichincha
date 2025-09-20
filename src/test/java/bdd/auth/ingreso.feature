Feature: En base a la pagina "https://api.demoblaze.com/" proceder a obtener los endpoint para login

  Background:
    * url urlBase
    * def body = call read ('classpath:resources/json/auth/bodyLogin.json')
    * header 'Content-Type' = "application/json"


  Scenario Outline: Certificar WS LOGIN - Login Exitoso.
    Given path  '/login'
    And  request body
    When method POST
    Then status 200
    * print response
    Examples:
      |read('classpath:resources/csv/auth/dataLogin.csv')|


  Scenario Outline: Certificar WS LOGIN - Login incorrecto.
    Given path  '/login'
    And  request body
    When method POST
    Then status 200
    And match response.errorMessage == "Wrong password."
    * print response
    Examples:
      |read('classpath:resources/csv/auth/dataLogin2.csv')|