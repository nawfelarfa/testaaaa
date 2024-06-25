*** Settings ***
Library    Selenium2Library
*** Test Cases ***
Verify that if you find Wikivoyage on the page, then click on it and validate (Go to If)
    [documentation]  This test case verifies if we find Wikivoyage on the page, then we click on it.
    [tags]  Regression
    Open Browser  https://www.wikipedia.org/  Chrome
    ${count}=  Get Element Count  css:[data-jsl10n="wikivoyage.name"]
    Run Keyword If  ${count} > 0  Click Wikivoyage  # If the element is present we will get the value of count as 1
    ...  ELSE  Click Wiktionary
    Title Should Be  Wikivoyage  timeout=5
    Close Browser
    