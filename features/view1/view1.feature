Feature: landing page

  Scenario: navigating to tv landing page
    Given I visit "/reviews/televisions"
    Then Which? reports components are displayed
      | Technology       |
      | Home & garden    |
      | Money            |
      | Baby & child     |
      | Cars & travel    |
      | Campaigns        |
      | Services         |
      | More from Which? |

    And the TV & home entertainment link is present


  Scenario: navigate to tv & home entertainment page
    Given I visit "/reviews/televisions"
    And Which? reports components are displayed
      | Technology       |
      | Home & garden    |
      | Money            |
      | Baby & child     |
      | Cars & travel    |
      | Campaigns        |
      | Services         |
      | More from Which? |
    When the user click on the tv&home entertainment link
    Then the user navigates to TV & home entertainment

