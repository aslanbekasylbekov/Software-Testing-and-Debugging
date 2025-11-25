*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/resources.robot
Suite Setup    Open Browser To DemoBlaze
Suite Teardown  Close Test Browsers

*** Test Cases ***
Verify Home Page Load
    Page Load

Verify User Registration
    Sign Up

Verify User Login
    Log In

Verify Add To Cart
    Add To Cart

Verify Contact Form Submission
    Contact Form Submission