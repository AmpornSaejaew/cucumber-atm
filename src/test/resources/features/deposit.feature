Feature: deposit
  As a customer
  I want to deposit money to my account

  Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

  Scenario: Deposit money to my own account
    When I deposit 100.00 to my own account
    Then my account balance should be 300.00

