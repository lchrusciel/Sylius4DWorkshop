@managing_suppliers
Feature: Browsing suppliers
    In order to have a overview of all defined suppliers
    As an Administrator
    I want to be able to browse list of them

    Background:
        Given the store operates on a single channel in "United States"
        And the store has a supplier "Saruman The White" with a code "uruk_hai_supplier" and email "saruman@isengard.com"
        And the store has a supplier "Sauron" with a code "orcs_supplier" and email "sauron@morgoth.com"
        And I am logged in as an administrator

    @todo
    Scenario: Browsing defined suppliers
        When I browse suppliers
        Then I should see 2 suppliers in the list
        And the supplier "Saruman The White" should be in the registry
        And the supplier "Sauron" should be in the registry
