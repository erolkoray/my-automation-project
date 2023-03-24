Feature: Login functionality for Navfort fleet management
  user story: As a user, I should be able to log in.

  Acceptance Criteria:
  1- Login with valid credentials. Only authenticated users can access to application
  a) User type "Driver" should land on the "Quick Launchpad" page after login
  b) User type "Sales Manager" should land on the "Dashboard" page after login
  c) User type "Store Manager" should land on the "Dashboard" page after login

  2- Warning Messages, While logging in:
  a) "Invalid username or password." message should be displayed for invalid credentials
  b) "Please fill out this field." message should be displayed from any empty field (if both of them are empty, just the username field should throw the warning message)     

  3- The user can see his own "username" (what he types in the username field) in the profile menu, after login

  @login @driver
  Scenario: Login as a driver
    When The user enter driver username
    And The user enter driver password
    And The user click on the LOG IN button
    Then The user is on the Quick Launchpad page

  @login @salesmanager
  Scenario: Login as a sales manager
    When The user enter sales manager username
    And The user enter sales manager password
    And The user click on the LOG IN button
    Then The user is on the Dashboard page

  @login @storemanager
  Scenario: Login as a store manager
    When The user enter store manager username
    And The user enter store manager password
    And The user click on the LOG IN button
    Then The user is on the Dashboard page

  @login @user
  Scenario: Login as user
    When The user enter invalid username
    And The user enter invalid password
    And The user click on the LOG IN button
    Then The user is should see Invalid username or password.

  @login @user
  Scenario: Login as user
    When The user enter invalid username
    And The user enter valid password
    And The user click on the LOG IN button
    Then The user is should see Invalid username or password.

  @login @user
  Scenario: Login as user
    When The user enter valid username
    And The user enter invalid password
    And The user click on the LOG IN button
    Then The user should see Invalid username or password

  @login @user
  Scenario: Login as user
    When The user do not enter username
    And The user do not enter password
    And The user click on the LOG IN button
    Then The user should see pop up coming from username field Please fill out this field.

  @login @user
  Scenario: Login as user
    When The user enter valid username
    And The user do not enter password
    And The user click on the LOG IN button
    Then The user should see pop up coming from password field Please fill out this field.

  @login @user
  Scenario: Login as user
    When The user do not enter username
    And The user enter valid password
    And The user click on the LOG IN button
    Then The user should see pop up coming from username field Please fill out this field.

  @login @user
  Scenario: Login as user
    When The user enter valid username
    And The user enter valid password
    And The user click on the LOG IN button
    Then  the username on the login page should match the username top right corner on the home page

  @logout @driver
  Scenario: Logout as driver
    Given Driver on the home page
    When User go to profile menu and click the down arrow icon
    And User sees Logout button and click it
    Then User should see login page

  @logout @salesmanager
  Scenario: Logout as sales manager
    Given Sales manager on the home page
    When User go to profile menu and click the down arrow icon
    And User sees Logout button and click it
    Then User should see login page

  @logout @storemanager
  Scenario: Logout as store manager
    Given Store manager on the home page
    When User go to profile menu and click the down arrow icon
    And User sees Logout button and click it
    Then User should see login page

  @logout @driver
  Scenario: Logout as driver and click step back button
    Given Driver on the home page
    When User go to profile menu and click the down arrow icon
    And User sees Logout button and click it
    And User click the step back arrow
    Then User should not go back home page again

  @logout @salesmanager
  Scenario: Logout as sales manager and click step back button
    Given Sales manager on the home page
    When User go to profile menu and click the down arrow icon
    And User sees Logout button and click it
    And User click the step back arrow
    Then User should not go back home page again

  @logout @storemanager
  Scenario: Logout as store manager and click step back button
    Given Store manager on the home page
    When User go to profile menu and click the down arrow icon
    And User sees Logout button and click it
    And User click the step back arrow
    Then User should not go back home page again