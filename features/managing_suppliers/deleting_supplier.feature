@managing_suppliers
Feature: Deleting a supplier
    In order to remove supplier with expired contract
    As an Administrator
    I want to be able to delete a supplier

    Background:
        Given the store has a supplier "Sauron" with a code "orcs_supplier"
        And I am logged in as an administrator

    @todo
    Scenario: Deleted supplier should disappear from the registry
        When I delete supplier "Sauron"
        Then I should be notified that it has been successfully deleted
        And this supplier should no longer exist in the registry
