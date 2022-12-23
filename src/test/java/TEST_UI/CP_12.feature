Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Verificar si el ABOUT funciona de forma correcta
    * configure driver = { type:"chrome" }
    Given driver "https://www.saucedemo.com/"
    * delay(1500)
    When input("//*[@id='user-name']","standard_user")
    * delay(1500)
    And input("//*[@id='password']", "secret_sauce")
    * delay(1500)
    And click("//*[@id='login-button']")
    * delay(1500)
    And click("//*[@id='react-burger-menu-btn']")
    * delay(1500)
    And click("//*[@id='about_sidebar_link']")
    * delay(1500)
    Then match driver.url == "https://saucelabs.com/"
    * delay(1500)
