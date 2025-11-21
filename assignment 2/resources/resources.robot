*** Settings ***
Library    SeleniumLibrary
Variables  ./locators.py
Variables  ./testData.py

*** Keywords ***
Open Browser To DemoBlaze
    Open Browser    ${base_url}    Chrome
    Maximize Browser Window
    Sleep    1s

Close Test Browsers
    Close All Browsers

Page Load
    Open Browser To DemoBlaze
    Title Should Be    STORE
    Close All Browsers

Sign Up
    Open Browser To DemoBlaze
    Wait Until Element Is Visible    ${sign_up_button}    timeout=10
    Click Element    ${sign_up_button}
    Wait Until Element Is Visible    ${sign_up_username_field}    timeout=10
    Input Text    ${sign_up_username_field}    ${user_login_value}
    Input Text    ${sign_up_password_field}    ${user_password_value}
    Click Element    ${sign_up_form_button}
    Sleep    2s
    Close All Browsers

Log In
    Open Browser To DemoBlaze
    Click Element    ${log_in_button}
    Wait Until Element Is Visible    ${log_in_username_field}
    Input Text    ${log_in_username_field}    ${user_login_value}
    Input Text    ${log_in_password_field}    ${user_password_value}
    Click Element    ${log_in_form_button}
    Wait Until Element Is Visible    ${log_out_button}    timeout=10
    Sleep    2s
    Close All Browsers

Log Out
    Wait Until Element Is Visible    ${log_out_button}    timeout=10
    Click Element    ${log_out_button}
    Wait Until Element Is Visible    ${log_in_button}    timeout=10
    Sleep    1s

Log In And Out
    Open Browser To DemoBlaze
    # Логин
    Click Element    ${log_in_button}
    Wait Until Element Is Visible    ${log_in_username_field}
    Input Text    ${log_in_username_field}    ${user_login_value}
    Input Text    ${log_in_password_field}    ${user_password_value}
    Click Element    ${log_in_form_button}
    # Проверка что логин успешен (появилась кнопка выхода)
    Wait Until Element Is Visible    ${log_out_button}    timeout=10
    # Logout
    Click Element    ${log_out_button}
    # Проверка что выход успешен (появилась кнопка входа)
    Wait Until Element Is Visible    ${log_in_button}    timeout=10
    Close All Browsers

Add To Cart
    Open Browser To DemoBlaze
    Click Element    ${open_product_page_button}
    Wait Until Element Is Visible    ${add_to_cart_button}
    Click Element    ${add_to_cart_button}
    Handle Alert    ACCEPT
    Sleep    2s
    Close All Browsers

Contact Form Submission
    Open Browser To DemoBlaze
    Click Element    ${contact_link}
    Wait Until Element Is Visible    ${contact_email_field}
    Input Text    ${contact_email_field}    ${contact_email_value}
    Input Text    ${contact_name_field}     ${contact_name_value}
    Input Text    ${contact_message_field}  ${contact_message_value}
    Click Element    ${contact_send_button}
    Handle Alert    ACCEPT
    Close All Browsers