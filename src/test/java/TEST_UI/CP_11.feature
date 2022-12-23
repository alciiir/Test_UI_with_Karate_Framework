Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Agregar productos a carro CONTINUAR COMPRANDO
    * configure driver = { type:"chrome"}
    Given driver "https://www.saucedemo.com/"
    * driver.maximize()
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']", "secret_sauce")
    And click("//*[@id='login-button']")
    * delay(3000)
    When click("//*[@id='add-to-cart-sauce-labs-backpack']")
    * delay(2500)
    And click("//*[@id='add-to-cart-sauce-labs-bike-light']")
    * delay(2500)
    And click("//*[@id='add-to-cart-sauce-labs-fleece-jacket']")
    * delay(2500)
    And click("//*[@id='shopping_cart_container']/a")
    * delay(2500)
    And click("//*[@id='continue-shopping']")
    * delay(2500)
    And click("//*[@id='add-to-cart-sauce-labs-bolt-t-shirt']")
    * delay(2500)
    And click("//*[@id='shopping_cart_container']/a")
    * delay(2500)
    Then match driver.url == "https://www.saucedemo.com/cart.html"
    And match driver.title == "Swag Labs"