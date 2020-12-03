Feature: This is my first Feature
This is feature created to test

  Background: This is setup block
    Given This is pre-condition step_1
    And This is pre-condition step_2

  @tagname
  Scenario:FirstKarateTestCase
    Given This is pre-condition step_1
    And This is pre-condition step_2

    When This is action step_1
    And This is action step_2

    Then This is validation step_1
    And This is validation step_2