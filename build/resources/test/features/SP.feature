@test

Feature: Entrar al Sitio Publico

Rule: El usuario podra ver las validaciones necesarios para su busqueda  

Background: Ingresar al SP y validar

    Scenario: Abrir el Sitio Publico correctamente y validar entrar al SP
        Given Entrar al Sitio Publico sin errores

    Scenario: Abrir el Sitio Publico correctamente y validar textos corrrectamente 
        Given Validar Textos Correctamente

    Scenario: Abrir el Sitio Publico correctamente y validar entrar al SP ingresar una busqueda      
        Given Ingresar una busqueda
@lista  
    Scenario Outline: Abrir el Sitio Publico correctamente y validar entrar al SP y valida si la región en la lista
        Given Encuentro <region> en la lista

        Examples:
        |region                       | 
        |Región de Coquimbo           |
        |Región Metropolitana         |
        |Región de Valparaíso         |
        |Región de Atacama            |
        |Región de Arica              |