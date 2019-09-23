Feature: Publish folder and its scenarios to a Git repository


  @git-integration
  Scenario: Publish feature to Git
    Given a project has been connected to a Git repository
    And the project has a folder "Hear Shouts"
    When I publish it to a Git repository at "features/hear_shouts.feature"
    Then a feature file should be created in the Git repository at this path

  Scenario: Replace a feature file in Git
    Given a project has been connected to a Git repository
    And the project has a folder "Hear Shouts"
    And the Git repository contains a feature "Hear Shouts" at "features/hear_shouts.feature"
    When I publish it to a Git repository at "features/hear_shouts.feature"
    Then it replace the content of "Hear Shouts" feature in the Git repository

  Scenario: Ignore current folder subfolders
    Given a project has been connected to a Git repository
    And the project has a folder "Shout" with "Hear Shouts" subfolder
    When I publish "Shout" feature to a Git repository at "features/shout.feature"
    Then "Hear Shouts" feature should not be published to the Git repository

  Scenario: Commit has a default message and the authors is the authenticated one
    Given a project has been connected to a Git repository
    And the project has a folder "Hear Shouts"
    When I publish it to a Git repository at "features/hear_shouts.feature"
    Then the produced Git commit should mention me
