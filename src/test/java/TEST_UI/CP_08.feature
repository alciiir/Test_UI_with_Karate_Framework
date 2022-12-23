Feature: Pruebas de interface de usuario al sitio web Swaglabs

  Scenario: Verificar ingreso a LinkedIn de Swaglabs
    And configure driver = { type:"chrome"}
    And driver "https://www.saucedemo.com/"
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']", "secret_sauce")
    And click("//*[@id='login-button']")
    And delay(2000)
    And mouse().down().move("//*[@id='page_wrapper']/footer/ul/li[3]/a")
    And delay(2000)
    And click("//*[@id='page_wrapper']/footer/ul/li[3]/a")
    And delay(2000)
    And match driver.url == "https://www.saucedemo.com/inventory.html"


