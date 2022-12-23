Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Verificar ingreso a twitter de Swaglabs
    * configure driver = { type:"chrome"}
    Given driver "https://www.saucedemo.com/"
    When input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']", "secret_sauce")
    And click("//*[@id='login-button']")
    * delay(2000)
    And mouse().down().move("//*[@id='page_wrapper']/footer/ul/li[1]/a").up()
    * delay(2000)
    And click("//*[@id='page_wrapper']/footer/ul/li[1]/a")
    * delay(2000)
    Then match driver.url == "https://www.saucedemo.com/inventory.html"


