@managing_suppliers
Feature: Supplier validation
    In order to avoid making mistakes when managing a supplier
    As an Administrator
    I want to be prevented from specifying a wrong data

    Background:
        Given I am logged in as an administrator

    @todo
    Scenario: Trying to add a new supplier without specifying its code
        When I create a new supplier
        And I name it "Sauron"
        But I do not specify its code
        And I try to add it
        Then I should be notified that code is required
        And supplier with name "Sauron" should not be added

    @todo
    Scenario: Trying to add a new supplier without specifying its name
        When I create a new supplier
        And I specify its code as "orcs_supplier"
        But I do not name it
        And I try to add it
        Then I should be notified that name is required
        And supplier with code "orcs_supplier" should not be added

    @todo
    Scenario: Trying to add a new supplier without specifying its email
        When I create a new supplier
        And I specify its code as "orcs_supplier"
        And I name it "Sauron"
        But I do not specify its email
        And I try to add it
        Then I should be notified that email is required
        And supplier with code "orcs_supplier" should not be added

    @todo
    Scenario: Trying to remove name from existing supplier
        Given the store has a supplier "Sauron" with a code "orcs_supplier"
        When I modify this supplier
        And I remove its name
        And I try to save my changes
        Then I should be notified that name is required
        And this supplier should still be named "Sauron"

    @todo
    Scenario: Trying to remove email from existing supplier
        Given the store has a supplier "Sauron" with a code "orcs_supplier" and email "sauron@morgoth.com"
        When I modify this supplier
        And I remove its email
        And I try to save my changes
        Then I should be notified that email is required
        And this supplier should still have email "sauron@morgoth.com"

    @todo
    Scenario: Trying to add supplier with taken code
        Given the store has a supplier "Sauron" with a code "orcs_supplier"
        When I create a new supplier
        And I name it "Saruman The White"
        And I specify its code as "orcs_supplier"
        And I try to add it
        Then I should be notified that supplier with this code already exists
        And there should still be only one supplier with code "orcs_supplier"
