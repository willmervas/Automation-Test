package pages;

public class SmlPage extends BasePage {

    private String searchTextField = "//input[@id='standard-password-input']";
    private String searchTextField1 = "//*[@id=\"standard-adornment-password\"]";
    private String searchButton = "//*[@id=\"root\"]/div/div/div[2]/div/div[5]/button";
    
    public SmlPage (){
        super(driver);

    }
    public void navigatedToGoogle(){
        navigatedTo("http://20.119.249.21"); 
    }

    public void enterSearchCriteria(String criteria){
        write(searchTextField, criteria);

    }    
    
    public void enterSearchCriteria1(String criteria){
        write(searchTextField1, criteria);
        
    }

    public void clickSearchGoogle(){
        clickElement(searchButton);

    }


}
