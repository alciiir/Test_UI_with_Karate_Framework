Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Verificar si el login NO INGRESA sin campos completos
    * configure driver = { type:'chrome' }
    Given driver "https://www.saucedemo.com/"
    * delay(1500)
    When input("//*[@id='user-name']","standard_user")
    * delay(1500)
    And input("//*[@id='password']", "")
    * delay(1500)
    And click("//*[@id='login-button']")
    * delay(1500)
    Then match driver.url == "https://www.saucedemo.com/inventory.html"
    * delay(1500)
    And match driver.title == "Swag Labs"