Feature: Flipkart Search

    Scenario: Verify search results
        Given User navigates to Flipkart home page
        When User search for iphones
        Then Verify iphones are displayed in search results