Feature: Entrar al SMC

    Scenario: Iniciar Sesion en SMC correctamente

        Given Entrar al Login SMC
        When Ingresar un Usuario Correcto
        And Ingresar una Contraseña Valida
        Then Iniciar Sesión Correctamente