@managing_suppliers
Feature: Editing supplier
    In order to change information about one of my suppliers
    As an Administrator
    I want to be able to edit supplier

    Background:
        Given the store has a supplier "Saruman The White" with a code "uruk_hai_supplier" and email "saruman@isengard.com"
        And I am logged in as an administrator

    @todo
    Scenario: Seeing disabled code field when editing supplier
        When I modify a supplier "Saruman The White"
        Then the code field should be disabled

    @todo
    Scenario: Renaming the supplier
        When I modify a supplier "Saruman The White"
        And I rename it to "Saruman of Many Colors"
        And I save my changes
        Then I should be notified that it has been successfully edited
        And this supplier name should be "Saruman of Many Colors"

    @todo
    Scenario: Changing the supplier's email
        When I modify a supplier "Saruman The White"
        And I change its email to "saruman@middleearth.com"
        And I save my changes
        Then I should be notified that it has been successfully edited
        And this supplier email should be "saruman@middleearth.com"
