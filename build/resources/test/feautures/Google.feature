Feature: Navegar en Google

    Scenario: Buscar en Google

        Given Navegar en Google
        When Buscar un criterio
        And Click en Buscar en Google
        Then Validar resultados