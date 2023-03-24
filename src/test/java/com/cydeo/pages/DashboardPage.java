package com.cydeo.pages;


import com.cydeo.utilities.Driver;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class DashboardPage {

    public DashboardPage(){
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "(//h1)[2]")
    public WebElement quickLaunchpad;

    @FindBy(xpath = "//h1[@class='oro-subtitle']")
    public WebElement dashboard;

    @FindBy(xpath = "//a[@class='dropdown-toggle']")
    public WebElement username;

    @FindBy(xpath = "(//a[@class='dropdown-toggle'])[1]")
    public WebElement profileArrow;

    @FindBy(xpath = "//ul[@class='dropdown-menu']//li/a[.='Logout']")
    public WebElement logoutBtn;





}
