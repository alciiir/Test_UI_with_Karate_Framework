Feature: Pruebas de interface de usuario al sitio web Swaglabs

  @ignore FALLO - Pendiente
  Scenario: Verificar filtro de orden de productos por precio (menor a mayor)
    * configure driver = { type:"chrome"}
    Given driver "https://www.saucedemo.com/"
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']", "secret_sauce")
    And click("//*[@id='login-button']")
    * delay(3000)
    When select("//*[@id='header_container']/div[2]/div[2]/span/select", 'PRICE (LOW TO HIGH)')
    * delay(5000)
    Then match driver.url == "https://www.saucedemo.com/inventory.html"
    And match driver.title == "Swag Labs"



