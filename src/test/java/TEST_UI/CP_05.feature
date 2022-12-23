Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Verificar ingreso al homepage sin usar el login
    * configure driver = {type:"chrome"}
    Given driver "https://www.saucedemo.com/inventory.html"
    * delay(1500)
    When match driver.url == "https://www.saucedemo.com/inventory.html"
    Then match driver.title == "Swag Labs"
