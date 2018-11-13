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
    And the page elemnets tabs are displayed
      | All Televisions    |
      | Best Buys (59)     |
      | Don't Buys (22)    |
      | Advice Guides (20) |
    And i click on "All Televisions" on the element tabs
    And i click on "Best Buys (59)" on the element tabs
    And i click on "Don't Buys (22)" on the element tabs
    And i click on "Advice Guides (20)" on the element tabs

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

Scenario: navigate to reviews
  Given I visit "/reviews"
  Then the review page is displayed
  And the "url" is displayed

