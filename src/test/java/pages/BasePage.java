package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;

public class BasePage {

    protected static WebDriver driver;
    private static WebDriverWait wait;
    private static Actions action;
    String zoomLevelReduced = "75%";

    public void setUp() {
        System.setProperty("webdriver.chrome.driver", "C:\\Users\\Willmer Vasquez\\Documents\\chromedriver-win64");
        ChromeOptions options = new ChromeOptions();
        options.addArguments("start-maximized");
        options.addArguments("disable-infobars");
        driver = new ChromeDriver(options);

    }

    public void zoomIn() throws InterruptedException {
        // Obtener el objeto JavascriptExecutor
        JavascriptExecutor js = (JavascriptExecutor) driver;
        // Ejecutar el script de JavaScript para ajustar el zoom al 80%
        js.executeScript("document.body.style.zoom='" + zoomLevelReduced + "'");
        System.out.println("Zoom level is set to " + zoomLevelReduced);

    }

    static {
        ChromeOptions chromeOptions = new ChromeOptions();
        driver = new ChromeDriver(chromeOptions);
        wait = new WebDriverWait(driver, Duration.ofSeconds(30));
        driver.manage().window().maximize();

    }

    // webdriver
    public BasePage(WebDriver driver) {
        BasePage.driver = driver;
        wait = new WebDriverWait(driver, Duration.ofSeconds(30));
    }

    // navegar a URL
    public static void navigatedTo(String url) {
        driver.get(url);

    }
    // cerrar browser

    public static void closeBrowser() {
        driver.quit();
    }

    // Esperar a encontrar el Xpath
    private WebElement Find(String locator) {

        return wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(locator)));

    }

    // clickear
    public void clickElement(String locator) {
        Find(locator).click();

    }

    // limpiar Texto
    public void clearTextField(String locator) {
        Find(locator).click();

    }

    // escribir en una caja de texto
    public void write(String locator, String textToWrite) {
        Find(locator).clear();
        Find(locator).sendKeys(textToWrite);

    }

    // seleccionar un dropdown por valor
    public void selectFromDropdownByValue(String locator, String valueToSelect) {
        Select dropdown = new Select(Find(locator));

        dropdown.selectByValue(valueToSelect);

    }

    // seleccionar un dropdown por Index
    public void selectFromDropdownByIndex(String locator, int valueToSelect) {
        Select dropdown = new Select(Find(locator));

        dropdown.selectByIndex(valueToSelect);

    }

    // seleccionar un dropdown por Texto
    public void selectFromDropdownByText(String locator, String valueToSelect) {
        Select dropdown = new Select(Find(locator));

        dropdown.selectByVisibleText(valueToSelect);

    }

    // hacer HoverOver
    public void hoverOverElement(String locator) {
        action.moveToElement(Find(locator));

    }

    // hacer double click
    public void doubleClick(String locator) {
        action.doubleClick(Find(locator));
    }

    // haver click derecho
    public void rigthClick(String locator) {
        action.contextClick(Find(locator));

    }

    // cerrar las alertas
    public void switchToiFrame(String iFrameID) {
        driver.switchTo().frame(10);

    }

    // cerrar los iframe
    public void switchToiFrame(int iFrameIndex) {
        driver.switchTo().frame(iFrameIndex);

    }

    // Leer un texto y que este escrito correctamente
    public String textFromElement(String locator) {
        return Find(locator).getText();

    }

    // boolean
    public Boolean elementEnable(String locator) {
        return Find(locator).isEnabled();

    }

    // boolean encontrar un elemento
    public Boolean elementIsDisplayed(String locator) {
        return Find(locator).isDisplayed();

    }

    // elemento de una lista
    public List<WebElement> todosLosElementos(String locator) {
        return driver.findElements(By.xpath(locator));

    }

    // cerrar alertas que se presenten en la pagina
    public void dissmidAlert() {
        try {
            driver.switchTo().alert().dismiss();
        } catch (NoAlertPresentException e) {
            e.printStackTrace();
        }

    }

}
