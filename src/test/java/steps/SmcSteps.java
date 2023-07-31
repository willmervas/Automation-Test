package steps;

import io.cucumber.java.en.*;
import pages.SmcPage;

public class SmcSteps {

    SmcPage google = new SmcPage();

    @Given("^Entrar al Login SMC")
    public void navigatedToGoogle(){
        google.navigatedToGoogle();

    }

    @When("^Ingresar un Usuario Correcto$")
    public void enterSearchCriteria(){
        google.enterSearchCriteria("admin-1@gmail.com");

    }

    @And("^Ingresar una Contraseña Valida$")
    public void enterSearchCriteria1(){
        google.enterSearchCriteria1("admin");
        
    }

    @Then("^Iniciar Sesión Correctamente$")
    public void clickSearchGoogle(){
        google.clickSearchGoogle();

    }

}