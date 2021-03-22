Feature: SpotifyRegisterTest

  Background:
    Given I set UserEmail value in Data Scenario

  @test
  Scenario: Get Sites
    Given I am in App main site
    Then I load the DOM Information Spotify_registro.json
    And I Save text of Title as Scenario Context
    And I set Email with key value Title.text

  @test
  Scenario: I click an object
    Given I navigate to https://www.spotify.com/py/signup/
    Then I load the DOM Information Spotify_registro.json
    And I click on element Email
    And I set Email with text prueba@prueba.com
  
  @test
  Scenario: Handle Dropdown
    Given I am in App main site
    Then I load the DOM Information Spotify_registro.json
    And I wait for element Birth Month to be present
    And I set text Febrero in dropdown Birth Month
    And I set index 03 in dropdown Birth Month

  @test
  Scenario: I check if Email is registered
    Given I am in App main site
    Then I load the DOM Information Spotify_registro.json
    And I click on element Email
    And I set Email with text prueba@prueba.com
    And I click on element Confirmation Email
    Then I check if Email Error error message is displayed=true

  @frames
  Scenario: Handle various functions
    Given I navigate to https://chercher.tech/practice/frames-example-selenium-webdriver
    Then I load the DOM Information Frames.json
    And I switch to Frame: Frame2
    And I set text Avatar in dropdown Frame2 Select
    And I switch to parent frame
    And I switch to Frame: Frame1
    And I set Frame1 input with text Esto es una prueba
    Then I switch to Frame: Frame3