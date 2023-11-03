@test

Feature: Entrar Google

    Scenario: Abrir Google correctamente

        Given Entrar a Google
        When Validar Textos Correctamente
        When Ingresar una busqueda
        When Escribo Buscar
        Then Encuentro Buscar mi Iphone
