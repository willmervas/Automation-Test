Feature: Entrar al SML

    Scenario: Iniciar Sesion en SML correctamente

        Given Entrar al Login SML
        When Ingresar un Usuario Correcto
        And Ingresar una Contraseña Valida
        Then Iniciar Sesión Correctamente