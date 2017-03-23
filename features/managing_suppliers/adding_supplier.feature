@managing_suppliers
Feature: Adding a new supplier
    In order to be aware of origin of my products
    As an Administrator
    I want to add a new supplier to the registry

    Background:
        Given I am logged in as an administrator

    @ui
    Scenario: Adding a new supplier
        When I create a new supplier
        And I specify its code as "uruk_hai_supplier"
        And I name it "Saruman The White"
        And I specify its email as "saruman@isengard.com"
        And I add it
        Then I should be notified that it has been successfully created
        And the supplier "Saruman The White" should appear in the registry
