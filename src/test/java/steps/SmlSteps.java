package steps;

import io.cucumber.java.en.*;
import pages.SmlPage;

public class SmlSteps {

    SmlPage google = new SmlPage();

    @Given("^Entrar al Login SML")
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