*** Settings ***
Documentation       Open browser and Google a random word from the dictionary.
Library    OperatingSystem
Library    RPA.Browser.Selenium    auto_close=${FALSE} 

*** Tasks ***
Perform a random workstation task    
    Google a random combination of words
    #Download a file 

*** Keywords *** 
Google a random combination of words
    ${words}    Run    shuf -n3 /usr/share/dict/american-english | tr '\n' ' '
    Open Available Browser    https://www.google.com
    Input Text When Element Is Visible    css:.gLFyf    ${words}
    Press Keys    css:.gLFyf    \ue00c  
    Click Button When Visible    //*[@id="gbqfbb"]
