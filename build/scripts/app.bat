@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  app startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\app.jar;%APP_HOME%\lib\selenium-java-4.10.0.jar;%APP_HOME%\lib\selenium-chrome-driver-4.10.0.jar;%APP_HOME%\lib\selenium-devtools-v112-4.10.0.jar;%APP_HOME%\lib\selenium-devtools-v113-4.10.0.jar;%APP_HOME%\lib\selenium-devtools-v114-4.10.0.jar;%APP_HOME%\lib\selenium-firefox-driver-4.10.0.jar;%APP_HOME%\lib\selenium-devtools-v85-4.10.0.jar;%APP_HOME%\lib\selenium-edge-driver-4.10.0.jar;%APP_HOME%\lib\selenium-ie-driver-4.10.0.jar;%APP_HOME%\lib\selenium-safari-driver-4.10.0.jar;%APP_HOME%\lib\selenium-support-4.10.0.jar;%APP_HOME%\lib\selenium-chromium-driver-4.10.0.jar;%APP_HOME%\lib\selenium-remote-driver-4.10.0.jar;%APP_HOME%\lib\auto-service-1.0.1.jar;%APP_HOME%\lib\selenium-manager-4.10.0.jar;%APP_HOME%\lib\selenium-http-4.10.0.jar;%APP_HOME%\lib\auto-common-1.2.jar;%APP_HOME%\lib\guava-31.1-jre.jar;%APP_HOME%\lib\cucumber-java-7.13.0.jar;%APP_HOME%\lib\async-http-client-2.12.3.jar;%APP_HOME%\lib\async-http-client-netty-utils-2.12.3.jar;%APP_HOME%\lib\slf4j-api-2.0.7.jar;%APP_HOME%\lib\extentreports-cucumber6-adapter-2.8.3.jar;%APP_HOME%\lib\klov-reporter-5.0.8.jar;%APP_HOME%\lib\extentreports-5.0.9.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\selenium-json-4.10.0.jar;%APP_HOME%\lib\selenium-api-4.10.0.jar;%APP_HOME%\lib\cucumber-core-7.13.0.jar;%APP_HOME%\lib\cucumber-expressions-16.1.2.jar;%APP_HOME%\lib\datatable-7.13.0.jar;%APP_HOME%\lib\cucumber-gherkin-messages-7.13.0.jar;%APP_HOME%\lib\cucumber-gherkin-7.13.0.jar;%APP_HOME%\lib\cucumber-plugin-7.13.0.jar;%APP_HOME%\lib\docstring-7.13.0.jar;%APP_HOME%\lib\apiguardian-api-1.1.2.jar;%APP_HOME%\lib\extent-pdf-report-1.7.3.jar;%APP_HOME%\lib\mongodb-driver-3.6.4.jar;%APP_HOME%\lib\rxjava-3.0.4.jar;%APP_HOME%\lib\freemarker-2.3.30.jar;%APP_HOME%\lib\cucumber-pdf-report-2.2.4.jar;%APP_HOME%\lib\table-layout-1.2.0.jar;%APP_HOME%\lib\lombok-1.18.18.jar;%APP_HOME%\lib\gson-2.8.6.jar;%APP_HOME%\lib\auto-service-annotations-1.0.1.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.60.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.92.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.92.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.92.Final-linux-x86_64.jar;%APP_HOME%\lib\netty-transport-classes-epoll-4.1.92.Final.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.92.Final.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.92.Final-osx-x86_64.jar;%APP_HOME%\lib\netty-transport-classes-kqueue-4.1.92.Final.jar;%APP_HOME%\lib\netty-reactive-streams-2.0.4.jar;%APP_HOME%\lib\netty-handler-4.1.92.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.92.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.60.Final.jar;%APP_HOME%\lib\netty-codec-4.1.92.Final.jar;%APP_HOME%\lib\netty-transport-4.1.92.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.92.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.92.Final.jar;%APP_HOME%\lib\netty-common-4.1.92.Final.jar;%APP_HOME%\lib\opentelemetry-exporter-logging-1.26.0.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-1.26.0-alpha.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-spi-1.26.0.jar;%APP_HOME%\lib\opentelemetry-sdk-1.26.0.jar;%APP_HOME%\lib\opentelemetry-sdk-trace-1.26.0.jar;%APP_HOME%\lib\opentelemetry-sdk-metrics-1.26.0.jar;%APP_HOME%\lib\opentelemetry-sdk-logs-1.26.0-alpha.jar;%APP_HOME%\lib\opentelemetry-sdk-common-1.26.0.jar;%APP_HOME%\lib\opentelemetry-semconv-1.26.0-alpha.jar;%APP_HOME%\lib\opentelemetry-extension-incubator-1.26.0-alpha.jar;%APP_HOME%\lib\opentelemetry-api-logs-1.26.0-alpha.jar;%APP_HOME%\lib\opentelemetry-api-events-1.26.0-alpha.jar;%APP_HOME%\lib\opentelemetry-api-1.26.0.jar;%APP_HOME%\lib\opentelemetry-context-1.26.0.jar;%APP_HOME%\lib\byte-buddy-1.14.4.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\html-formatter-20.3.1.jar;%APP_HOME%\lib\junit-xml-formatter-0.2.0.jar;%APP_HOME%\lib\gherkin-26.2.0.jar;%APP_HOME%\lib\messages-22.0.0.jar;%APP_HOME%\lib\tag-expressions-5.0.1.jar;%APP_HOME%\lib\ci-environment-9.2.0.jar;%APP_HOME%\lib\jsoup-1.13.1.jar;%APP_HOME%\lib\mongodb-driver-core-3.6.4.jar;%APP_HOME%\lib\bson-3.6.4.jar;%APP_HOME%\lib\httpmime-4.5.2.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\failsafe-3.3.1.jar;%APP_HOME%\lib\jakarta.activation-1.2.2.jar;%APP_HOME%\lib\xchart-3.8.0.jar;%APP_HOME%\lib\graphics2d-0.30.jar;%APP_HOME%\lib\pdfbox-2.0.22.jar;%APP_HOME%\lib\snakeyaml-1.28.jar;%APP_HOME%\lib\httpcore-4.4.4.jar;%APP_HOME%\lib\fontbox-2.0.22.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.9.jar;%APP_HOME%\lib\VectorGraphics2D-0.13.jar;%APP_HOME%\lib\animated-gif-lib-1.4.jar


@rem Execute app
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %APP_OPTS%  -classpath "%CLASSPATH%" automationproject.App %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%APP_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
