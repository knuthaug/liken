Feature: Add action 
  In order to facilitate larger action sets
  Users should be able to 
  store actions in persistent storage
  
  Scenario: Store new action 
    Given an empty list of actions
    When I add an new action
    Then the size of the list should be 1

  Scenario: Retrieve action from stored list 
    Given a previously stored list
    When I list the actions
    Then the action retrieved is the same as stored

