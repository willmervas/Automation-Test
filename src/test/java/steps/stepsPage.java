package steps;

import java.util.List;
import org.junit.Assert;
import io.cucumber.java.en.*;
import pages.SPPage;

public class stepsPage {

    SPPage google = new SPPage();

    @Given("^Entrar al Sitio Publico sin errores$")
    public void navigatedToGoogle() {
        google.navigatedToGoogle();

    }

    @Given("Validar Textos Correctamente$")
    public void validateResults() throws InterruptedException {
        Assert.assertEquals("Piloto Sistema Global de Monitoreo", google.firstResults());

    }

    @Given("^Ingresar una busqueda$")
    public void clickSearchGoogle1() throws InterruptedException {
        google.clickSearchGoogle1();

    }

    @Given("^Encuentro (.+) en la lista$")
    public void encuentro_region_de_coquimbo(String region) {
        List<String> list = google.dameTodoLosResultados();
        boolean elTextoEsta = list.contains(region);

        if (elTextoEsta) {
            System.out.println("El texto de la Lista esta correcto: PASSED");
        } else {
            throw new Error("El texto no se encuentra en la Lista: FAILED");

        }

    }

}