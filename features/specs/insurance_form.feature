     #language
     
     @e2e
     @regression
     Feature: Fill Vehicle Insurance Form
     As an insurance application user
     I want to fill out an insurance form
     So that I can secure the vehicle insurance

     
     @automobile
     Scenario: Fill out automobile form successfully
     Given I access the form page
     When I fill out all the required fields for the automobile
     Then the website sends a confirmation email


     @smoke_test
     @truck
     Scenario: Fill out truck form successfully
     Given I access the form page
     When I fill out all the required fields for the truck
     Then the website sends a confirmation email


     @smoke_test
     @motorcycle
     Scenario: Fill out motorcycle form successfully
     Given I access the form page
     When I fill out all the required fields for the motorcycle
     Then the website sends a confirmation email


     @camper
     Scenario: Fill out camper form successfully
     Given I access the form page
     When I fill out all the required fields for the camper
     Then the website sends a confirmation email
