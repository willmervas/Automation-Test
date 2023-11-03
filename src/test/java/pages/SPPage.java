package pages;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;

public class SPPage extends BasePage {

    private String searchButton1 = "//div[@id='mui-component-select-regiones']";
    private String logoTranque = "//img[@src='/static/media/banner.9e34c559c9ea8f3f4d36.png']";
    private String firstResults = "//p[@class='MuiTypography-root MuiTypography-body1 css-e66tb5']";
    private String searchResults = "//*[@role='option']";

    public SPPage() {
        super(driver);

    }

    // entrar a la Url del SMC
    public void navigatedToGoogle() {
        navigatedTo("http://sitiopublico.trq-alpha.cl/#/");
    }

    // Validar Textos Correctamente
    public String firstResults() throws InterruptedException {
        try {
            Thread.sleep(600);
            return textFromElement(firstResults);
        } catch (NoSuchElementException e) {
            System.out.println("El Web Element TextFromElement no fue encontrado.");
            e.printStackTrace();
        }
        return firstResults;

    }

    // buscar palabra buscar
    public void clickSearchGoogle1() throws InterruptedException {
        try {
            Thread.sleep(600);
            clickElement(searchButton1);
        } catch (NoSuchElementException e) {
            System.out.println("El Web Element SearchButton no fue encontrado.");
            e.printStackTrace();
        }
    }

    public List<String> dameTodoLosResultados() {
        List<WebElement> list = todosLosElementos(searchResults);
        List<String> stringFromList = new ArrayList<String>();

        for (WebElement e : list) {
            stringFromList.add(e.getText());
        }
        return stringFromList;

    }

    // Muestra el logo de tranque?
    public boolean imageStatus() {
        return elementIsDisplayed(logoTranque);

    }

}
