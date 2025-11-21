*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/resources.robot

*** Test Cases ***
Verify Home Page Load
    Page Load

Verify User Registration
    Sign Up

Verify User Login
    Log In

Verify User Logout
    Log In And Out

Verify Add To Cart
    Add To Cart

Verify Contact Form Submission
    Contact Form Submission

