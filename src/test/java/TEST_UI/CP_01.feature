Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Test Login responsivo
    * configure driver = {type:"msedge"}
    Given driver "https://www.saucedemo.com/"
    And delay(6000)
    When driver.dimensions = {x:0, y:0, width: 300, height: 800}
    * def dims = driver.dimensions
    * delay(6000)
    Then match driver.url == "https://www.saucedemo.com/"
    And match driver.title == "Swag Labs"










