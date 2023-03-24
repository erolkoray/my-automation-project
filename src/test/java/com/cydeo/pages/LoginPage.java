package com.cydeo.pages;

import com.cydeo.utilities.ConfigurationReader;
import com.cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {

    public LoginPage(){
        PageFactory.initElements(Driver.getDriver(),this);
    }


    @FindBy(id = "prependedInput")
    public WebElement inputUsername;


    @FindBy(id="prependedInput2")
    public WebElement inputPassword;


    @FindBy(id = "_submit")
    public WebElement loginBtn;


    @FindBy(xpath = "//div[.='Invalid user name or password.']")
    public WebElement invalidM;


    public void login(String username,String password){
        Driver.getDriver().get(ConfigurationReader.getProperty("nav.url"));
        this.inputUsername.sendKeys(username);
        this.inputPassword.sendKeys(password);
        this.loginBtn.click();
    }

    @FindBy(xpath = "//div[@class='title-box']/h2")
    public WebElement loginPageHeader;



}
